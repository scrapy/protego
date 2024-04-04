from datetime import time
from unittest import TestCase

import pytest

from protego import Protego, _RuleSet


class TestProtego(TestCase):
    def test_allowed(self):
        content = (
            "User-agent: * \n"
            "Disallow: /disallowed \n"
            "Allow: /allowed \n"
            "Crawl-delay: 10"
        )
        rp = Protego.parse(content=content)
        self.assertTrue(rp.can_fetch("https://www.site.local/allowed", "*"))
        self.assertFalse(rp.can_fetch("https://www.site.local/disallowed", "*"))

        content = "User-agent: * \n" "Disallow: /d \n" "Crawl-delay: 10"
        rp = Protego.parse(content=content)
        self.assertTrue(rp.can_fetch("https://www.site.local/abc/d", "*"))
        self.assertFalse(rp.can_fetch("https://www.site.local/disallowed", "*"))

    def test_malformed_disallow(self):
        content = (
            "User-agent: * \n"
            "Disallow: /one \n"
            "Dissallow: /two \n"
            "Dissalow: /three \n"
            "Disalow: /four \n"
            "Diasllow: /five \n"
            "Disallaw: /six \n"
        )
        rp = Protego.parse(content=content)
        self.assertFalse(rp.can_fetch("https://www.site.local/one", "*"))
        self.assertFalse(rp.can_fetch("https://www.site.local/two", "*"))
        self.assertFalse(rp.can_fetch("https://www.site.local/three", "*"))
        self.assertFalse(rp.can_fetch("https://www.site.local/four", "*"))
        self.assertFalse(rp.can_fetch("https://www.site.local/five", "*"))
        self.assertFalse(rp.can_fetch("https://www.site.local/six", "*"))

    def test_length_based_precedence(self):
        content = "User-agent: * \n" "Disallow: / \n" "Allow: /page"
        rp = Protego.parse(content=content)
        self.assertTrue(rp.can_fetch("https://www.site.local/page", "*"))
        self.assertFalse(rp.can_fetch("https://www.site.local/elsewhere", "*"))

        content = "user-agent: FooBot\n" "disallow: /x/page.html\n" "allow: /x/\n"
        rp = Protego.parse(content=content)
        self.assertFalse(rp.can_fetch("http://foo.bar/x/page.html", "FooBot"))

        content = "user-agent: FooBot\n" "allow: /x/page.html\n" "disallow: /x/\n"
        rp = Protego.parse(content=content)
        self.assertTrue(rp.can_fetch("http://foo.bar/x/page.html", "FooBot"))
        self.assertFalse(rp.can_fetch("http://foo.bar/x/", "FooBot"))

        # In case of equivalent disallow and allow patterns for the same
        # user-agent, allow is used.
        content = "user-agent: FooBot\n" "disallow: \n" "allow: \n"
        rp = Protego.parse(content=content)
        self.assertTrue(rp.can_fetch("http://foo.bar/x/page.html", "FooBot"))

        content = "user-agent: FooBot\n" "disallow: /\n" "allow: /\n"
        rp = Protego.parse(content=content)
        self.assertTrue(rp.can_fetch("http://foo.bar/x/page.html", "FooBot"))

        content = "user-agent: FooBot\n" "disallow: /x\n" "allow: /x/\n"
        rp = Protego.parse(content=content)
        self.assertTrue(rp.can_fetch("http://foo.bar/x/", "FooBot"))
        self.assertFalse(rp.can_fetch("http://foo.bar/x", "FooBot"))

        content = (
            "user-agent: FooBot\n" "disallow: /x/page.html\n" "allow: /x/page.html\n"
        )
        rp = Protego.parse(content=content)
        self.assertTrue(rp.can_fetch("http://foo.bar/x/page.html", "FooBot"))

        content = "user-agent: FooBot\n" "allow: /page\n" "disallow: /*.html\n"
        rp = Protego.parse(content=content)
        self.assertTrue(rp.can_fetch("http://foo.bar/page", "FooBot"))
        self.assertFalse(rp.can_fetch("http://foo.bar/page.html", "FooBot"))

        content = "user-agent: FooBot\n" "allow: /x/page.\n" "disallow: /*.html\n"
        rp = Protego.parse(content=content)
        # Longest match wins.
        self.assertTrue(rp.can_fetch("http://foo.bar/x/page.html", "FooBot"))
        self.assertFalse(rp.can_fetch("http://foo.bar/x/y.html", "FooBot"))

        content = (
            "User-agent: *\n" "Disallow: /x/\n" "User-agent: FooBot\n" "Disallow: /y/\n"
        )
        rp = Protego.parse(content=content)
        # Most specific group for FooBot allows implicitly /x/page.
        self.assertTrue(rp.can_fetch("http://foo.bar/x/page", "FooBot"))
        self.assertFalse(rp.can_fetch("http://foo.bar/y/page", "FooBot"))

        content = "user-agent: FooBot\n" "allow: /p\n" "disallow: /\n"
        rp = Protego.parse(content=content)
        self.assertTrue(rp.can_fetch("http://example.com/page", "FooBot"))

        content = "user-agent: FooBot\n" "allow: /folder\n" "disallow: /folder\n"
        rp = Protego.parse(content=content)
        self.assertTrue(rp.can_fetch("http://example.com/folder/page", "FooBot"))

        content = "user-agent: FooBot\n" "disallow: /folder\n" "allow: /folder\n"
        rp = Protego.parse(content=content)
        self.assertTrue(rp.can_fetch("http://example.com/folder/page", "FooBot"))

        content = "user-agent: FooBot\n" "allow: /page\n" "disallow: /*.htm\n"
        rp = Protego.parse(content=content)
        self.assertFalse(rp.can_fetch("http://example.com/page.htm", "FooBot"))

        content = "user-agent: FooBot\n" "allow: /$\n" "disallow: /\n"
        rp = Protego.parse(content=content)
        self.assertTrue(rp.can_fetch("http://example.com/", "FooBot"))
        self.assertFalse(rp.can_fetch("http://example.com/page.html", "FooBot"))

    def test_escaped_url(self):
        content = "User-agent: * \n" "Disallow: / \n" "Allow: /a%3cd.html"
        rp = Protego.parse(content=content)
        self.assertTrue(rp.can_fetch("https://www.site.local/a<d.html", "*"))
        self.assertTrue(rp.can_fetch("https://www.site.local/a%3cd.html", "*"))

        content = "User-agent: * \n" "Disallow: / \n" "Allow: /a%3c*"
        rp = Protego.parse(content=content)
        self.assertTrue(rp.can_fetch("https://www.site.local/a<d.html", "*"))
        self.assertTrue(rp.can_fetch("https://www.site.local/a%3cd.html", "*"))

    def test_unescaped_url(self):
        content = "User-agent: * \n" "Disallow: / \n" "Allow: /a<d.html"
        rp = Protego.parse(content=content)
        self.assertTrue(rp.can_fetch("https://www.site.local/a<d.html", "*"))
        self.assertTrue(rp.can_fetch("https://www.site.local/a%3cd.html", "*"))

        content = "User-agent: * \n" "Disallow: / \n" "Allow: /a<*"
        rp = Protego.parse(content=content)
        self.assertTrue(rp.can_fetch("https://www.site.local/a<d.html", "*"))
        self.assertTrue(rp.can_fetch("https://www.site.local/a%3cd.html", "*"))

    def test_url_parts(self):
        content = "User-agent: * \n" "Disallow: /path;params?query \n"
        rp = Protego.parse(content=content)
        self.assertFalse(
            rp.can_fetch(
                "http://userinfo@exmaple.com:10/path;params?query#fragment", "*"
            )
        )

        content = "User-agent: * \n" "Disallow: /? \n"
        rp = Protego.parse(content=content)
        self.assertFalse(rp.can_fetch("/?query", "*"))
        self.assertTrue(rp.can_fetch("/", "*"))

        content = "User-agent: * \n" "Disallow: /; \n"
        rp = Protego.parse(content=content)
        self.assertFalse(rp.can_fetch("/;params", "*"))
        self.assertTrue(rp.can_fetch("/", "*"))

    def test_sitemaps(self):
        content = (
            "User-agent: * \n"
            "Disallow: /disallowed \n"
            "Allow: /allowed \n"
            "Sitemap: https://site.local/sitemap.xml \n"
            "Allow: /another_allowed \n"
            "User-agent: testbot \n"
            "Sitemap: https://site.local/sitemap2.xml"
        )
        rp = Protego.parse(content=content)
        sitemaps = list(rp.sitemaps)
        self.assertTrue(len(sitemaps) == 2)
        self.assertTrue("https://site.local/sitemap.xml" in sitemaps)
        self.assertTrue("https://site.local/sitemap2.xml" in sitemaps)

    def test_no_sitemaps(self):
        content = (
            "User-agent: * \n"
            "Disallow: /disallowed \n"
            "Allow: /allowed \n"
            "Crawl-delay: 10"
        )
        rp = Protego.parse(content=content)
        self.assertTrue(not list(rp.sitemaps))

    def test_no_preferred_host(self):
        content = (
            "User-agent: * \n"
            "Disallow: /disallowed \n"
            "Allow: /allowed \n"
            "Crawl-delay: 10"
        )
        rp = Protego.parse(content=content)
        self.assertTrue(rp.preferred_host is None)

    def test_crawl_delay(self):
        content = (
            "User-agent: * \n"
            "Disallow: /disallowed \n"
            "Allow: /allowed \n"
            "Crawl-delay: 10 \n"
            "User-agent: testbot\n"
            "Crawl-delay: 15 \n"
        )
        rp = Protego.parse(content=content)
        self.assertTrue(rp.crawl_delay("*") == 10.0)
        self.assertTrue(rp.crawl_delay("testbot") == 15.0)

    def test_malformed_crawl_delay(self):
        content = (
            "User-agent: * \n"
            "Disallow: /disallowed \n"
            "Allow: /allowed \n"
            "Crawl-delay: random_word"
        )
        rp = Protego.parse(content=content)
        self.assertTrue(rp.crawl_delay("*") is None)

    def test_no_crawl_delay(self):
        content = "User-agent: * \n" "Disallow: /disallowed \n" "Allow: /allowed"
        rp = Protego.parse(content=content)
        self.assertTrue(rp.crawl_delay("*") is None)

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

        req_rate = rp.request_rate("one")
        self.assertTrue(req_rate.requests == 1)
        self.assertTrue(req_rate.seconds == 10)
        self.assertTrue(req_rate.start_time is None)
        self.assertTrue(req_rate.end_time is None)

        req_rate = rp.request_rate("two")
        self.assertTrue(req_rate.requests == 100)
        self.assertTrue(req_rate.seconds == 900)
        self.assertTrue(req_rate.start_time is None)
        self.assertTrue(req_rate.end_time is None)

        req_rate = rp.request_rate("three")
        self.assertTrue(req_rate.requests == 400)
        self.assertTrue(req_rate.seconds == 3600)
        self.assertTrue(req_rate.start_time is None)
        self.assertTrue(req_rate.end_time is None)

        req_rate = rp.request_rate("four")
        self.assertTrue(req_rate.requests == 9000)
        self.assertTrue(req_rate.seconds == 86400)
        self.assertTrue(req_rate.start_time is None)
        self.assertTrue(req_rate.end_time is None)

        req_rate = rp.request_rate("five")
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
        self.assertTrue(rp.request_rate("two") is None)

    def test_empty_response(self):
        """empty response should equal 'allow all'"""
        rp = Protego.parse(content="")
        self.assertTrue(rp.can_fetch("https://site.local/", "*"))
        self.assertTrue(rp.can_fetch("https://site.local/", "chrome"))
        self.assertTrue(rp.can_fetch("https://site.local/index.html", "*"))
        self.assertTrue(rp.can_fetch("https://site.local/disallowed", "*"))

    def test_allowed_wildcards(self):
        content = """User-agent: first
                     Disallow: /disallowed/*/end$
                     Disallow: /protego*work

                     User-agent: second
                     Allow: /*allowed
                     Disallow: /
                """
        rp = Protego.parse(content=content)

        self.assertTrue(rp.can_fetch("https://www.site.local/disallowed", "first"))
        self.assertFalse(
            rp.can_fetch("https://www.site.local/disallowed/xyz/end", "first")
        )
        self.assertFalse(
            rp.can_fetch("https://www.site.local/disallowed/abc/end", "first")
        )
        self.assertTrue(
            rp.can_fetch("https://www.site.local/disallowed/xyz/endinglater", "first")
        )
        self.assertFalse(rp.can_fetch("https://www.site.local/protegoworks", "first"))
        self.assertFalse(rp.can_fetch("https://www.site.local/protego_works", "first"))
        self.assertFalse(rp.can_fetch("https://www.site.local/protego/works", "first"))
        self.assertFalse(
            rp.can_fetch("https://www.site.local/protego_does_work", "first")
        )
        self.assertTrue(
            rp.can_fetch("https://www.site.local/rotego_does_work", "first")
        )
        self.assertTrue(
            rp.can_fetch("https://www.site.local/protego_does_wor", "first")
        )
        self.assertTrue(rp.can_fetch("https://www.site.local/allowed", "second"))
        self.assertTrue(
            rp.can_fetch("https://www.site.local/is_still_allowed", "second")
        )
        self.assertTrue(rp.can_fetch("https://www.site.local/is_allowed_too", "second"))

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

        self.assertTrue(rp.can_fetch("/fo.html", "Rule1TestBot"))
        self.assertFalse(rp.can_fetch("/foo.html", "Rule1TestBot"))
        self.assertFalse(rp.can_fetch("/food", "Rule1TestBot"))
        self.assertFalse(rp.can_fetch("/foo/bar.html", "Rule1TestBot"))

        self.assertTrue(rp.can_fetch("/fo.html", "Rule2TestBot"))
        self.assertFalse(rp.can_fetch("/foo/bar.html", "Rule2TestBot"))
        self.assertFalse(rp.can_fetch("/food/bar.html", "Rule2TestBot"))
        self.assertFalse(rp.can_fetch("/foo/a/b/c/x/y/z/bar.html", "Rule2TestBot"))
        self.assertTrue(rp.can_fetch("/food/xyz.html", "Rule2TestBot"))

        self.assertFalse(rp.can_fetch("/foo.htm", "Rule3TestBot"))
        self.assertFalse(rp.can_fetch("/foo.html", "Rule3TestBot"))
        self.assertTrue(rp.can_fetch("/foo", "Rule3TestBot"))
        self.assertFalse(rp.can_fetch("/foom", "Rule3TestBot"))
        self.assertFalse(rp.can_fetch("/moo", "Rule3TestBot"))
        self.assertFalse(rp.can_fetch("/foo/bar.html", "Rule3TestBot"))
        self.assertTrue(rp.can_fetch("/foo/bar.txt", "Rule3TestBot"))

        self.assertFalse(rp.can_fetch("/fo.html", "Rule4TestBot"))
        self.assertFalse(rp.can_fetch("/foo.html", "Rule4TestBot"))
        self.assertFalse(rp.can_fetch("/foo", "Rule4TestBot"))
        self.assertTrue(rp.can_fetch("/foo/bar.html", "Rule4TestBot"))
        self.assertFalse(rp.can_fetch("/foo/bar.txt", "Rule4TestBot"))

        self.assertFalse(rp.can_fetch("/foo/bar.html", "Rule5TestBot"))
        self.assertFalse(rp.can_fetch("/food/rebar.html", "Rule5TestBot"))
        self.assertTrue(rp.can_fetch("/food/rebarf.html", "Rule5TestBot"))
        self.assertFalse(rp.can_fetch("/foo/a/b/c/rebar.html", "Rule5TestBot"))
        self.assertFalse(rp.can_fetch("/foo/a/b/c/bar.html", "Rule5TestBot"))

        self.assertTrue(rp.can_fetch("/foo", "Rule6TestBot"))
        self.assertFalse(rp.can_fetch("/foo/", "Rule6TestBot"))
        self.assertFalse(rp.can_fetch("/foo/bar.html", "Rule6TestBot"))
        self.assertFalse(rp.can_fetch("/fooey", "Rule6TestBot"))

        self.assertTrue(rp.can_fetch("xyz/foo.js", "Rule7TestBot"))
        self.assertTrue(rp.can_fetch("/inlife/daily/fashion-20160727/", "Rule7TestBot"))

        content = (
            "User-agent: FooBot\n" "Disallow: /foo/bar/quz\n" "Allow: /foo/*/qux\n"
        )
        rp = Protego.parse(content=content)
        self.assertFalse(rp.can_fetch("http://foo.bar/foo/bar/quz", "FooBot"))
        self.assertTrue(rp.can_fetch("http://foo.bar/foo/quz", "FooBot"))
        self.assertTrue(rp.can_fetch("http://foo.bar/foo//quz", "FooBot"))
        self.assertTrue(rp.can_fetch("http://foo.bar/foo/bax/quz", "FooBot"))

        content = "User-agent: FooBot\n" "Disallow: /foo/bar$\n" "Allow: /foo/bar/qux\n"
        rp = Protego.parse(content=content)
        self.assertFalse(rp.can_fetch("http://foo.bar/foo/bar", "FooBot"))
        self.assertTrue(rp.can_fetch("http://foo.bar/foo/bar/qux", "FooBot"))
        self.assertTrue(rp.can_fetch("http://foo.bar/foo/bar/", "FooBot"))
        self.assertTrue(rp.can_fetch("http://foo.bar/foo/bar/baz", "FooBot"))

    def test_unicode_url_and_useragent(self):
        content = """
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
        self.assertTrue(rp.can_fetch("https://site.local/", "*"))
        self.assertFalse(rp.can_fetch("https://site.local/admin/", "*"))
        self.assertFalse(rp.can_fetch("https://site.local/static/", "*"))
        self.assertTrue(rp.can_fetch("https://site.local/admin/", "UnicödeBöt"))
        self.assertFalse(
            rp.can_fetch("https://site.local/wiki/K%C3%A4ytt%C3%A4j%C3%A4:", "*")
        )
        self.assertFalse(rp.can_fetch("https://site.local/wiki/Käyttäjä:", "*"))
        self.assertFalse(
            rp.can_fetch(
                "https://site.local/wiki/Keskustelu_k%C3%A4ytt%C3%A4j%C3%A4st%C3%A4:",
                "*",
            )
        )
        self.assertFalse(
            rp.can_fetch("https://site.local/wiki/Keskustelu_käyttäjästä:", "*")
        )
        self.assertTrue(rp.can_fetch("https://site.local/some/randome/page.html", "*"))
        self.assertFalse(
            rp.can_fetch("https://site.local/some/randome/page.html", "UnicödeBöt")
        )

        content = """
        # robots.txt for http://www.example.com/

        User-Agent: Jävla-Foobot
        Disallow: /

        User-Agent: \u041b\u044c\u0432\u0456\u0432-bot
        Disallow: /totalitarianism/

        """
        rp = Protego.parse(content=content)

        self.assertTrue(rp.can_fetch("/foo/bar.html", "jävla-fanbot"))
        self.assertFalse(rp.can_fetch("/foo/bar.html", "jävla-foobot"))
        self.assertTrue(rp.can_fetch("/", "foobot"))

        self.assertTrue(rp.can_fetch("/", "Mozilla/5.0 (compatible; Львів-bot/1.1)"))
        self.assertFalse(
            rp.can_fetch(
                "/totalitarianism/foo.htm", "Mozilla/5.0 (compatible; Львів-bot/1.1)"
            )
        )

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
        self.assertTrue(rp.can_fetch("https://site.local/withoutUA", "mybot"))
        self.assertTrue(rp.can_fetch("https://site.local/withoutUA", "testbot"))
        self.assertTrue(rp.can_fetch("https://site.local/withoutUA", "*"))
        self.assertTrue(rp.can_fetch("https://site.local/withUA", "mybot"))
        self.assertFalse(rp.can_fetch("https://site.local/withUA", "testbot"))
        self.assertTrue(rp.crawl_delay("testbot") is None)
        self.assertTrue(rp.crawl_delay("*") is None)

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
        self.assertFalse(rp.can_fetch("https://site.local/default-UA", "mybot"))
        self.assertTrue(rp.can_fetch("https://site.local/default-UA", "testbot"))
        self.assertTrue(rp.can_fetch("https://site.local/default-UA", "robot"))

    def test_user_agent_case_insensitivity(self):
        content = """
        User-Agent: testbot
        Disallow: /testbot

        User-Agent: *
        Disallow: /default-UA
        """
        rp = Protego.parse(content=content)
        self.assertFalse(rp.can_fetch("https://site.local/testbot", "TESTbot"))
        self.assertTrue(rp.can_fetch("https://site.local/default-UA", "TESTbot"))
        self.assertFalse(rp.can_fetch("https://site.local/testbot", "testbot"))
        self.assertTrue(rp.can_fetch("https://site.local/default-UA", "testbot"))
        self.assertFalse(rp.can_fetch("https://site.local/testbot", "tEStbOt"))
        self.assertTrue(rp.can_fetch("https://site.local/default-UA", "tEStbOt"))

    def test_user_agent_grouping(self):
        content = """
        User-Agent: one
        User-Agent: two
        Disallow: /success
        User-Agent: *
        Disallow: /failure
        """
        rp = Protego.parse(content=content)
        self.assertFalse(rp.can_fetch("https://site.local/success", "one"))
        self.assertFalse(rp.can_fetch("https://site.local/success", "two"))
        self.assertTrue(rp.can_fetch("https://site.local/failure", "one"))
        self.assertTrue(rp.can_fetch("https://site.local/failure", "two"))

        content = (
            "allow: /foo/bar/\n"
            "\n"
            "user-agent: FooBot\n"
            "disallow: /\n"
            "allow: /x/\n"
            "user-agent: BarBot\n"
            "disallow: /\n"
            "allow: /y/\n"
            "\n"
            "\n"
            "allow: /w/\n"
            "user-agent: BazBot\n"
            "\n"
            "user-agent: FooBot\n"
            "allow: /z/\n"
            "disallow: /\n"
        )
        url_w = "http://foo.bar/w/a"
        url_x = "http://foo.bar/x/b"
        url_y = "http://foo.bar/y/c"
        url_z = "http://foo.bar/z/d"
        url_foo = "http://foo.bar/foo/bar/"
        rp = Protego.parse(content=content)
        self.assertTrue(rp.can_fetch(url_x, "FooBot"))
        self.assertTrue(rp.can_fetch(url_z, "FooBot"))
        self.assertFalse(rp.can_fetch(url_y, "FooBot"))
        self.assertTrue(rp.can_fetch(url_y, "BarBot"))
        self.assertTrue(rp.can_fetch(url_w, "BarBot"))
        self.assertFalse(rp.can_fetch(url_z, "BarBot"))
        self.assertTrue(rp.can_fetch(url_z, "BazBot"))

        self.assertFalse(rp.can_fetch(url_foo, "FooBot"))
        self.assertFalse(rp.can_fetch(url_foo, "BarBot"))
        self.assertFalse(rp.can_fetch(url_foo, "BazBot"))

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
        self.assertFalse(rp.can_fetch("https://site.local/one-two-bot", "one"))
        self.assertFalse(rp.can_fetch("https://site.local/one-two-bot", "two"))
        self.assertTrue(rp.can_fetch("https://site.local/commented", "one"))
        self.assertTrue(rp.can_fetch("https://site.local/commented", "two"))
        self.assertTrue(rp.can_fetch("https://site.local/default-ua", "one"))
        self.assertTrue(rp.can_fetch("https://site.local/default-ua", "two"))

        content = (
            "User-agent: FooBot\n"
            "# Disallow: /\n"
            "Disallow: /foo/quz#qux\n"
            "Allow: /\n"
        )
        rp = Protego.parse(content=content)
        self.assertTrue(rp.can_fetch("http://foo.bar/foo/bar", "FooBot"))
        self.assertFalse(rp.can_fetch("http://foo.bar/foo/quz", "FooBot"))

    def test_skip_unknown_directives(self):
        content = """
        User-Agent: one
        Disallow: /bot-one
        Harry: Potter
        User-Agent: two
        Disallow: /bot-two
        """
        rp = Protego.parse(content=content)
        self.assertFalse(rp.can_fetch("https://site.local/bot-one", "one"))
        self.assertTrue(rp.can_fetch("https://site.local/bot-two", "one"))
        self.assertFalse(rp.can_fetch("https://site.local/bot-two", "two"))
        self.assertTrue(rp.can_fetch("https://site.local/bot-one", "two"))

    def test_skip_malformed_line(self):
        content = """
        User-Agent: one
        Disallow: /bot-one
        Harry Potter
        User-Agent: two
        Disallow: /bot-two
        """
        rp = Protego.parse(content=content)
        self.assertFalse(rp.can_fetch("https://site.local/bot-one", "one"))
        self.assertTrue(rp.can_fetch("https://site.local/bot-two", "one"))
        self.assertFalse(rp.can_fetch("https://site.local/bot-two", "two"))
        self.assertTrue(rp.can_fetch("https://site.local/bot-one", "two"))

    def test_empty_disallow_allow_directives(self):
        """Directives without path should be ignored."""
        content = """
        User-Agent: one
        Disallow:

        User-Agent: two
        Allow:
        """
        rp = Protego.parse(content=content)
        self.assertTrue(rp.can_fetch("https://site.local/path1", "one"))
        self.assertTrue(rp.can_fetch("https://site.local/path2", "one"))
        self.assertTrue(rp.can_fetch("https://site.local/path1", "two"))
        self.assertTrue(rp.can_fetch("https://site.local/path2", "two"))

    def test_empty_record_group(self):
        content = """
        User-Agent: harrybot
        Disallow: /
        User-Agent: testbot
        """
        rp = Protego.parse(content=content)
        self.assertTrue(rp.can_fetch("https://site.local/path1", "testbot"))
        self.assertTrue(rp.can_fetch("https://site.local/path2", "testbot"))

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
        self.assertTrue(rp.can_fetch("/", user_agent))
        self.assertFalse(rp.can_fetch("/foo.html", user_agent))
        self.assertTrue(rp.can_fetch("/foo.htm", user_agent))
        self.assertTrue(rp.can_fetch("/foo.shtml", user_agent))
        self.assertFalse(rp.can_fetch("/foo.htmlx", user_agent))
        self.assertTrue(rp.can_fetch("/cyberworld/index.html", user_agent))
        self.assertFalse(rp.can_fetch("/tmp/foo.html", user_agent))
        # Since it is the caller's responsibility to make sure the host name
        # matches, the parser disallows foo.html regardless of what I pass for
        # host name and protocol.
        self.assertFalse(rp.can_fetch("http://example.com/foo.html", user_agent))
        self.assertFalse(rp.can_fetch("http://www.example.com/foo.html", user_agent))
        self.assertFalse(rp.can_fetch("http://www.example.org/foo.html", user_agent))
        self.assertFalse(rp.can_fetch("https://www.example.org/foo.html", user_agent))
        self.assertFalse(rp.can_fetch("ftp://example.net/foo.html", user_agent))

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
        self.assertTrue(rp.can_fetch("/tmp.html", "1bot"))
        self.assertTrue(rp.can_fetch("/tmp", "1bot"))
        self.assertTrue(rp.can_fetch("/tmp/a.html", "1bot"))
        self.assertFalse(rp.can_fetch("/tmp", "2bot"))
        self.assertTrue(rp.can_fetch("/tmp/", "2bot"))
        self.assertTrue(rp.can_fetch("/tmp/a.html", "2bot"))
        self.assertTrue(rp.can_fetch("/a%3cd.html", "3bot"))
        self.assertTrue(rp.can_fetch("/a%3Cd.html", "3bot"))
        self.assertTrue(rp.can_fetch("/a%3cd.html", "4bot"))
        self.assertTrue(rp.can_fetch("/a%3Cd.html", "4bot"))
        self.assertTrue(rp.can_fetch("/a%2fb.html", "5bot"))
        self.assertFalse(rp.can_fetch("/a/b.html", "5bot"))
        self.assertFalse(rp.can_fetch("/a%2fb.html", "6bot"))
        self.assertTrue(rp.can_fetch("/a/b.html", "6bot"))
        self.assertTrue(rp.can_fetch("/~joe/index.html", "7bot"))
        self.assertTrue(rp.can_fetch("/%7Ejoe/index.html", "8bot"))

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
        self.assertFalse(rp.can_fetch("http://www.example.org/", "unhipbot"))
        self.assertTrue(rp.can_fetch("http://www.example.org/", "webcrawler"))
        self.assertTrue(rp.can_fetch("http://www.example.org/", "excite"))
        self.assertFalse(rp.can_fetch("http://www.example.org/", "OtherBot"))
        self.assertFalse(rp.can_fetch("http://www.example.org/index.html", "unhipbot"))
        self.assertTrue(rp.can_fetch("http://www.example.org/index.html", "webcrawler"))
        self.assertTrue(rp.can_fetch("http://www.example.org/index.html", "excite"))
        self.assertFalse(rp.can_fetch("http://www.example.org/index.html", "OtherBot"))
        self.assertFalse(rp.can_fetch("http://www.example.org/server.html", "unhipbot"))
        self.assertTrue(
            rp.can_fetch("http://www.example.org/server.html", "webcrawler")
        )
        self.assertTrue(rp.can_fetch("http://www.example.org/server.html", "excite"))
        self.assertTrue(rp.can_fetch("http://www.example.org/server.html", "OtherBot"))
        self.assertFalse(
            rp.can_fetch("http://www.example.org/services/fast.html", "unhipbot")
        )
        self.assertTrue(
            rp.can_fetch("http://www.example.org/services/fast.html", "webcrawler")
        )
        self.assertTrue(
            rp.can_fetch("http://www.example.org/services/fast.html", "excite")
        )
        self.assertTrue(
            rp.can_fetch("http://www.example.org/services/fast.html", "OtherBot")
        )
        self.assertFalse(
            rp.can_fetch("http://www.example.org/services/slow.html", "unhipbot")
        )
        self.assertTrue(
            rp.can_fetch("http://www.example.org/services/slow.html", "webcrawler")
        )
        self.assertTrue(
            rp.can_fetch("http://www.example.org/services/slow.html", "excite")
        )
        self.assertTrue(
            rp.can_fetch("http://www.example.org/services/slow.html", "OtherBot")
        )
        self.assertFalse(rp.can_fetch("http://www.example.org/orgo.gif", "unhipbot"))
        self.assertTrue(rp.can_fetch("http://www.example.org/orgo.gif", "webcrawler"))
        self.assertTrue(rp.can_fetch("http://www.example.org/orgo.gif", "excite"))
        self.assertFalse(rp.can_fetch("http://www.example.org/orgo.gif", "OtherBot"))
        self.assertFalse(
            rp.can_fetch("http://www.example.org/org/about.html", "unhipbot")
        )
        self.assertTrue(
            rp.can_fetch("http://www.example.org/org/about.html", "webcrawler")
        )
        self.assertTrue(rp.can_fetch("http://www.example.org/org/about.html", "excite"))
        self.assertTrue(
            rp.can_fetch("http://www.example.org/org/about.html", "OtherBot")
        )
        self.assertFalse(
            rp.can_fetch("http://www.example.org/org/plans.html", "unhipbot")
        )
        self.assertTrue(
            rp.can_fetch("http://www.example.org/org/plans.html", "webcrawler")
        )
        self.assertTrue(rp.can_fetch("http://www.example.org/org/plans.html", "excite"))
        self.assertFalse(
            rp.can_fetch("http://www.example.org/org/plans.html", "OtherBot")
        )
        self.assertFalse(
            rp.can_fetch("http://www.example.org/%7Ejim/jim.html", "unhipbot")
        )
        self.assertTrue(
            rp.can_fetch("http://www.example.org/%7Ejim/jim.html", "webcrawler")
        )
        self.assertTrue(
            rp.can_fetch("http://www.example.org/%7Ejim/jim.html", "excite")
        )
        self.assertFalse(
            rp.can_fetch("http://www.example.org/%7Ejim/jim.html", "OtherBot")
        )
        self.assertFalse(
            rp.can_fetch("http://www.example.org/%7Emak/mak.html", "unhipbot")
        )
        self.assertTrue(
            rp.can_fetch("http://www.example.org/%7Emak/mak.html", "webcrawler")
        )
        self.assertTrue(
            rp.can_fetch("http://www.example.org/%7Emak/mak.html", "excite")
        )
        self.assertTrue(
            rp.can_fetch("http://www.example.org/%7Emak/mak.html", "OtherBot")
        )

    def test_implicit_allow(self):
        content = """
        # robots.txt for http://www.example.com/

        User-agent: *
        Disallow:    /

        User-agent: foobot
        Disallow:
        """
        rp = Protego.parse(content=content)
        self.assertTrue(rp.can_fetch("/", "foobot"))
        self.assertTrue(rp.can_fetch("/bar.html", "foobot"))
        self.assertFalse(rp.can_fetch("/", "SomeOtherBot"))
        self.assertFalse(rp.can_fetch("/blahblahblah", "SomeOtherBot"))

    def test_grouping_unknown_keys(self):
        """
        When we encounter unknown keys, we should disregard any grouping that may have
        happened between user agent rules.
        This is an example from the wild. `Invalid_directive` not being a valid directive,
        we'll not consider the '*' and 'ia_archiver' rules together.
        """
        content = """
        User-agent: abc
        Disallow: /content/2/
        User-agent: *
        Invalid_directive: /gb.html
        Invalid_directive: /content/2/
        User-agent: ia_archiver
        Disallow: /
        """
        rp = Protego.parse(content=content)
        self.assertTrue(rp.can_fetch("/foo", "agent"))
        self.assertTrue(rp.can_fetch("/foobar", "agent"))
        self.assertTrue(rp.can_fetch("/content/2", "agent"))
        self.assertFalse(rp.can_fetch("/bar", "ia_archiver"))
        self.assertFalse(rp.can_fetch("/foo", "ia_archiver"))
        self.assertFalse(rp.can_fetch("/foobar", "ia_archiver"))
        self.assertFalse(rp.can_fetch("/content/2", "ia_archiver"))

    def test_generosity(self):
        robotstxt_incorrect = """
        Foo: Foobot
        Bar: /"""
        rp = Protego.parse(content=robotstxt_incorrect)
        self.assertTrue(rp.can_fetch("http://foo.bar/x/y", "FooBot"))

        robotstxt_incorrect_accepted = """
        user-agent foobot
        disallow /
        user agent harry potter
        disallow /horcrux
        request rate 1/10s 1820-1940
        """
        rp = Protego.parse(content=robotstxt_incorrect_accepted)
        self.assertFalse(rp.can_fetch("http://foo.bar/x/y", "FooBot"))

        self.assertFalse(rp.can_fetch("http://foo.bar/horcrux", "harry potter"))
        self.assertTrue(rp.can_fetch("http://foo.bar/abc", "harry potter"))
        req_rate = rp.request_rate("harry potter")
        self.assertTrue(req_rate.requests == 1)
        self.assertTrue(req_rate.seconds == 10)
        self.assertTrue(req_rate.start_time.hour == 18)
        self.assertTrue(req_rate.start_time.minute == 20)
        self.assertTrue(req_rate.end_time.hour == 19)
        self.assertTrue(req_rate.end_time.minute == 40)

        wildcards_in_user_agent = """
        user-agent: foo*bot
        disallow: /myprofile
        """
        rp = Protego.parse(content=wildcards_in_user_agent)
        self.assertFalse(rp.can_fetch("http://foo.bar/myprofile", "foo*bot"))
        self.assertFalse(rp.can_fetch("http://foo.bar/myprofile", "foobot"))

    def test_directive_case_insensitivity(self):
        content = """
        USER-AGENT: onebot
        ALLOW: /x
        DISALLOW: /

        user-agent: twobot
        allow: /x
        disallow: /

        uSEr-aGEnT: threeBot
        AlLoW: /x
        DIsALlOw: /
        """
        url_allowed = "http://foo.bar/x/y"
        url_disallowed = "http://foo.bar/a/b"
        rp = Protego.parse(content=content)
        self.assertTrue(rp.can_fetch(url_allowed, "onebot"))
        self.assertFalse(rp.can_fetch(url_disallowed, "onebot"))
        self.assertTrue(rp.can_fetch(url_allowed, "twobot"))
        self.assertFalse(rp.can_fetch(url_disallowed, "onebot"))
        self.assertTrue(rp.can_fetch(url_allowed, "threebot"))
        self.assertFalse(rp.can_fetch(url_disallowed, "onebot"))

    def test_line_endings(self):
        dos_file = (
            "User-Agent: foo\r\n"
            "Allow: /some/path\r\n"
            "User-Agent: bar\r\n"
            "\r\n"
            "\r\n"
            "Disallow: /\r\n"
        )

        unix_file = (
            "User-Agent: foo\n"
            "Allow: /some/path\n"
            "User-Agent: bar\n"
            "\n"
            "\n"
            "Disallow: /\n"
        )

        mac_file = (
            "User-Agent: foo\r"
            "Allow: /some/path\r"
            "User-Agent: bar\r"
            "\r"
            "\r"
            "Disallow: /\r"
        )

        no_final_line_ending = (
            "User-Agent: foo\n"
            "Allow: /some/path\n"
            "User-Agent: bar\n"
            "\n"
            "\n"
            "Disallow: /"
        )

        mixed_file = (
            "User-Agent: foo\n"
            "Allow: /some/path\r\n"
            "User-Agent: bar\n"
            "\r\n"
            "\n"
            "Disallow: /"
        )

        test_url = "http://site.local/some/path/"
        for content in [
            dos_file,
            unix_file,
            mac_file,
            no_final_line_ending,
            mixed_file,
        ]:
            rp = Protego.parse(content=content)
            self.assertEqual(rp._total_line_seen, 6)
            self.assertEqual(rp._total_directive_seen, 4)
            self.assertTrue(rp.can_fetch(test_url, "foo"))
            self.assertFalse(rp.can_fetch(test_url, "bar"))

    def test_index_html_is_directory(self):
        content = "User-Agent: *\n" "Allow: /allowed-slash/index.html\n" "Disallow: /\n"
        rp = Protego.parse(content=content)
        self.assertTrue(rp.can_fetch("http://foo.com/allowed-slash/", "footbot"))
        self.assertTrue(
            rp.can_fetch("http://foo.com/allowed-slash/index.html", "footbot")
        )
        self.assertFalse(
            rp.can_fetch("http://foo.com/allowed-slash/index.htm", "footbot")
        )
        self.assertFalse(rp.can_fetch("http://foo.com/anyother-url", "footbot"))

    def test_percentage_encoding(self):
        content = (
            "User-agent: FooBot\n"
            "Disallow: /\n"
            "Allow: /foo/bar?qux=taz&baz=http://foo.bar?tar&par\n"
        )
        rp = Protego.parse(content=content)
        self.assertTrue(
            rp.can_fetch(
                "http://foo.bar/foo/bar?qux=taz&baz=http://foo.bar?tar&par", "FooBot"
            )
        )

        content = "User-agent: FooBot\n" "Disallow: /\n" "Allow: /foo/bar/ツ\n"
        rp = Protego.parse(content=content)
        self.assertTrue(rp.can_fetch("http://foo.bar/foo/bar/%E3%83%84", "FooBot"))
        self.assertTrue(rp.can_fetch("http://foo.bar/foo/bar/ツ", "FooBot"))

        content = "User-agent: FooBot\n" "Disallow: /\n" "Allow: /foo/bar/%E3%83%84\n"
        rp = Protego.parse(content=content)
        self.assertTrue(rp.can_fetch("http://foo.bar/foo/bar/%E3%83%84", "FooBot"))
        self.assertTrue(rp.can_fetch("http://foo.bar/foo/bar/ツ", "FooBot"))

        content = "User-agent: FooBot\n" "Disallow: /\n" "Allow: /foo/bar/%62%61%7A\n"
        rp = Protego.parse(content=content)
        self.assertTrue(rp.can_fetch("http://foo.bar/foo/bar/baz", "FooBot"))
        self.assertTrue(rp.can_fetch("http://foo.bar/foo/bar/%62%61%7A", "FooBot"))

    def test_url_case_sensitivity(self):
        content = "user-agent: FooBot\n" "disallow: /x/\n"
        rp = Protego.parse(content=content)
        self.assertFalse(rp.can_fetch("http://foo.bar/x/y", "FooBot"))

        content = "user-agent: FooBot\n" "disallow: /X/\n"
        rp = Protego.parse(content=content)
        self.assertTrue(rp.can_fetch("http://foo.bar/x/y", "FooBot"))

    def test_nonterminal_dollar(self):
        """Non terminal dollar sign should be treated as an odinary character."""
        content = (
            "user-agent: FooBot\n"
            "disallow: /x$/abc\n"
            "disallow: /y/abc$\n"
            "disallow: /x*x$/abc\n"
            "disallow: /y*y/abc$\n"
        )
        rp = Protego.parse(content=content)
        self.assertFalse(rp.can_fetch("http://foo.bar/x$/abcdef", "FooBot"))
        self.assertFalse(rp.can_fetch("http://foo.bar/x%24/abcdef", "FooBot"))
        self.assertTrue(rp.can_fetch("http://foo.bar/y/abcdef", "FooBot"))
        self.assertFalse(rp.can_fetch("http://foo.bar/y/abc", "FooBot"))
        self.assertFalse(rp.can_fetch("http://foo.bar/xabcx$/abcdef", "FooBot"))
        self.assertFalse(rp.can_fetch("http://foo.bar/xabcx%24/abcdef", "FooBot"))
        self.assertFalse(rp.can_fetch("http://foo.bar/yabcy/abc", "FooBot"))
        self.assertTrue(rp.can_fetch("http://foo.bar/yabcy/abcdef", "FooBot"))

    def test_escaped_special_symbols(self):
        """Percent encoded special symbols should be treated as ordinary characters."""
        content = (
            "user-agent: FooBot\n" "disallow: /x/abc%24\n" "disallow: /x%2Ax/abc\n"
        )
        rp = Protego.parse(content=content)
        self.assertFalse(rp.can_fetch("http://foo.bar/x/abc$abc", "FooBot"))
        self.assertFalse(rp.can_fetch("http://foo.bar/x/abc$", "FooBot"))
        self.assertTrue(rp.can_fetch("http://foo.bar/x/abc", "FooBot"))
        self.assertFalse(rp.can_fetch("http://foo.bar/x*x/abc", "FooBot"))
        self.assertFalse(rp.can_fetch("http://foo.bar/x*x/abcdef", "FooBot"))
        self.assertTrue(rp.can_fetch("http://foo.bar/xabcx/abc", "FooBot"))

    def test_special_symbols_dual_behaviour(self):
        """Special symbols such as * and $, should also be treated as an ordinary character"""
        content = "user-agent: FooBot\n" "disallow: /x/abc$\n" "disallow: /x*x/abc\n"
        rp = Protego.parse(content=content)
        self.assertFalse(rp.can_fetch("http://foo.bar/x*x/abc", "FooBot"))
        self.assertFalse(rp.can_fetch("http://foo.bar/x/abc$", "FooBot"))
        self.assertFalse(rp.can_fetch("http://foo.bar/x/abc%24", "FooBot"))

    def test_with_absolute_urls(self):
        content = "user-agent: *\n" "disallow: http://ms-web00.walkerplus.com/\n"

        rp = Protego.parse(content=content)
        self.assertTrue(rp.can_fetch("http://foo.bar/", "FooBot"))
        self.assertFalse(
            rp.can_fetch("http://foo.bar/http://ms-web00.walkerplus.com/", "FooBot")
        )

    def test_sitemaps_come_first(self):
        """Some websites have sitemaps before any robots directives"""
        content = (
            "Sitemap: https://www.foo.bar/sitmap.xml\n"
            "User-Agent: FootBot\n"
            "Disallow: /something"
        )
        rp = Protego.parse(content=content)
        self.assertEqual(list(rp.sitemaps), ["https://www.foo.bar/sitmap.xml"])

    def test_disallow_target_url_path_is_missing(self):
        content = "User-Agent: *\nDisallow: /\n"
        rp = Protego.parse(content)
        self.assertFalse(rp.can_fetch("http://example.com/", "FooBot"))
        self.assertFalse(rp.can_fetch("http://example.com", "FooBot"))

    def test_bytestrings(self):
        content = b"User-Agent: FootBot\nDisallow: /something"
        with self.assertRaises(ValueError) as context:
            Protego.parse(content=content)

        self.assertEqual("Protego.parse expects str, got bytes", str(context.exception))

    def test_visit_time(self):
        """Some website specified allow time for crawling in UTC"""
        content = "User-Agent: *\nVisit-time: 0200 0630\nUser-Agent: NoTime"
        rp = Protego.parse(content)
        visit_time = rp.visit_time("FooBoot")
        self.assertEqual(visit_time.start_time, time(2, 0))
        self.assertEqual(visit_time.end_time, time(6, 30))
        self.assertIsNone(rp.visit_time("NoTime"))

    def test_parse_time_period(self):
        rs = _RuleSet(None)
        start_time, end_time = rs._parse_time_period("0100-1000")
        self.assertEqual(start_time, time(1, 0))
        self.assertEqual(end_time, time(10, 0))

        start_time, end_time = rs._parse_time_period("0500 0600", separator=" ")
        self.assertEqual(start_time, time(5, 0))
        self.assertEqual(end_time, time(6, 0))

    def test_disallow_query_wildcard(self):
        content = "User-agent: * \nDisallow: /*s="
        rp = Protego.parse(content=content)
        self.assertTrue(rp.can_fetch("https://www.site.local/", "*"))
        self.assertTrue(rp.can_fetch("https://www.site.local/s/", "*"))
        self.assertFalse(rp.can_fetch("https://www.site.local/?s=asd", "*"))


@pytest.mark.parametrize(
    "allow,disallow,url,allowed",
    [
        ("*/p", "/", "http://example.com/page", True),
        ("/page", "*/*.htm", "https://example.com/page.htm", False),
    ],
)
def test_leading_asterisk(allow, disallow, url, allowed):
    content = f"User-Agent: *\n" f"allow: {allow}\n" f"disallow: {disallow}\n"
    rp = Protego.parse(content)
    assert rp.can_fetch(url, "*") == allowed
