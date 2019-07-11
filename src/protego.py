import re
from datetime import time
from collections import namedtuple
from six.moves.urllib.parse import urlparse, urlunparse, ParseResult, quote, unquote

Rule = namedtuple('Rule', ['field', 'value'])
RequestRate = namedtuple(
    'RequestRate', ['requests', 'seconds', 'start_time', 'end_time'])

DISALLOW_DIRECTIVE = {'disallow', 'dissallow', 'dissalow', 'disalow', 'diasllow', 'disallaw'}
ALLOW_DIRECTIVE = {'allow'}
USER_AGENT_DIRECTIVE = {'user-agent', 'useragent', 'user agent'}
SITEMAP_DIRECTIVE = {'sitemap', 'sitemaps', 'site-map'}
CRAWL_DELAY_DIRECTIVE = {'crawl-delay', 'crawl delay'}
REQUEST_RATE_DIRECTIVE = {'request-rate', 'request rate'}


class RuleSet:

    def __init__(self):
        self.user_agent = None
        self.rules = []
        self.crawl_delay = None
        self.rules_sorted = False
        self.req_rate = None

    def set_user_agent(self, user_agent):
        self.user_agent = user_agent

    def applies_to(self, robotname):
        robotname = robotname.strip().lower()
        if self.user_agent == '*':
            return 1
        if self.user_agent in robotname:
            return len(self.user_agent)
        return 0

    def _quote_path(self, path, safe='/'):
        if path == '/?' or path == '/;':
            return path
        parts = urlparse(path)
        path = re.sub("%2[fF]", "\n", parts.path)
        parts = ParseResult('', '', quote(unquote(path), safe=safe).replace("\n", "%2F"),
                            parts.params, parts.query, parts.fragment)
        path = urlunparse(parts)
        return path

    def allow(self, path):
        path = self._quote_path(path, safe='/*$')
        self.rules.append(Rule(field='allow', value=path))

        # if index.html is allowed, we interpret this as / being allowed too.
        if path.endswith('/index.html'):
            self.allow(path[:-10] + '$')

    def disallow(self, path):
        path = self._quote_path(path, safe='/*$')
        self.rules.append(Rule(field='disallow', value=path))

    def _parser_match(self, pattern, url):
        pattern = re.sub(r'\*+', '*', pattern)
        s = re.split(r'([$*])', pattern)
        for index, substr in enumerate(s):
            if substr not in ['*', '$']:
                s[index] = re.escape(substr)
            else:
                s[index] = s[index].replace('*', '.*')
        pattern = '^' + ''.join(s)
        if re.findall(pattern, url):
            return True
        return False

    def allowed(self, url):
        if not self.rules_sorted:
            self.rules = sorted(self.rules, key=lambda r: (len(r.value), r.field == 'allow'), reverse=True)
            self.rules_sorted = True
        url = self._quote_path(url)
        allowed = True
        for rule in self.rules:
            if self._parser_match(rule.value, url):
                if rule.field == 'disallow':
                    allowed = False
                break
        return allowed

    def set_crawl_delay(self, delay):
        try:
            delay = float(delay)
        except ValueError:
            delay = None
        self.crawl_delay = delay

    def get_crawl_delay(self):
        return self.crawl_delay

    def set_request_rate(self, rate, time_period):
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

        self.req_rate = RequestRate(requests, seconds, start_time, end_time)

    def get_request_rate(self):
        return self.req_rate


class Protego:

    def __init__(self):
        self.user_agents = {}
        self.host = None
        self.sitemap_list = []
        self.total_line_seen = 0
        self.invalid_directive_seen = 0
        self.total_directive_seen = 0

    @classmethod
    def parse(cls, content):
        o = cls()
        o._parse_robotstxt(content)
        return o

    def _parse_robotstxt(self, content):
        lines = content.splitlines()
        current_user_agents = []
        previous_rule = None

        for line in lines:
            self.total_line_seen += 1
            hash_pos = line.find('#')
            if hash_pos != -1:
                line = line[0: hash_pos].strip()

            line = line.strip()
            if not line:
                continue

            if line.find(':') != -1:
                field, value = line.split(':', 1)
            else:
                # this line contains no colon. We will be generous here and give it a second chance.
                parts = line.rsplit(' ', 1)
                if not len(parts) == 2:
                    continue
                field, value = parts

            field = field.strip().lower()
            value = value.strip()

            if not value:
                previous_rule = Rule(field, value)
                continue

            if not current_user_agents and field not in USER_AGENT_DIRECTIVE:
                continue

            self.total_directive_seen += 1

            if field in USER_AGENT_DIRECTIVE:
                if previous_rule and previous_rule.field not in USER_AGENT_DIRECTIVE:
                    current_user_agents = []

                user_agent = value.strip().lower()
                if user_agent != '*' and '*' in user_agent:
                    user_agent = user_agent.replace('*', '')

                rule_set = self.user_agents.get(user_agent, None)
                if rule_set and rule_set not in current_user_agents:
                    current_user_agents.append(rule_set)

                if not rule_set:
                    rule_set = RuleSet()
                    rule_set.set_user_agent(user_agent)
                    self.user_agents[user_agent] = rule_set
                    current_user_agents.append(rule_set)

            elif field in ALLOW_DIRECTIVE:
                for user_agent in current_user_agents:
                    user_agent.allow(value)

            elif field in DISALLOW_DIRECTIVE:
                for user_agent in current_user_agents:
                    user_agent.disallow(value)

            elif field in SITEMAP_DIRECTIVE:
                self.sitemap_list.append(value)

            elif field in CRAWL_DELAY_DIRECTIVE:
                for user_agent in current_user_agents:
                    user_agent.set_crawl_delay(value)

            elif field in REQUEST_RATE_DIRECTIVE:
                parts = value.split()
                if len(parts) == 2:
                    rate, time_period = parts
                else:
                    rate, time_period = parts[0], ''
                for user_agent in current_user_agents:
                    user_agent.set_request_rate(rate, time_period)

            elif field == 'host':
                self.host = value

            else:
                self.invalid_directive_seen += 1

            previous_rule = Rule(field, value)

    def _get_matching_rule_set(self, user_agent):
        score_rule_set_pairs = ((rs.applies_to(user_agent), rs) for rs in self.user_agents.values())
        match_score, matched_rule_set = max(score_rule_set_pairs, key=lambda p: p[0], default=(0, None))
        if not match_score:
            return None
        return matched_rule_set

    def allowed(self, url, user_agent):
        matched_rule_set = self._get_matching_rule_set(user_agent)
        if not matched_rule_set:
            return True
        return matched_rule_set.allowed(url)

    def crawl_delay(self, user_agent):
        matched_rule_set = self._get_matching_rule_set(user_agent)
        if not matched_rule_set:
            return None
        return matched_rule_set.get_crawl_delay()

    def request_rate(self, user_agent):
        matched_rule_set = self._get_matching_rule_set(user_agent)
        if not matched_rule_set:
            return None
        return matched_rule_set.get_request_rate()

    def sitemaps(self):
        return iter(self.sitemap_list)

    def preferred_host(self):
        return self.host

    # methods below are only used by tests

    def _total_line_seen(self):
        return self.total_line_seen

    def _valid_directive_seen(self):
        return self.total_directive_seen - self.invalid_directive_seen

    def _total_directive_seen(self):
        return self.total_directive_seen

    def _invalid_directive_seen(self):
        return self.invalid_directive_seen
