# encoding=utf-8
from unittest import TestCase

from protego import Protego


class TestProtego(TestCase):
    def test_allowed(self):
        content = ("User-agent: * \n"
                   "Disallow: /disallowed \n"
                   "Allow: /allowed \n"
                   "Crawl-delay: 10")
        rp = Protego.parse(content=content)
        self.assertTrue(rp.allowed("https://www.site.local/allowed", "*"))
        self.assertFalse(rp.allowed("https://www.site.local/disallowed", "*"))

    def test_length_based_precedence(self):
        content = ("User-agent: * \n"
                   "Disallow: / \n"
                   "Allow: /page")
        rp = Protego.parse(content=content)
        self.assertTrue(rp.allowed("https://www.site.local/page", "*"))
        self.assertFalse(rp.allowed("https://www.site.local/elsewhere", "*"))

    def test_escaped_url(self):
        content = ("User-agent: * \n"
                   "Disallow: / \n"
                   "Allow: /a%3cd.html")
        rp = Protego.parse(content=content)
        self.assertTrue(rp.allowed("https://www.site.local/a<d.html", "*"))
        self.assertTrue(rp.allowed("https://www.site.local/a%3cd.html", "*"))

        content = ("User-agent: * \n"
                   "Disallow: / \n"
                   "Allow: /a%3c*")
        rp = Protego.parse(content=content)
        self.assertTrue(rp.allowed("https://www.site.local/a<d.html", "*"))
        self.assertTrue(rp.allowed("https://www.site.local/a%3cd.html", "*"))

    def test_unescaped_url(self):
        content = ("User-agent: * \n"
                   "Disallow: / \n"
                   "Allow: /a<d.html")
        rp = Protego.parse(content=content)
        self.assertTrue(rp.allowed("https://www.site.local/a<d.html", "*"))
        self.assertTrue(rp.allowed("https://www.site.local/a%3cd.html", "*"))

        content = ("User-agent: * \n"
                   "Disallow: / \n"
                   "Allow: /a<*")
        rp = Protego.parse(content=content)
        self.assertTrue(rp.allowed("https://www.site.local/a<d.html", "*"))
        self.assertTrue(rp.allowed("https://www.site.local/a%3cd.html", "*"))

    def test_url_parts(self):
        content = ("User-agent: * \n"
                   "Disallow: /path;params?query \n")
        rp = Protego.parse(content=content)
        self.assertFalse(rp.allowed(
            "http://userinfo@exmaple.com:10/path;params?query#fragment", "*"))

        content = ("User-agent: * \n"
                   "Disallow: /? \n")
        rp = Protego.parse(content=content)
        self.assertFalse(rp.allowed("/?query", "*"))
        self.assertTrue(rp.allowed('/', '*'))

        content = ("User-agent: * \n"
                   "Disallow: /; \n")
        rp = Protego.parse(content=content)
        self.assertFalse(rp.allowed("/;params", "*"))
        self.assertTrue(rp.allowed('/', '*'))

    def test_sitemaps(self):
        content = ("User-agent: * \n"
                   "Disallow: /disallowed \n"
                   "Allow: /allowed \n"
                   "Sitemap: https://site.local/sitemap.xml \n"
                   "Allow: /another_allowed \n"
                   "Sitemap: https://site.local/sitemap2.xml")
        rp = Protego.parse(content=content)
        sitemaps = list(rp.sitemaps())
        self.assertTrue(len(sitemaps) == 2)
        self.assertTrue("https://site.local/sitemap.xml" in sitemaps)
        self.assertTrue("https://site.local/sitemap2.xml" in sitemaps)

    def test_no_sitemaps(self):
        content = ("User-agent: * \n"
                   "Disallow: /disallowed \n"
                   "Allow: /allowed \n"
                   "Crawl-delay: 10")
        rp = Protego.parse(content=content)
        self.assertTrue(not list(rp.sitemaps()))

    def test_no_preferred_host(self):
        content = ("User-agent: * \n"
                   "Disallow: /disallowed \n"
                   "Allow: /allowed \n"
                   "Crawl-delay: 10")
        rp = Protego.parse(content=content)
        self.assertTrue(rp.preferred_host() is None)

    def test_crawl_delay(self):
        content = ("User-agent: * \n"
                   "Disallow: /disallowed \n"
                   "Allow: /allowed \n"
                   "Crawl-delay: 10")
        rp = Protego.parse(content=content)
        self.assertTrue(rp.crawl_delay('*') == 10.0)

    def test_malformed_crawl_delay(self):
        content = ("User-agent: * \n"
                   "Disallow: /disallowed \n"
                   "Allow: /allowed \n"
                   "Crawl-delay: random_word")
        rp = Protego.parse(content=content)
        self.assertTrue(rp.crawl_delay('*') is None)

    def test_no_crawl_delay(self):
        content = ("User-agent: * \n"
                   "Disallow: /disallowed \n"
                   "Allow: /allowed")
        rp = Protego.parse(content=content)
        self.assertTrue(rp.crawl_delay('*') is None)

    def test_request_rate(self):
        content = """
        User-agent: one
        Request-rate: 1/10s
        User-agent: two
        Request-rate: 100/15m
        User-agent: three
        Request-rate: 400/1h
        User-agent: four
        Request-rate: 9000/1d
        User-agent: five
        Request-rate: 1/10s 1820-1940
        """
        rp = Protego.parse(content=content)

        req_rate = rp.request_rate('one')
        self.assertTrue(req_rate.requests == 1)
        self.assertTrue(req_rate.seconds == 10)
        self.assertTrue(req_rate.start_time is None)
        self.assertTrue(req_rate.end_time is None)

        req_rate = rp.request_rate('two')
        self.assertTrue(req_rate.requests == 100)
        self.assertTrue(req_rate.seconds == 900)
        self.assertTrue(req_rate.start_time is None)
        self.assertTrue(req_rate.end_time is None)

        req_rate = rp.request_rate('three')
        self.assertTrue(req_rate.requests == 400)
        self.assertTrue(req_rate.seconds == 3600)
        self.assertTrue(req_rate.start_time is None)
        self.assertTrue(req_rate.end_time is None)

        req_rate = rp.request_rate('four')
        self.assertTrue(req_rate.requests == 9000)
        self.assertTrue(req_rate.seconds == 86400)
        self.assertTrue(req_rate.start_time is None)
        self.assertTrue(req_rate.end_time is None)

        req_rate = rp.request_rate('five')
        self.assertTrue(req_rate.requests == 1)
        self.assertTrue(req_rate.seconds == 10)
        self.assertTrue(req_rate.start_time.hour == 18)
        self.assertTrue(req_rate.start_time.minute == 20)
        self.assertTrue(req_rate.end_time.hour == 19)
        self.assertTrue(req_rate.end_time.minute == 40)

    def test_no_request_rate(self):
        content = """
        User-agent: one
        Request-rate: 1/10s
        User-agent: two
        Disallow: /
        """
        rp = Protego.parse(content=content)
        self.assertTrue(rp.request_rate('two') is None)

    def test_empty_response(self):
        """empty response should equal 'allow all'"""
        rp = Protego.parse(content='')
        self.assertTrue(rp.allowed("https://site.local/", "*"))
        self.assertTrue(rp.allowed("https://site.local/", "chrome"))
        self.assertTrue(rp.allowed("https://site.local/index.html", "*"))
        self.assertTrue(rp.allowed("https://site.local/disallowed", "*"))

    def test_allowed_wildcards(self):
        content = """User-agent: first
                     Disallow: /disallowed/*/end$
                     Disallow: /protego*work

                     User-agent: second
                     Allow: /*allowed
                     Disallow: /
                """
        rp = Protego.parse(content=content)

        self.assertTrue(rp.allowed(
            "https://www.site.local/disallowed", "first"))
        self.assertFalse(rp.allowed(
            "https://www.site.local/disallowed/xyz/end", "first"))
        self.assertFalse(rp.allowed(
            "https://www.site.local/disallowed/abc/end", "first"))
        self.assertTrue(rp.allowed(
            "https://www.site.local/disallowed/xyz/endinglater", "first"))
        self.assertFalse(rp.allowed(
            "https://www.site.local/protegoworks", "first"))
        self.assertFalse(rp.allowed(
            "https://www.site.local/protego_works", "first"))
        self.assertFalse(rp.allowed(
            "https://www.site.local/protego/works", "first"))
        self.assertFalse(rp.allowed(
            "https://www.site.local/protego_does_work", "first"))
        self.assertTrue(rp.allowed(
            "https://www.site.local/rotego_does_work", "first"))
        self.assertTrue(rp.allowed(
            "https://www.site.local/protego_does_wor", "first"))
        self.assertTrue(rp.allowed("https://www.site.local/allowed", "second"))
        self.assertTrue(rp.allowed(
            "https://www.site.local/is_still_allowed", "second"))
        self.assertTrue(rp.allowed(
            "https://www.site.local/is_allowed_too", "second"))

    def test_unicode_url_and_useragent(self):
        content = u"""
        User-Agent: *
        Disallow: /admin/
        Disallow: /static/
        # taken from https://en.wikipedia.org/robots.txt
        Disallow: /wiki/K%C3%A4ytt%C3%A4j%C3%A4:
        Disallow: /wiki/Käyttäjä:
        Disallow: /wiki/Keskustelu_käyttäjästä:
        User-Agent: UnicödeBöt
        Disallow: /some/randome/page.html"""
        rp = Protego.parse(content=content)
        self.assertTrue(rp.allowed("https://site.local/", "*"))
        self.assertFalse(rp.allowed("https://site.local/admin/", "*"))
        self.assertFalse(rp.allowed("https://site.local/static/", "*"))
        self.assertTrue(rp.allowed("https://site.local/admin/", u"UnicödeBöt"))
        self.assertFalse(rp.allowed(
            "https://site.local/wiki/K%C3%A4ytt%C3%A4j%C3%A4:", "*"))
        self.assertFalse(rp.allowed(u"https://site.local/wiki/Käyttäjä:", "*"))
        self.assertFalse(rp.allowed(
            u"https://site.local/wiki/Keskustelu_k%C3%A4ytt%C3%A4j%C3%A4st%C3%A4:", "*"))
        self.assertFalse(rp.allowed(
            u"https://site.local/wiki/Keskustelu_käyttäjästä:", "*"))
        self.assertTrue(rp.allowed(
            "https://site.local/some/randome/page.html", "*"))
        self.assertFalse(rp.allowed(
            "https://site.local/some/randome/page.html", u"UnicödeBöt"))

    def test_no_leading_user_agent(self):
        """Record groups without a user-agent should be ignored."""
        content = """
        Disallow: /withoutUA
        Allow: /withoutUA/exception
        Crawl-delay: 5.2
        User-Agent: testbot
        Disallow: /withUA
        """
        rp = Protego.parse(content=content)
        self.assertTrue(rp.allowed("https://site.local/withoutUA", "mybot"))
        self.assertTrue(rp.allowed("https://site.local/withoutUA", "testbot"))
        self.assertTrue(rp.allowed("https://site.local/withoutUA", "*"))
        self.assertTrue(rp.allowed("https://site.local/withUA", "mybot"))
        self.assertFalse(rp.allowed("https://site.local/withUA", "testbot"))
        self.assertTrue(rp.crawl_delay('testbot') is None)
        self.assertTrue(rp.crawl_delay('*') is None)

    def test_default_user_agent(self):
        content = """
        User-Agent: robot
        Disallow: /ro-bot

        User-Agent: *
        Disallow: /default-UA

        User-Agent: testbot
        Disallow: /testbot
        """
        rp = Protego.parse(content=content)
        self.assertFalse(rp.allowed("https://site.local/default-UA", "mybot"))
        self.assertTrue(rp.allowed("https://site.local/default-UA", "testbot"))
        self.assertTrue(rp.allowed("https://site.local/default-UA", "robot"))

    def test_user_agent_case_insensitivity(self):
        content = """
        User-Agent: testbot
        Disallow: /testbot

        User-Agent: *
        Disallow: /default-UA
        """
        rp = Protego.parse(content=content)
        self.assertFalse(rp.allowed("https://site.local/testbot", "TESTbot"))
        self.assertTrue(rp.allowed("https://site.local/default-UA", "TESTbot"))
        self.assertFalse(rp.allowed("https://site.local/testbot", "testbot"))
        self.assertTrue(rp.allowed("https://site.local/default-UA", "testbot"))
        self.assertFalse(rp.allowed("https://site.local/testbot", "tEStbOt"))
        self.assertTrue(rp.allowed("https://site.local/default-UA", "tEStbOt"))

    def test_user_agent_grouping(self):
        content = """
        User-Agent: one
        User-Agent: two
        Disallow: /success
        User-Agent: *
        Disallow: /failure
        """
        rp = Protego.parse(content=content)
        self.assertFalse(rp.allowed("https://site.local/success", "one"))
        self.assertFalse(rp.allowed("https://site.local/success", "two"))
        self.assertTrue(rp.allowed("https://site.local/failure", "one"))
        self.assertTrue(rp.allowed("https://site.local/failure", "two"))

    def test_comments(self):
        content = """
        # comment 1
        User-Agent: one # comment 2
        # comment 3
        User-Agent: two
        Disallow: /one-two-bot
        # Disallow: /commented
        # comment 4
        User-Agent: *
        Disallow: /default-ua
        """
        rp = Protego.parse(content=content)
        self.assertFalse(rp.allowed("https://site.local/one-two-bot", "one"))
        self.assertFalse(rp.allowed("https://site.local/one-two-bot", "two"))
        self.assertTrue(rp.allowed("https://site.local/commented", "one"))
        self.assertTrue(rp.allowed("https://site.local/commented", "two"))
        self.assertTrue(rp.allowed("https://site.local/default-ua", "one"))
        self.assertTrue(rp.allowed("https://site.local/default-ua", "two"))

    def test_skip_unknown_directives(self):
        content = """
        User-Agent: one
        Disallow: /bot-one
        Harry: Potter
        User-Agent: two
        Disallow: /bot-two
        """
        rp = Protego.parse(content=content)
        self.assertFalse(rp.allowed("https://site.local/bot-one", "one"))
        self.assertTrue(rp.allowed("https://site.local/bot-two", "one"))
        self.assertFalse(rp.allowed("https://site.local/bot-two", "two"))
        self.assertTrue(rp.allowed("https://site.local/bot-one", "two"))

    def test_skip_malformed_line(self):
        content = """
        User-Agent: one
        Disallow: /bot-one
        Harry Potter
        User-Agent: two
        Disallow: /bot-two
        """
        rp = Protego.parse(content=content)
        self.assertFalse(rp.allowed("https://site.local/bot-one", "one"))
        self.assertTrue(rp.allowed("https://site.local/bot-two", "one"))
        self.assertFalse(rp.allowed("https://site.local/bot-two", "two"))
        self.assertTrue(rp.allowed("https://site.local/bot-one", "two"))

    def test_empty_disallow_allow_directives(self):
        """Directives without path should be ignored."""
        content = """
        User-Agent: one
        Disallow:

        User-Agent: two
        Allow:
        """
        rp = Protego.parse(content=content)
        self.assertTrue(rp.allowed("https://site.local/path1", "one"))
        self.assertTrue(rp.allowed("https://site.local/path2", "one"))
        self.assertTrue(rp.allowed("https://site.local/path1", "two"))
        self.assertTrue(rp.allowed("https://site.local/path2", "two"))

    def test_empty_record_group(self):
        content = """
        User-Agent: harrybot
        Disallow: /
        User-Agent: testbot
        """
        rp = Protego.parse(content=content)
        self.assertTrue(rp.allowed("https://site.local/path1", "testbot"))
        self.assertTrue(rp.allowed("https://site.local/path2", "testbot"))
