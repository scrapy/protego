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
                   "User-agent: testbot \n"
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
                   "Crawl-delay: 10 \n"
                   "User-agent: testbot\n"
                   "Crawl-delay: 15 \n")
        rp = Protego.parse(content=content)
        self.assertTrue(rp.crawl_delay('*') == 10.0)
        self.assertTrue(rp.crawl_delay('testbot') == 15.0)

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

        content = """
        # robots.txt for http://www.example.com/
        
        User-agent: Rule1TestBot
        Disallow:  /foo*
        
        User-agent: Rule2TestBot
        Disallow:  /foo*/bar.html
        
        # Disallows anything containing the letter m!
        User-agent: Rule3TestBot
        Disallow:  *m
        
        User-agent: Rule4TestBot
        Allow:  /foo/bar.html
        Disallow: *
        
        User-agent: Rule5TestBot
        Disallow:  /foo*/*bar.html
        
        User-agent: Rule6TestBot
        Allow:  /foo$
        Disallow:  /foo
        
        # Exercise excessive wildcards
        # https://bitbucket.org/philip_semanchuk/robotexclusionrulesparser/issues/1
        User-agent: Rule7TestBot
        Allow: *****************/****.js
        
        """
        rp = Protego.parse(content=content)

        def is_allowed(ua, url):
            return rp.allowed(url, ua)
        self.assertTrue(is_allowed("Rule1TestBot", "/fo.html"))
        self.assertFalse(is_allowed("Rule1TestBot", "/foo.html"))
        self.assertFalse(is_allowed("Rule1TestBot", "/food"))
        self.assertFalse(is_allowed("Rule1TestBot", "/foo/bar.html"))

        self.assertTrue(is_allowed("Rule2TestBot", "/fo.html"))
        self.assertFalse(is_allowed("Rule2TestBot", "/foo/bar.html"))
        self.assertFalse(is_allowed("Rule2TestBot", "/food/bar.html"))
        self.assertFalse(is_allowed("Rule2TestBot", "/foo/a/b/c/x/y/z/bar.html"))
        self.assertTrue(is_allowed("Rule2TestBot", "/food/xyz.html"))

        self.assertFalse(is_allowed("Rule3TestBot", "/foo.htm"))
        self.assertFalse(is_allowed("Rule3TestBot", "/foo.html"))
        self.assertTrue(is_allowed("Rule3TestBot", "/foo"))
        self.assertFalse(is_allowed("Rule3TestBot", "/foom"))
        self.assertFalse(is_allowed("Rule3TestBot", "/moo"))
        self.assertFalse(is_allowed("Rule3TestBot", "/foo/bar.html"))
        self.assertTrue(is_allowed("Rule3TestBot", "/foo/bar.txt"))

        self.assertFalse(is_allowed("Rule4TestBot", "/fo.html"))
        self.assertFalse(is_allowed("Rule4TestBot", "/foo.html"))
        self.assertFalse(is_allowed("Rule4TestBot", "/foo"))
        self.assertTrue(is_allowed("Rule4TestBot", "/foo/bar.html"))
        self.assertFalse(is_allowed("Rule4TestBot", "/foo/bar.txt"))

        self.assertFalse(is_allowed("Rule5TestBot", "/foo/bar.html"))
        self.assertFalse(is_allowed("Rule5TestBot", "/food/rebar.html"))
        self.assertTrue(is_allowed("Rule5TestBot", "/food/rebarf.html"))
        self.assertFalse(is_allowed("Rule5TestBot", "/foo/a/b/c/rebar.html"))
        self.assertFalse(is_allowed("Rule5TestBot", "/foo/a/b/c/bar.html"))

        self.assertTrue(is_allowed("Rule6TestBot", "/foo"))
        self.assertFalse(is_allowed("Rule6TestBot", "/foo/"))
        self.assertFalse(is_allowed("Rule6TestBot", "/foo/bar.html"))
        self.assertFalse(is_allowed("Rule6TestBot", "/fooey"))

        self.assertTrue(is_allowed("Rule7TestBot", "xyz/foo.js"))
        self.assertTrue(is_allowed("Rule7TestBot", "/inlife/daily/fashion-20160727/"))

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

        content = """
        # robots.txt for http://www.example.com/
        
        User-Agent: Jävla-Foobot
        Disallow: /
        
        User-Agent: \u041b\u044c\u0432\u0456\u0432-bot
        Disallow: /totalitarianism/
        
        """
        rp = Protego.parse(content=content)

        def is_allowed(ua, url):
            return rp.allowed(url, ua)

        user_agent = "jävla-fanbot"
        self.assertTrue(is_allowed(user_agent, "/foo/bar.html"))
        self.assertFalse(is_allowed(user_agent.replace("fan", "foo"), "/foo/bar.html"))
        self.assertTrue(is_allowed("foobot", "/"))

        user_agent = "Mozilla/5.0 (compatible; \u041b\u044c\u0432\u0456\u0432-bot/1.1)"
        self.assertTrue(is_allowed(user_agent, "/"))
        self.assertFalse(is_allowed(user_agent, "/totalitarianism/foo.htm"))

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

    def test_1994rfc_example(self):
        """Test parser on examples form 1994 RFC."""
        content = """
        # robots.txt for http://www.example.com/
        User-agent: *
        Disallow: /cyberworld/map/ # This is an infinite virtual URL space
        Disallow: /tmp/ # these will soon disappear
        Disallow: /foo.html
        """
        rp = Protego.parse(content=content)
        user_agent = "CrunchyFrogBot"
        self.assertTrue(rp.allowed("/", user_agent))
        self.assertFalse(rp.allowed("/foo.html", user_agent))
        self.assertTrue(rp.allowed("/foo.htm", user_agent))
        self.assertTrue(rp.allowed("/foo.shtml", user_agent))
        self.assertFalse(rp.allowed("/foo.htmlx", user_agent))
        self.assertTrue(rp.allowed("/cyberworld/index.html", user_agent))
        self.assertFalse(rp.allowed("/tmp/foo.html", user_agent))
        # Since it is the caller's responsibility to make sure the host name
        # matches, the parser disallows foo.html regardless of what I pass for
        # host name and protocol.
        self.assertFalse(rp.allowed("http://example.com/foo.html", user_agent))
        self.assertFalse(rp.allowed("http://www.example.com/foo.html", user_agent))
        self.assertFalse(rp.allowed("http://www.example.org/foo.html", user_agent))
        self.assertFalse(rp.allowed("https://www.example.org/foo.html", user_agent))
        self.assertFalse(rp.allowed("ftp://example.net/foo.html", user_agent))

    def test_1996rfc_examples(self):
        """Test parser on examples form 1996 RFC."""
        content = """
        # robots.txt for http://www.example.com/

        User-agent: 1bot
        Allow: /tmp
        Disallow: /

        User-agent: 2bot
        Allow: /tmp/
        Disallow: /

        User-agent: 3bot
        Allow: /a%3cd.html
        Disallow: /

        User-agent: 4bot
        Allow: /a%3Cd.html
        Disallow: /

        User-agent: 5bot
        Allow: /a%2fb.html
        Disallow: /

        User-agent: 6bot
        Allow: /a/b.html
        Disallow: /

        User-agent: 7bot
        Allow: /%7ejoe/index.html
        Disallow: /

        User-agent: 8bot
        Allow: /~joe/index.html
        Disallow: /
        """
        rp = Protego.parse(content=content)
        self.assertTrue(rp.allowed("/tmp.html", "1bot"))
        self.assertTrue(rp.allowed("/tmp", "1bot"))
        self.assertTrue(rp.allowed("/tmp/a.html", "1bot"))
        self.assertFalse(rp.allowed("/tmp", "2bot"))
        self.assertTrue(rp.allowed("/tmp/", "2bot"))
        self.assertTrue(rp.allowed("/tmp/a.html", "2bot"))
        self.assertTrue(rp.allowed("/a%3cd.html", "3bot"))
        self.assertTrue(rp.allowed("/a%3Cd.html", "3bot"))
        self.assertTrue(rp.allowed("/a%3cd.html", "4bot"))
        self.assertTrue(rp.allowed("/a%3Cd.html", "4bot"))
        self.assertTrue(rp.allowed("/a%2fb.html", "5bot"))
        self.assertFalse(rp.allowed("/a/b.html", "5bot"))
        self.assertFalse(rp.allowed("/a%2fb.html", "6bot"))
        self.assertTrue(rp.allowed("/a/b.html", "6bot"))
        self.assertTrue(rp.allowed("/~joe/index.html", "7bot"))
        self.assertTrue(rp.allowed("/%7Ejoe/index.html", "8bot"))

        content = """
        # /robots.txt for http://www.example.org/
        # comments to webmaster@example.org

        User-agent: unhipbot
        Disallow: /

        User-agent: webcrawler
        User-agent: excite
        Disallow:

        User-agent: *
        Disallow: /org/plans.html
        Allow: /org/
        Allow: /serv
        Allow: /~mak
        Disallow: /
        """
        rp = Protego.parse(content=content)

        def is_allowed(ua, url):
            return rp.allowed(url, ua)
        self.assertFalse(is_allowed("unhipbot", "http://www.example.org/"))
        self.assertTrue(is_allowed("webcrawler", "http://www.example.org/"))
        self.assertTrue(is_allowed("excite", "http://www.example.org/"))
        self.assertFalse(is_allowed("OtherBot", "http://www.example.org/"))
        self.assertFalse(is_allowed("unhipbot", "http://www.example.org/index.html"))
        self.assertTrue(is_allowed("webcrawler", "http://www.example.org/index.html"))
        self.assertTrue(is_allowed("excite", "http://www.example.org/index.html"))
        self.assertFalse(is_allowed("OtherBot", "http://www.example.org/index.html"))
        # The original document contains tests for robots.txt. I dropped them. I presume that no
        # one will fetch robots.txt to see if they're allowed to fetch robots.txt. Sheesh...
        #   assert(parser.is_allowed("unhipbot", "http://www.example.org/robots.txt") == True)
        #   assert(parser.is_allowed("webcrawler", "http://www.example.org/robots.txt") == True)
        #   assert(parser.is_allowed("excite", "http://www.example.org/robots.txt") == True)
        #   assert(parser.is_allowed("OtherBot", "http://www.example.org/robots.txt") == True)
        self.assertFalse(is_allowed("unhipbot", "http://www.example.org/server.html"))
        self.assertTrue(is_allowed("webcrawler", "http://www.example.org/server.html"))
        self.assertTrue(is_allowed("excite", "http://www.example.org/server.html"))
        self.assertTrue(is_allowed("OtherBot", "http://www.example.org/server.html"))
        self.assertFalse(is_allowed("unhipbot",
                                    "http://www.example.org/services/fast.html"))
        self.assertTrue(is_allowed("webcrawler",
                                   "http://www.example.org/services/fast.html"))
        self.assertTrue(is_allowed("excite",
                                   "http://www.example.org/services/fast.html"))
        self.assertTrue(is_allowed("OtherBot",
                                   "http://www.example.org/services/fast.html"))
        self.assertFalse(is_allowed("unhipbot",
                                    "http://www.example.org/services/slow.html"))
        self.assertTrue(is_allowed("webcrawler",
                                   "http://www.example.org/services/slow.html"))
        self.assertTrue(is_allowed("excite",
                                   "http://www.example.org/services/slow.html"))
        self.assertTrue(is_allowed("OtherBot",
                                   "http://www.example.org/services/slow.html"))
        self.assertFalse(is_allowed("unhipbot",
                                    "http://www.example.org/orgo.gif"))
        self.assertTrue(is_allowed("webcrawler",
                                   "http://www.example.org/orgo.gif"))
        self.assertTrue(is_allowed("excite",
                                   "http://www.example.org/orgo.gif"))
        self.assertFalse(is_allowed("OtherBot",
                                    "http://www.example.org/orgo.gif"))
        self.assertFalse(is_allowed("unhipbot",
                                    "http://www.example.org/org/about.html"))
        self.assertTrue(is_allowed("webcrawler",
                                   "http://www.example.org/org/about.html"))
        self.assertTrue(is_allowed("excite",
                                   "http://www.example.org/org/about.html"))
        self.assertTrue(is_allowed("OtherBot",
                                   "http://www.example.org/org/about.html"))
        self.assertFalse(is_allowed("unhipbot",
                                    "http://www.example.org/org/plans.html"))
        self.assertTrue(is_allowed("webcrawler",
                                   "http://www.example.org/org/plans.html"))
        self.assertTrue(is_allowed("excite",
                                   "http://www.example.org/org/plans.html"))
        self.assertFalse(is_allowed("OtherBot",
                                    "http://www.example.org/org/plans.html"))
        self.assertFalse(is_allowed("unhipbot",
                                    "http://www.example.org/%7Ejim/jim.html"))
        self.assertTrue(is_allowed("webcrawler",
                                   "http://www.example.org/%7Ejim/jim.html"))
        self.assertTrue(is_allowed("excite",
                                   "http://www.example.org/%7Ejim/jim.html"))
        self.assertFalse(is_allowed("OtherBot",
                                    "http://www.example.org/%7Ejim/jim.html"))
        self.assertFalse(is_allowed("unhipbot",
                                    "http://www.example.org/%7Emak/mak.html"))
        self.assertTrue(is_allowed("webcrawler",
                                   "http://www.example.org/%7Emak/mak.html"))
        self.assertTrue(is_allowed("excite",
                                   "http://www.example.org/%7Emak/mak.html"))
        self.assertTrue(is_allowed("OtherBot",
                                   "http://www.example.org/%7Emak/mak.html"))

    def test_implicit_allow(self):
        content = """
        # robots.txt for http://www.example.com/
        
        User-agent: *
        Disallow:    /
        
        User-agent: foobot
        Disallow:
        """
        rp = Protego.parse(content=content)

        def is_allowed(ua, url):
            return rp.allowed(url, ua)
        self.assertTrue(is_allowed("foobot", "/"))
        self.assertTrue(is_allowed("foobot", "/bar.html"))
        self.assertFalse(is_allowed("SomeOtherBot", "/"))
        self.assertFalse(is_allowed("SomeOtherBot", "/blahblahblah"))

    def test_grouping_unknown_keys(self):
        '''
        When we encounter unknown keys, we should disregard any grouping that may have
        happened between user agent rules.
        This is an example from the wild. Despite `Noindex` not being a valid directive,
        we'll not consider the '*' and 'ia_archiver' rules together.
        '''
        content = """
        User-agent: abc
        Disallow: /content/2/
        User-agent: *
        Noindex: /gb.html
        Noindex: /content/2/
        User-agent: ia_archiver
        Disallow: /
        """
        rp = Protego.parse(content=content)
        self.assertTrue(rp.allowed('/foo', 'agent'))
        self.assertTrue(rp.allowed('/foobar', 'agent'))
        self.assertTrue(rp.allowed('/content/2', 'agent'))
        self.assertFalse(rp.allowed('/bar', 'ia_archiver'))
        self.assertFalse(rp.allowed('/foo', 'ia_archiver'))
        self.assertFalse(rp.allowed('/foobar', 'ia_archiver'))
        self.assertFalse(rp.allowed('/content/2', 'ia_archiver'))
