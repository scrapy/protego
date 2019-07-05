import re
from datetime import time
from collections import namedtuple
from six.moves.urllib.parse import urlparse, urlunparse, ParseResult, quote, unquote

Record = namedtuple('Record', ['field', 'value'])
RequestRate = namedtuple(
    'RequestRate', ['requests', 'seconds', 'start_time', 'end_time'])


class RecordGroup:

    def __init__(self):
        self.user_agents = []
        self.rules = []
        self.crawl_delay = None
        self.sorted_rules = None
        self.req_rate = None

    def add_user_agent(self, user_agent):
        user_agent = user_agent.strip().lower()
        if user_agent != '*' and '*' in user_agent:
            user_agent = user_agent.replace('*', '')
        self.user_agents.append(user_agent)

    def applies_to(self, robotname):
        robotname = robotname.strip().lower()
        for user_agent in self.user_agents:
            if user_agent == '*':
                return 1
            if user_agent in robotname:
                return len(user_agent)

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
        self.rules.append(Record(field='allow', value=path))

    def disallow(self, path):
        path = self._quote_path(path, safe='/*$')
        self.rules.append(Record(field='disallow', value=path))

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
        if not self.sorted_rules:
            self.sorted_rules = sorted(
                self.rules, key=lambda r: (len(r.value), r.field == 'allow'), reverse=True)

        url = self._quote_path(url)

        allowed = True
        for record in self.sorted_rules:
            if self._parser_match(record.value, url):
                if record.field == 'disallow':
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
        self.record_groups = []
        self.host = None
        self.sitemap_list = []

    @classmethod
    def parse(cls, content):
        o = cls()
        o._parse_robotstxt(content)
        return o

    def _parse_robotstxt(self, content):
        lines = content.split('\n')
        current_record_group = None
        previous_record = None

        for line in lines:
            hash_pos = line.find('#')
            if hash_pos != -1:
                line = line[0: hash_pos].strip()

            line = line.strip()
            if (not line) or line.find(':') == -1:
                continue

            field, value = line.split(':', 1)
            field = field.strip().lower()
            value = value.strip()

            if not value:
                previous_record = Record(field, value)
                continue

            if not current_record_group and field != 'user-agent':
                continue

            if field == 'user-agent':
                if previous_record and previous_record.field != 'user-agent':
                    current_record_group = None

                if not current_record_group:
                    current_record_group = RecordGroup()
                    self.record_groups.append(current_record_group)

                current_record_group.add_user_agent(value)

            elif field == 'allow':
                current_record_group.allow(value)

            elif field == 'disallow':
                current_record_group.disallow(value)

            elif field == 'sitemap':
                self.sitemap_list.append(value)

            elif field == 'crawl-delay':
                current_record_group.set_crawl_delay(value)

            elif field == 'request-rate':
                parts = value.split()
                if len(parts) == 2:
                    rate, time_period = parts
                else:
                    rate, time_period = parts[0], ''
                current_record_group.set_request_rate(rate, time_period)

            elif field == 'host':
                self.host = value

            previous_record = Record(field, value)

        for record_group in self.record_groups:
            print(record_group.user_agents)
            if '*' in record_group.user_agents:
                self.record_groups.sort(key=lambda o: o is record_group)
                break

    def _get_matching_record_group(self, user_agent):
        match_score, matched_group = max(
            ((rg.applies_to(user_agent), rg) for rg in self.record_groups), key=lambda p: p[0], default=(0, None))
        if not match_score:
            return None
        return matched_group

    def allowed(self, url, user_agent):
        matched_group = self._get_matching_record_group(user_agent)
        if not matched_group:
            return True
        return matched_group.allowed(url)

    def crawl_delay(self, user_agent):
        matched_group = self._get_matching_record_group(user_agent)
        if not matched_group:
            return None
        return matched_group.get_crawl_delay()

    def request_rate(self, user_agent):
        matched_group = self._get_matching_record_group(user_agent)
        if not matched_group:
            return None
        return matched_group.get_request_rate()

    def sitemaps(self):
        return iter(self.sitemap_list)

    def preferred_host(self):
        return self.host
