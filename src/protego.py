class RecordGroup:

    def __init__(self):
        self.user_agents = []
        self.rules = {}
        self.sorted_allow_disallow = None

    def add_user_agent(self, user_agent):
        self.user_agents.append(user_agent.lower())

    def applies_to(self, robot):
        for user_agent in self.user_agents:
            if robot in user_agent:
                return True
        return False

    def allow(self, path):
        if 'allow' not in self.rules:
            self.rules['allow'] = []
        self.rules['allow'].append(path)

    def disallow(self, path):
        if 'disallow' not in self.rules:
            self.rules['disallow'] = []
        self.rules['disallow'].append(path)

    def can_fetch(self, path):
        if not self.sorted_allow_disallow:
            self.sorted_allow_disallow = []
            for p in self.rules['allow']:
                self.sorted_allow_disallow.append((p, 'allow'))
            for p in self.rules['disallow']:
                self.sorted_allow_disallow.append((p, 'disallow'))

            def pathlength(t):
                return len(t[0])
            sorted(self.sorted_allow_disallow, key=pathlength, reverse=True)

        for p, d in self.sorted_allow_disallow:
            if path.startswith(p):
                return True if d == 'allow' else False
        return True

    def set_crawl_delay(self, delay):
        self.rules['crawl-delay'] = delay

    def get_crawl_delay(self):
        if 'crawl-delay' not in self.rules:
            return None
        return self.rules['crawl-delay']

    def add_sitemap(self, path):
        if 'sitemaps' not in self.rules:
            self.rules['sitemaps'] = []
        self.rules['sitemaps'].append(path)

    def get_sitemaps(self):
        if 'sitemaps' not in self.rules:
            return iter(())
        return iter(self.rules['sitemaps'])

    def set_preferred_host(self, host):
        self.rules['host'] = host

    def get_preferred_host(self):
        if 'host' not in self.rules:
            return None
        return self.rules['host']


class Protego:

    def __init__(self):
        self.record_groups = []

    def _parse(self, content):
        lines = content.split('\n')
        current_record_group = None
        previous_directive = None

        for line in lines:
            hash_pos = line.find('#')
            if hash_pos != -1:
                line = line[0: hash_pos]
                if not line:
                    continue

            line = line.strip()
            directive, value = line.split(':')
            directive = directive.strip().lower()
            value = value.strip()

            if not current_record_group and directive != 'user-agent':
                continue

            if directive == 'user-agent':
                if not current_record_group:
                    current_record_group = RecordGroup()
                current_record_group.add_user_agent(value)
            elif directive == 'allow':
                current_record_group.allow(value)
            elif directive == 'disallow':
                current_record_group.disallow(value)
            elif directive == 'sitemap':
                current_record_group.add_sitemap(value)
            elif directive == 'crawl-delay':
                current_record_group.set_crawl_delay(value)
            elif directive == 'host':
                current_record_group.set_preferred_host(value)
