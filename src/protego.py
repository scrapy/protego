import re
from datetime import time
from collections import namedtuple
import six
from six.moves.urllib.parse import urlparse, urlunparse, ParseResult, quote, unquote
import logging

logger = logging.getLogger(__name__)

Rule = namedtuple('Rule', ['field', 'value'])
RequestRate = namedtuple(
    'RequestRate', ['requests', 'seconds', 'start_time', 'end_time'])

DISALLOW_DIRECTIVE = {'disallow', 'dissallow', 'dissalow', 'disalow', 'diasllow', 'disallaw'}
ALLOW_DIRECTIVE = {'allow'}
USER_AGENT_DIRECTIVE = {'user-agent', 'useragent', 'user agent'}
SITEMAP_DIRECTIVE = {'sitemap', 'sitemaps', 'site-map'}
CRAWL_DELAY_DIRECTIVE = {'crawl-delay', 'crawl delay'}
REQUEST_RATE_DIRECTIVE = {'request-rate', 'request rate'}
HOST_DIRECTIVE = {'host'}

WILDCARDS = {'*', '$'}

__all__ = ['RequestRate', 'Protego']


class _URLPattern(object):
    """Internal class which represents a URL pattern."""

    def __init__(self, pattern):
        self._pattern = pattern
        self.priority = len(pattern)
        self._contains_asterisk = '*' in self._pattern
        self._contains_dollar = self._pattern.endswith('$')

        if self._contains_asterisk:
            self._pattern_before_asterisk = self._pattern[:self._pattern.find('*')]
        elif self._contains_dollar:
            self._pattern_before_dollar = self._pattern[:-1]

        self._pattern_compiled = False

    def match(self, url):
        """Retun True if pattern matches the given URL, otherwise return False."""
        # check if pattern is already compiled
        if self._pattern_compiled:
            return self._pattern.match(url)

        if not self._contains_asterisk:
            if not self._contains_dollar:
                # answer directly for patterns without wildcards
                return url.startswith(self._pattern)

            # pattern only contains $ wildcard.
            return url == self._pattern_before_dollar

        if not url.startswith(self._pattern_before_asterisk):
            return False

        self._pattern = self._prepare_pattern_for_regex(self._pattern)
        self._pattern = re.compile(self._pattern)
        self._pattern_compiled = True
        return self._pattern.match(url)

    def _prepare_pattern_for_regex(self, pattern):
        """Return equivalent regex pattern for the given URL pattern."""
        pattern = re.sub(r'\*+', '*', pattern)
        s = re.split(r'([$*])', pattern)
        for index, substr in enumerate(s):
            if substr not in WILDCARDS:
                s[index] = re.escape(substr)
            else:
                s[index] = s[index].replace('*', '.*')
        pattern = ''.join(s)
        return pattern


class _RuleSet(object):
    """Internal class which stores rules for a user agent."""

    def __init__(self, parser_instance):
        self.user_agent = None
        self._rules = []
        self._crawl_delay = None
        self._req_rate = None
        self._parser_instance = parser_instance

    def applies_to(self, robotname):
        """Return matching score."""
        robotname = robotname.strip().lower()
        if self.user_agent == '*':
            return 1
        if self.user_agent in robotname:
            return len(self.user_agent)
        return 0

    def _quote_path(self, path, safe='/'):
        """Return percent encoded path."""
        # Corner case for query only (e.g. '/abc?') and param only (e.g. '/abc;') URLs.
        # Save the last character otherwise, urlparse will kill it.
        last_char = ''
        if path[-1] == '?' or path[-1] == ';':
            last_char = path[-1]
            path = path[:-1]

        parts = urlparse(path)

        # According to 1997RFC, escaped '/' should not be converted back.
        path = re.sub("%2[fF]", "\n", parts.path)

        # quote & unquote do not work with unicode strings in Python 2.7
        if six.PY2:
            path = quote(unquote(path.encode('utf-8')), safe=safe)
        else:
            path = quote(unquote(path), safe=safe)

        path.replace("\n", "%2F")
        parts = ParseResult('', '', path + last_char, parts.params, parts.query, parts.fragment)
        path = urlunparse(parts)
        return path

    def allow(self, pattern):
        pattern = self._quote_path(pattern, safe='/*$')
        if not pattern:
            return
        self._rules.append(Rule(field='allow', value=_URLPattern(pattern)))

        # If index.html is allowed, we interpret this as / being allowed too.
        if pattern.endswith('/index.html'):
            self.allow(pattern[:-10] + '$')

    def disallow(self, pattern):
        pattern = self._quote_path(pattern, safe='/*$')
        if not pattern:
            return
        self._rules.append(Rule(field='disallow', value=_URLPattern(pattern)))

    def finalize_rules(self):
        self._rules.sort(key=lambda r: (r.value.priority, r.field == 'allow'), reverse=True)

    def can_fetch(self, url):
        """Return if the url can be fetched."""
        url = self._quote_path(url)
        allowed = True
        for rule in self._rules:
            if rule.value.match(url):
                if rule.field == 'disallow':
                    allowed = False
                break
        return allowed

    @property
    def crawl_delay(self):
        """Get & set crawl delay for the rule set."""
        return self._crawl_delay

    @crawl_delay.setter
    def crawl_delay(self, delay):
        try:
            delay = float(delay)
        except ValueError:
            # Value is malformed, do nothing.
            logger.debug("Malformed rule at line {} : cannot set crawl delay to '{}'. "
                         "Ignoring this rule.".format(self._parser_instance._total_line_seen, delay))
            return

        self._crawl_delay = delay

    @property
    def request_rate(self):
        """Get & set request rate for the rule set."""
        return self._req_rate

    @request_rate.setter
    def request_rate(self, value):
        try:
            parts = value.split()
            if len(parts) == 2:
                rate, time_period = parts
            else:
                rate, time_period = parts[0], ''

            requests, seconds = rate.split('/')
            requests = int(requests)
            time_unit = seconds[-1].lower()
            seconds = int(seconds[:-1])
            if time_unit == 'm':
                seconds *= 60
            elif time_unit == 'h':
                seconds *= 3600
            elif time_unit == 'd':
                seconds *= 86400

            start_time = None
            end_time = None
            if time_period:
                start_time, end_time = time_period.split('-')
                start_time = time(int(start_time[:2]), int(start_time[-2:]))
                end_time = time(int(end_time[:2]), int(end_time[-2:]))
        except Exception:
            # Value is malformed, do nothing.
            logger.debug("Malformed rule at line {} : cannot set request rate using '{}'. "
                         "Ignoring this rule.".format(self._parser_instance._total_line_seen, value))
            return

        self._req_rate = RequestRate(requests, seconds, start_time, end_time)


class Protego(object):

    def __init__(self):
        # A dict mapping user agents (specified in robots.txt) to rule sets.
        self._user_agents = {}

        # Preferred host specified in the robots.txt
        self._host = None

        # A list of sitemaps specified in the robots.txt
        self._sitemap_list = []

        # A memoization table mapping user agents (used in queries) to matched rule sets.
        self._matched_rule_set = {}

        self._total_line_seen = 0
        self._invalid_directive_seen = 0
        self._total_directive_seen = 0

    @classmethod
    def parse(cls, content):
        o = cls()
        o._parse_robotstxt(content)
        return o

    def _parse_robotstxt(self, content):
        lines = content.splitlines()

        # A list containing all the user agents of the current record group.
        current_user_agents = []

        # Last encountered rule irrespective of whether it was valid or not.
        previous_rule_field = None

        for line in lines:
            self._total_line_seen += 1

            # Remove the comment portion of the line
            hash_pos = line.find('#')
            if hash_pos != -1:
                line = line[0: hash_pos].strip()

            # Whitespace at the beginning and at the end of the line is ignored.
            line = line.strip()
            if not line:
                continue

            # Format for a valid robots.txt rule is "<field>:<value>"
            if line.find(':') != -1:
                field, value = line.split(':', 1)
            else:
                # We will be generous here and give it a second chance.
                parts = line.rsplit(' ', 1)
                if not len(parts) == 2:
                    continue
                field, value = parts

            field = field.strip().lower()
            value = value.strip()

            # Ignore rules with no value part (e.g. "Disallow: ", "Allow: ").
            if not value:
                previous_rule_field = field
                continue

            # Ignore rules without a corresponding user agent.
            if not current_user_agents and field not in USER_AGENT_DIRECTIVE:
                logger.debug("Rule at line {} without any user agent to enforce it on.".format(self._total_line_seen))
                continue

            self._total_directive_seen += 1

            if field in USER_AGENT_DIRECTIVE:
                if previous_rule_field and previous_rule_field not in USER_AGENT_DIRECTIVE:
                    current_user_agents = []

                # Wildcards are not supported in the user agent values.
                # We will be generous here and remove all the wildcards.
                user_agent = value.strip().lower()
                if user_agent != '*' and '*' in user_agent:
                    user_agent = user_agent.replace('*', '')

                # See if this user agent is encountered before, if so merge these rules into it.
                rule_set = self._user_agents.get(user_agent, None)
                if rule_set and rule_set not in current_user_agents:
                    current_user_agents.append(rule_set)

                if not rule_set:
                    rule_set = _RuleSet(self)
                    rule_set.user_agent = user_agent
                    self._user_agents[user_agent] = rule_set
                    current_user_agents.append(rule_set)

            elif field in ALLOW_DIRECTIVE:
                for user_agent in current_user_agents:
                    user_agent.allow(value)

            elif field in DISALLOW_DIRECTIVE:
                for user_agent in current_user_agents:
                    user_agent.disallow(value)

            elif field in SITEMAP_DIRECTIVE:
                self._sitemap_list.append(value)

            elif field in CRAWL_DELAY_DIRECTIVE:
                for user_agent in current_user_agents:
                    user_agent.crawl_delay = value

            elif field in REQUEST_RATE_DIRECTIVE:
                for user_agent in current_user_agents:
                    user_agent.request_rate = value

            elif field in HOST_DIRECTIVE:
                self._host = value

            else:
                self._invalid_directive_seen += 1

            previous_rule_field = field

        for user_agent in self._user_agents.values():
            user_agent.finalize_rules()

    def _get_matching_rule_set(self, user_agent):
        """Return the rule set with highest matching score."""
        if not self._user_agents:
            return None

        if user_agent in self._matched_rule_set:
            return self._matched_rule_set[user_agent]
        score_rule_set_pairs = ((rs.applies_to(user_agent), rs) for rs in self._user_agents.values())
        match_score, matched_rule_set = max(score_rule_set_pairs, key=lambda p: p[0])

        if not match_score:
            self._matched_rule_set[user_agent] = None
            return None
        self._matched_rule_set[user_agent] = matched_rule_set
        return matched_rule_set

    def can_fetch(self, url, user_agent):
        """Return True if the user agent can fetch the URL, otherwise return False."""
        matched_rule_set = self._get_matching_rule_set(user_agent)
        if not matched_rule_set:
            return True
        return matched_rule_set.can_fetch(url)

    def crawl_delay(self, user_agent):
        """Return the crawl delay specified for the user agent as a float.
        If nothing is specified, return None.
        """
        matched_rule_set = self._get_matching_rule_set(user_agent)
        if not matched_rule_set:
            return None
        return matched_rule_set.crawl_delay

    def request_rate(self, user_agent):
        """Return the request rate specified for the user agent as a named tuple
        RequestRate(requests, seconds, start_time, end_time). If nothing is
        specified, return None.
        """
        matched_rule_set = self._get_matching_rule_set(user_agent)
        if not matched_rule_set:
            return None
        return matched_rule_set.request_rate

    @property
    def sitemaps(self):
        """Get an iterator containing links to sitemaps specified."""
        return iter(self._sitemap_list)

    @property
    def preferred_host(self):
        """Get the preferred host."""
        return self._host

    @property
    def _valid_directive_seen(self):
        return self._total_directive_seen - self._invalid_directive_seen
