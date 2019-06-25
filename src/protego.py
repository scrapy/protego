from collections import namedtuple
from six.moves.urllib.parse import urlparse

Record = namedtuple('Record', ['field', 'value'])


class RecordGroup:

    def __init__(self):
        self.user_agents = []
        self.rules = []
        self.crawl_delay = None
        self.sorted_rules = None

    def add_user_agent(self, user_agent):
        self.user_agents.append(user_agent.strip().lower())

    def applies_to(self, robotname):
        robotname = robotname.strip().lower()
        for user_agent in self.user_agents:
            if (robotname in user_agent) or (user_agent == '*'):
                return True
        return False

    def allow(self, path):
        self.rules.append(Record(field='allow', value=path))

    def disallow(self, path):
        self.rules.append(Record(field='disallow', value=path))

    def allowed(self, url):
        if not self.sorted_rules:
            self.sorted_rules = []
            self.sorted_rules = sorted(
                self.rules, key=lambda r: len(r.value), reverse=True)

        path = urlparse(url).path

        allowed = True
        for record in self.sorted_rules:
            if path.startswith(record.value):
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

    def allowed(self, url, user_agent):
        for record_group in self.record_groups:
            if record_group.applies_to(user_agent):
                return record_group.allowed(url)

        return True

    def crawl_delay(self, user_agent):
        for record_group in self.record_groups:
            if record_group.applies_to(user_agent):
                return record_group.get_crawl_delay()

        return None

    def sitemaps(self):
        return iter(self.sitemap_list)

    def preferred_host(self):
        return self.host
