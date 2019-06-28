from collections import namedtuple
import re
from six.moves.urllib.parse import urlparse, urlunparse, ParseResult

Record = namedtuple('Record', ['field', 'value'])


class RecordGroup:

    def __init__(self):
        self.user_agents = []
        self.rules = []
        self.crawl_delay = None
        self.sorted_rules = None

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

    def allow(self, path):
        self.rules.append(Record(field='allow', value=path))

    def disallow(self, path):
        self.rules.append(Record(field='disallow', value=path))

    def _parser_match(self, pattern, url):
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
                self.rules, key=lambda r: len(r.value), reverse=True)

        parts = urlparse(url)
        parts = ParseResult('', '', parts.path, '', parts.query, '')
        url = urlunparse(parts)

        allowed = True
        for record in self.sorted_rules:
            if self._parser_match(record.value, url):
                if record.field == 'disallow':
                    allowed = False
                break

        return allowed

    def set_crawl_delay(self, delay):
        self.crawl_delay = delay

    def get_crawl_delay(self):
        return self.crawl_delay


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
            if not line:
                continue

            line = line.strip()
            field, value = line.split(':', 1)
            field = field.strip().lower()
            value = value.strip()

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
                current_record_group.set_crawl_delay(float(value))

            elif field == 'host':
                self.host = value

            previous_record = Record(field, value)

        for record_group in self.record_groups:
            if '*' in record_group.user_agents:
                self.record_groups.sort(key=lambda o: o is record_group)
                break

    def _get_matching_record_group(self, user_agent):
        matched_group = None
        match_score = 0
        for record_group in self.record_groups:
            score = record_group.applies_to(user_agent)
            if score > match_score:
                match_score = score
                matched_group = record_group
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

    def sitemaps(self):
        return iter(self.sitemap_list)

    def preferred_host(self):
        return self.host
