from datetime import time

import pytest

from protego import Protego
from protego._utils import _parse_time_period


class TestProtego:
    def test_allowed(self):
        content = (
            "User-agent: * \nDisallow: /disallowed \nAllow: /allowed \nCrawl-delay: 10"
        )
        rp = Protego.parse(content=content)
        assert rp.can_fetch("https://www.site.local/allowed", "*")
        assert not rp.can_fetch("https://www.site.local/disallowed", "*")

        content = "User-agent: * \nDisallow: /d \nCrawl-delay: 10"
        rp = Protego.parse(content=content)
        assert rp.can_fetch("https://www.site.local/abc/d", "*")
        assert not rp.can_fetch("https://www.site.local/disallowed", "*")

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
        assert not rp.can_fetch("https://www.site.local/one", "*")
        assert not rp.can_fetch("https://www.site.local/two", "*")
        assert not rp.can_fetch("https://www.site.local/three", "*")
        assert not rp.can_fetch("https://www.site.local/four", "*")
        assert not rp.can_fetch("https://www.site.local/five", "*")
        assert not rp.can_fetch("https://www.site.local/six", "*")

    def test_length_based_precedence(self):
        content = "User-agent: * \nDisallow: / \nAllow: /page"
        rp = Protego.parse(content=content)
        assert rp.can_fetch("https://www.site.local/page", "*")
        assert not rp.can_fetch("https://www.site.local/elsewhere", "*")

        content = "user-agent: FooBot\ndisallow: /x/page.html\nallow: /x/\n"
        rp = Protego.parse(content=content)
        assert not rp.can_fetch("http://foo.bar/x/page.html", "FooBot")

        content = "user-agent: FooBot\nallow: /x/page.html\ndisallow: /x/\n"
        rp = Protego.parse(content=content)
        assert rp.can_fetch("http://foo.bar/x/page.html", "FooBot")
        assert not rp.can_fetch("http://foo.bar/x/", "FooBot")

        # In case of equivalent disallow and allow patterns for the same
        # user-agent, allow is used.
        content = "user-agent: FooBot\ndisallow: \nallow: \n"
        rp = Protego.parse(content=content)
        assert rp.can_fetch("http://foo.bar/x/page.html", "FooBot")

        content = "user-agent: FooBot\ndisallow: /\nallow: /\n"
        rp = Protego.parse(content=content)
        assert rp.can_fetch("http://foo.bar/x/page.html", "FooBot")

        content = "user-agent: FooBot\ndisallow: /x\nallow: /x/\n"
        rp = Protego.parse(content=content)
        assert rp.can_fetch("http://foo.bar/x/", "FooBot")
        assert not rp.can_fetch("http://foo.bar/x", "FooBot")

        content = "user-agent: FooBot\ndisallow: /x/page.html\nallow: /x/page.html\n"
        rp = Protego.parse(content=content)
        assert rp.can_fetch("http://foo.bar/x/page.html", "FooBot")

        content = "user-agent: FooBot\nallow: /page\ndisallow: /*.html\n"
        rp = Protego.parse(content=content)
        assert rp.can_fetch("http://foo.bar/page", "FooBot")
        assert not rp.can_fetch("http://foo.bar/page.html", "FooBot")

        content = "user-agent: FooBot\nallow: /x/page.\ndisallow: /*.html\n"
        rp = Protego.parse(content=content)
        # Longest match wins.
        assert rp.can_fetch("http://foo.bar/x/page.html", "FooBot")
        assert not rp.can_fetch("http://foo.bar/x/y.html", "FooBot")

        content = "User-agent: *\nDisallow: /x/\nUser-agent: FooBot\nDisallow: /y/\n"
        rp = Protego.parse(content=content)
        # Most specific group for FooBot allows implicitly /x/page.
        assert rp.can_fetch("http://foo.bar/x/page", "FooBot")
        assert not rp.can_fetch("http://foo.bar/y/page", "FooBot")

        content = "user-agent: FooBot\nallow: /p\ndisallow: /\n"
        rp = Protego.parse(content=content)
        assert rp.can_fetch("http://example.com/page", "FooBot")

        content = "user-agent: FooBot\nallow: /folder\ndisallow: /folder\n"
        rp = Protego.parse(content=content)
        assert rp.can_fetch("http://example.com/folder/page", "FooBot")

        content = "user-agent: FooBot\ndisallow: /folder\nallow: /folder\n"
        rp = Protego.parse(content=content)
        assert rp.can_fetch("http://example.com/folder/page", "FooBot")

        content = "user-agent: FooBot\nallow: /page\ndisallow: /*.htm\n"
        rp = Protego.parse(content=content)
        assert not rp.can_fetch("http://example.com/page.htm", "FooBot")

        content = "user-agent: FooBot\nallow: /$\ndisallow: /\n"
        rp = Protego.parse(content=content)
        assert rp.can_fetch("http://example.com/", "FooBot")
        assert not rp.can_fetch("http://example.com/page.html", "FooBot")

    def test_escaped_url(self):
        content = "User-agent: * \nDisallow: / \nAllow: /a%3cd.html"
        rp = Protego.parse(content=content)
        assert rp.can_fetch("https://www.site.local/a<d.html", "*")
        assert rp.can_fetch("https://www.site.local/a%3cd.html", "*")

        content = "User-agent: * \nDisallow: / \nAllow: /a%3c*"
        rp = Protego.parse(content=content)
        assert rp.can_fetch("https://www.site.local/a<d.html", "*")
        assert rp.can_fetch("https://www.site.local/a%3cd.html", "*")

    def test_unescaped_url(self):
        content = "User-agent: * \nDisallow: / \nAllow: /a<d.html"
        rp = Protego.parse(content=content)
        assert rp.can_fetch("https://www.site.local/a<d.html", "*")
        assert rp.can_fetch("https://www.site.local/a%3cd.html", "*")

        content = "User-agent: * \nDisallow: / \nAllow: /a<*"
        rp = Protego.parse(content=content)
        assert rp.can_fetch("https://www.site.local/a<d.html", "*")
        assert rp.can_fetch("https://www.site.local/a%3cd.html", "*")

    def test_url_parts(self):
        content = "User-agent: * \nDisallow: /path;params?query \n"
        rp = Protego.parse(content=content)
        assert not rp.can_fetch(
            "http://userinfo@exmaple.com:10/path;params?query#fragment", "*"
        )

        content = "User-agent: * \nDisallow: /? \n"
        rp = Protego.parse(content=content)
        assert not rp.can_fetch("/?query", "*")
        assert rp.can_fetch("/", "*")

        content = "User-agent: * \nDisallow: /; \n"
        rp = Protego.parse(content=content)
        assert not rp.can_fetch("/;params", "*")
        assert rp.can_fetch("/", "*")

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
        assert len(sitemaps) == 2
        assert "https://site.local/sitemap.xml" in sitemaps
        assert "https://site.local/sitemap2.xml" in sitemaps

    def test_no_sitemaps(self):
        content = (
            "User-agent: * \nDisallow: /disallowed \nAllow: /allowed \nCrawl-delay: 10"
        )
        rp = Protego.parse(content=content)
        assert not list(rp.sitemaps)

    def test_no_preferred_host(self):
        content = (
            "User-agent: * \nDisallow: /disallowed \nAllow: /allowed \nCrawl-delay: 10"
        )
        rp = Protego.parse(content=content)
        assert rp.preferred_host is None

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
        assert rp.crawl_delay("*") == 10.0
        assert rp.crawl_delay("testbot") == 15.0

    def test_malformed_crawl_delay(self):
        content = (
            "User-agent: * \n"
            "Disallow: /disallowed \n"
            "Allow: /allowed \n"
            "Crawl-delay: random_word"
        )
        rp = Protego.parse(content=content)
        assert rp.crawl_delay("*") is None

    def test_no_crawl_delay(self):
        content = "User-agent: * \nDisallow: /disallowed \nAllow: /allowed"
        rp = Protego.parse(content=content)
        assert rp.crawl_delay("*") is None

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
        assert req_rate is not None
        assert req_rate.requests == 1
        assert req_rate.seconds == 10
        assert req_rate.start_time is None
        assert req_rate.end_time is None

        req_rate = rp.request_rate("two")
        assert req_rate is not None
        assert req_rate.requests == 100
        assert req_rate.seconds == 900
        assert req_rate.start_time is None
        assert req_rate.end_time is None

        req_rate = rp.request_rate("three")
        assert req_rate is not None
        assert req_rate.requests == 400
        assert req_rate.seconds == 3600
        assert req_rate.start_time is None
        assert req_rate.end_time is None

        req_rate = rp.request_rate("four")
        assert req_rate is not None
        assert req_rate.requests == 9000
        assert req_rate.seconds == 86400
        assert req_rate.start_time is None
        assert req_rate.end_time is None

        req_rate = rp.request_rate("five")
        assert req_rate is not None
        assert req_rate.start_time is not None
        assert req_rate.end_time is not None
        assert req_rate.requests == 1
        assert req_rate.seconds == 10
        assert req_rate.start_time.hour == 18
        assert req_rate.start_time.minute == 20
        assert req_rate.end_time.hour == 19
        assert req_rate.end_time.minute == 40

    def test_no_request_rate(self):
        content = """
        User-agent: one
        Request-rate: 1/10s
        User-agent: two
        Disallow: /
        """
        rp = Protego.parse(content=content)
        assert rp.request_rate("two") is None

    def test_empty_response(self):
        """empty response should equal 'allow all'"""
        rp = Protego.parse(content="")
        assert rp.can_fetch("https://site.local/", "*")
        assert rp.can_fetch("https://site.local/", "chrome")
        assert rp.can_fetch("https://site.local/index.html", "*")
        assert rp.can_fetch("https://site.local/disallowed", "*")

    def test_allowed_wildcards(self):
        content = """User-agent: first
                     Disallow: /disallowed/*/end$
                     Disallow: /protego*work

                     User-agent: second
                     Allow: /*allowed
                     Disallow: /
                """
        rp = Protego.parse(content=content)

        assert rp.can_fetch("https://www.site.local/disallowed", "first")
        assert not rp.can_fetch("https://www.site.local/disallowed/xyz/end", "first")
        assert not rp.can_fetch("https://www.site.local/disallowed/abc/end", "first")
        assert rp.can_fetch(
            "https://www.site.local/disallowed/xyz/endinglater", "first"
        )
        assert not rp.can_fetch("https://www.site.local/protegoworks", "first")
        assert not rp.can_fetch("https://www.site.local/protego_works", "first")
        assert not rp.can_fetch("https://www.site.local/protego/works", "first")
        assert not rp.can_fetch("https://www.site.local/protego_does_work", "first")
        assert rp.can_fetch("https://www.site.local/rotego_does_work", "first")
        assert rp.can_fetch("https://www.site.local/protego_does_wor", "first")
        assert rp.can_fetch("https://www.site.local/allowed", "second")
        assert rp.can_fetch("https://www.site.local/is_still_allowed", "second")
        assert rp.can_fetch("https://www.site.local/is_allowed_too", "second")

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

        assert rp.can_fetch("/fo.html", "Rule1TestBot")
        assert not rp.can_fetch("/foo.html", "Rule1TestBot")
        assert not rp.can_fetch("/food", "Rule1TestBot")
        assert not rp.can_fetch("/foo/bar.html", "Rule1TestBot")

        assert rp.can_fetch("/fo.html", "Rule2TestBot")
        assert not rp.can_fetch("/foo/bar.html", "Rule2TestBot")
        assert not rp.can_fetch("/food/bar.html", "Rule2TestBot")
        assert not rp.can_fetch("/foo/a/b/c/x/y/z/bar.html", "Rule2TestBot")
        assert rp.can_fetch("/food/xyz.html", "Rule2TestBot")

        assert not rp.can_fetch("/foo.htm", "Rule3TestBot")
        assert not rp.can_fetch("/foo.html", "Rule3TestBot")
        assert rp.can_fetch("/foo", "Rule3TestBot")
        assert not rp.can_fetch("/foom", "Rule3TestBot")
        assert not rp.can_fetch("/moo", "Rule3TestBot")
        assert not rp.can_fetch("/foo/bar.html", "Rule3TestBot")
        assert rp.can_fetch("/foo/bar.txt", "Rule3TestBot")

        assert not rp.can_fetch("/fo.html", "Rule4TestBot")
        assert not rp.can_fetch("/foo.html", "Rule4TestBot")
        assert not rp.can_fetch("/foo", "Rule4TestBot")
        assert rp.can_fetch("/foo/bar.html", "Rule4TestBot")
        assert not rp.can_fetch("/foo/bar.txt", "Rule4TestBot")

        assert not rp.can_fetch("/foo/bar.html", "Rule5TestBot")
        assert not rp.can_fetch("/food/rebar.html", "Rule5TestBot")
        assert rp.can_fetch("/food/rebarf.html", "Rule5TestBot")
        assert not rp.can_fetch("/foo/a/b/c/rebar.html", "Rule5TestBot")
        assert not rp.can_fetch("/foo/a/b/c/bar.html", "Rule5TestBot")

        assert rp.can_fetch("/foo", "Rule6TestBot")
        assert not rp.can_fetch("/foo/", "Rule6TestBot")
        assert not rp.can_fetch("/foo/bar.html", "Rule6TestBot")
        assert not rp.can_fetch("/fooey", "Rule6TestBot")

        assert rp.can_fetch("xyz/foo.js", "Rule7TestBot")
        assert rp.can_fetch("/inlife/daily/fashion-20160727/", "Rule7TestBot")

        content = "User-agent: FooBot\nDisallow: /foo/bar/quz\nAllow: /foo/*/qux\n"
        rp = Protego.parse(content=content)
        assert not rp.can_fetch("http://foo.bar/foo/bar/quz", "FooBot")
        assert rp.can_fetch("http://foo.bar/foo/quz", "FooBot")
        assert rp.can_fetch("http://foo.bar/foo//quz", "FooBot")
        assert rp.can_fetch("http://foo.bar/foo/bax/quz", "FooBot")

        content = "User-agent: FooBot\nDisallow: /foo/bar$\nAllow: /foo/bar/qux\n"
        rp = Protego.parse(content=content)
        assert not rp.can_fetch("http://foo.bar/foo/bar", "FooBot")
        assert rp.can_fetch("http://foo.bar/foo/bar/qux", "FooBot")
        assert rp.can_fetch("http://foo.bar/foo/bar/", "FooBot")
        assert rp.can_fetch("http://foo.bar/foo/bar/baz", "FooBot")

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
        assert rp.can_fetch("https://site.local/", "*")
        assert not rp.can_fetch("https://site.local/admin/", "*")
        assert not rp.can_fetch("https://site.local/static/", "*")
        assert rp.can_fetch("https://site.local/admin/", "UnicödeBöt")
        assert not rp.can_fetch("https://site.local/wiki/K%C3%A4ytt%C3%A4j%C3%A4:", "*")
        assert not rp.can_fetch("https://site.local/wiki/Käyttäjä:", "*")
        assert not rp.can_fetch(
            "https://site.local/wiki/Keskustelu_k%C3%A4ytt%C3%A4j%C3%A4st%C3%A4:", "*"
        )
        assert not rp.can_fetch("https://site.local/wiki/Keskustelu_käyttäjästä:", "*")
        assert rp.can_fetch("https://site.local/some/randome/page.html", "*")
        assert not rp.can_fetch(
            "https://site.local/some/randome/page.html", "UnicödeBöt"
        )

        content = """
        # robots.txt for http://www.example.com/

        User-Agent: Jävla-Foobot
        Disallow: /

        User-Agent: \u041b\u044c\u0432\u0456\u0432-bot
        Disallow: /totalitarianism/

        """
        rp = Protego.parse(content=content)

        assert rp.can_fetch("/foo/bar.html", "jävla-fanbot")
        assert not rp.can_fetch("/foo/bar.html", "jävla-foobot")
        assert rp.can_fetch("/", "foobot")

        assert rp.can_fetch("/", "Mozilla/5.0 (compatible; Львів-bot/1.1)")
        assert not rp.can_fetch(
            "/totalitarianism/foo.htm", "Mozilla/5.0 (compatible; Львів-bot/1.1)"
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
        assert rp.can_fetch("https://site.local/withoutUA", "mybot")
        assert rp.can_fetch("https://site.local/withoutUA", "testbot")
        assert rp.can_fetch("https://site.local/withoutUA", "*")
        assert rp.can_fetch("https://site.local/withUA", "mybot")
        assert not rp.can_fetch("https://site.local/withUA", "testbot")
        assert rp.crawl_delay("testbot") is None
        assert rp.crawl_delay("*") is None

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
        assert not rp.can_fetch("https://site.local/default-UA", "mybot")
        assert rp.can_fetch("https://site.local/default-UA", "testbot")
        assert rp.can_fetch("https://site.local/default-UA", "robot")

    def test_user_agent_case_insensitivity(self):
        content = """
        User-Agent: testbot
        Disallow: /testbot

        User-Agent: *
        Disallow: /default-UA
        """
        rp = Protego.parse(content=content)
        assert not rp.can_fetch("https://site.local/testbot", "TESTbot")
        assert rp.can_fetch("https://site.local/default-UA", "TESTbot")
        assert not rp.can_fetch("https://site.local/testbot", "testbot")
        assert rp.can_fetch("https://site.local/default-UA", "testbot")
        assert not rp.can_fetch("https://site.local/testbot", "tEStbOt")
        assert rp.can_fetch("https://site.local/default-UA", "tEStbOt")

    def test_user_agent_grouping(self):
        content = """
        User-Agent: one
        User-Agent: two
        Disallow: /success
        User-Agent: *
        Disallow: /failure
        """
        rp = Protego.parse(content=content)
        assert not rp.can_fetch("https://site.local/success", "one")
        assert not rp.can_fetch("https://site.local/success", "two")
        assert rp.can_fetch("https://site.local/failure", "one")
        assert rp.can_fetch("https://site.local/failure", "two")

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
        assert rp.can_fetch(url_x, "FooBot")
        assert rp.can_fetch(url_z, "FooBot")
        assert not rp.can_fetch(url_y, "FooBot")
        assert rp.can_fetch(url_y, "BarBot")
        assert rp.can_fetch(url_w, "BarBot")
        assert not rp.can_fetch(url_z, "BarBot")
        assert rp.can_fetch(url_z, "BazBot")

        assert not rp.can_fetch(url_foo, "FooBot")
        assert not rp.can_fetch(url_foo, "BarBot")
        assert not rp.can_fetch(url_foo, "BazBot")

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
        assert not rp.can_fetch("https://site.local/one-two-bot", "one")
        assert not rp.can_fetch("https://site.local/one-two-bot", "two")
        assert rp.can_fetch("https://site.local/commented", "one")
        assert rp.can_fetch("https://site.local/commented", "two")
        assert rp.can_fetch("https://site.local/default-ua", "one")
        assert rp.can_fetch("https://site.local/default-ua", "two")

        content = (
            "User-agent: FooBot\n# Disallow: /\nDisallow: /foo/quz#qux\nAllow: /\n"
        )
        rp = Protego.parse(content=content)
        assert rp.can_fetch("http://foo.bar/foo/bar", "FooBot")
        assert not rp.can_fetch("http://foo.bar/foo/quz", "FooBot")

    def test_skip_unknown_directives(self):
        content = """
        User-Agent: one
        Disallow: /bot-one
        Harry: Potter
        User-Agent: two
        Disallow: /bot-two
        """
        rp = Protego.parse(content=content)
        assert not rp.can_fetch("https://site.local/bot-one", "one")
        assert rp.can_fetch("https://site.local/bot-two", "one")
        assert not rp.can_fetch("https://site.local/bot-two", "two")
        assert rp.can_fetch("https://site.local/bot-one", "two")

    def test_skip_malformed_line(self):
        content = """
        User-Agent: one
        Disallow: /bot-one
        Harry Potter
        User-Agent: two
        Disallow: /bot-two
        """
        rp = Protego.parse(content=content)
        assert not rp.can_fetch("https://site.local/bot-one", "one")
        assert rp.can_fetch("https://site.local/bot-two", "one")
        assert not rp.can_fetch("https://site.local/bot-two", "two")
        assert rp.can_fetch("https://site.local/bot-one", "two")

    def test_empty_disallow_allow_directives(self):
        """Directives without path should be ignored."""
        content = """
        User-Agent: one
        Disallow:

        User-Agent: two
        Allow:
        """
        rp = Protego.parse(content=content)
        assert rp.can_fetch("https://site.local/path1", "one")
        assert rp.can_fetch("https://site.local/path2", "one")
        assert rp.can_fetch("https://site.local/path1", "two")
        assert rp.can_fetch("https://site.local/path2", "two")

    def test_empty_record_group(self):
        content = """
        User-Agent: harrybot
        Disallow: /
        User-Agent: testbot
        """
        rp = Protego.parse(content=content)
        assert rp.can_fetch("https://site.local/path1", "testbot")
        assert rp.can_fetch("https://site.local/path2", "testbot")

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
        assert rp.can_fetch("/", user_agent)
        assert not rp.can_fetch("/foo.html", user_agent)
        assert rp.can_fetch("/foo.htm", user_agent)
        assert rp.can_fetch("/foo.shtml", user_agent)
        assert not rp.can_fetch("/foo.htmlx", user_agent)
        assert rp.can_fetch("/cyberworld/index.html", user_agent)
        assert not rp.can_fetch("/tmp/foo.html", user_agent)
        # Since it is the caller's responsibility to make sure the host name
        # matches, the parser disallows foo.html regardless of what I pass for
        # host name and protocol.
        assert not rp.can_fetch("http://example.com/foo.html", user_agent)
        assert not rp.can_fetch("http://www.example.com/foo.html", user_agent)
        assert not rp.can_fetch("http://www.example.org/foo.html", user_agent)
        assert not rp.can_fetch("https://www.example.org/foo.html", user_agent)
        assert not rp.can_fetch("ftp://example.net/foo.html", user_agent)

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
        assert rp.can_fetch("/tmp.html", "1bot")
        assert rp.can_fetch("/tmp", "1bot")
        assert rp.can_fetch("/tmp/a.html", "1bot")
        assert not rp.can_fetch("/tmp", "2bot")
        assert rp.can_fetch("/tmp/", "2bot")
        assert rp.can_fetch("/tmp/a.html", "2bot")
        assert rp.can_fetch("/a%3cd.html", "3bot")
        assert rp.can_fetch("/a%3Cd.html", "3bot")
        assert rp.can_fetch("/a%3cd.html", "4bot")
        assert rp.can_fetch("/a%3Cd.html", "4bot")
        assert rp.can_fetch("/a%2fb.html", "5bot")
        assert not rp.can_fetch("/a/b.html", "5bot")
        assert not rp.can_fetch("/a%2fb.html", "6bot")
        assert rp.can_fetch("/a/b.html", "6bot")
        assert rp.can_fetch("/~joe/index.html", "7bot")
        assert rp.can_fetch("/%7Ejoe/index.html", "8bot")

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
        assert not rp.can_fetch("http://www.example.org/", "unhipbot")
        assert rp.can_fetch("http://www.example.org/", "webcrawler")
        assert rp.can_fetch("http://www.example.org/", "excite")
        assert not rp.can_fetch("http://www.example.org/", "OtherBot")
        assert not rp.can_fetch("http://www.example.org/index.html", "unhipbot")
        assert rp.can_fetch("http://www.example.org/index.html", "webcrawler")
        assert rp.can_fetch("http://www.example.org/index.html", "excite")
        assert not rp.can_fetch("http://www.example.org/index.html", "OtherBot")
        assert not rp.can_fetch("http://www.example.org/server.html", "unhipbot")
        assert rp.can_fetch("http://www.example.org/server.html", "webcrawler")
        assert rp.can_fetch("http://www.example.org/server.html", "excite")
        assert rp.can_fetch("http://www.example.org/server.html", "OtherBot")
        assert not rp.can_fetch("http://www.example.org/services/fast.html", "unhipbot")
        assert rp.can_fetch("http://www.example.org/services/fast.html", "webcrawler")
        assert rp.can_fetch("http://www.example.org/services/fast.html", "excite")
        assert rp.can_fetch("http://www.example.org/services/fast.html", "OtherBot")
        assert not rp.can_fetch("http://www.example.org/services/slow.html", "unhipbot")
        assert rp.can_fetch("http://www.example.org/services/slow.html", "webcrawler")
        assert rp.can_fetch("http://www.example.org/services/slow.html", "excite")
        assert rp.can_fetch("http://www.example.org/services/slow.html", "OtherBot")
        assert not rp.can_fetch("http://www.example.org/orgo.gif", "unhipbot")
        assert rp.can_fetch("http://www.example.org/orgo.gif", "webcrawler")
        assert rp.can_fetch("http://www.example.org/orgo.gif", "excite")
        assert not rp.can_fetch("http://www.example.org/orgo.gif", "OtherBot")
        assert not rp.can_fetch("http://www.example.org/org/about.html", "unhipbot")
        assert rp.can_fetch("http://www.example.org/org/about.html", "webcrawler")
        assert rp.can_fetch("http://www.example.org/org/about.html", "excite")
        assert rp.can_fetch("http://www.example.org/org/about.html", "OtherBot")
        assert not rp.can_fetch("http://www.example.org/org/plans.html", "unhipbot")
        assert rp.can_fetch("http://www.example.org/org/plans.html", "webcrawler")
        assert rp.can_fetch("http://www.example.org/org/plans.html", "excite")
        assert not rp.can_fetch("http://www.example.org/org/plans.html", "OtherBot")
        assert not rp.can_fetch("http://www.example.org/%7Ejim/jim.html", "unhipbot")
        assert rp.can_fetch("http://www.example.org/%7Ejim/jim.html", "webcrawler")
        assert rp.can_fetch("http://www.example.org/%7Ejim/jim.html", "excite")
        assert not rp.can_fetch("http://www.example.org/%7Ejim/jim.html", "OtherBot")
        assert not rp.can_fetch("http://www.example.org/%7Emak/mak.html", "unhipbot")
        assert rp.can_fetch("http://www.example.org/%7Emak/mak.html", "webcrawler")
        assert rp.can_fetch("http://www.example.org/%7Emak/mak.html", "excite")
        assert rp.can_fetch("http://www.example.org/%7Emak/mak.html", "OtherBot")

    def test_implicit_allow(self):
        content = """
        # robots.txt for http://www.example.com/

        User-agent: *
        Disallow:    /

        User-agent: foobot
        Disallow:
        """
        rp = Protego.parse(content=content)
        assert rp.can_fetch("/", "foobot")
        assert rp.can_fetch("/bar.html", "foobot")
        assert not rp.can_fetch("/", "SomeOtherBot")
        assert not rp.can_fetch("/blahblahblah", "SomeOtherBot")

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
        assert rp.can_fetch("/foo", "agent")
        assert rp.can_fetch("/foobar", "agent")
        assert rp.can_fetch("/content/2", "agent")
        assert not rp.can_fetch("/bar", "ia_archiver")
        assert not rp.can_fetch("/foo", "ia_archiver")
        assert not rp.can_fetch("/foobar", "ia_archiver")
        assert not rp.can_fetch("/content/2", "ia_archiver")

    def test_generosity(self):
        robotstxt_incorrect = """
        Foo: Foobot
        Bar: /"""
        rp = Protego.parse(content=robotstxt_incorrect)
        assert rp.can_fetch("http://foo.bar/x/y", "FooBot")

        robotstxt_incorrect_accepted = """
        user-agent foobot
        disallow /
        user agent harry potter
        disallow /horcrux
        request rate 1/10s 1820-1940
        """
        rp = Protego.parse(content=robotstxt_incorrect_accepted)
        assert not rp.can_fetch("http://foo.bar/x/y", "FooBot")

        assert not rp.can_fetch("http://foo.bar/horcrux", "harry potter")
        assert rp.can_fetch("http://foo.bar/abc", "harry potter")
        req_rate = rp.request_rate("harry potter")
        assert req_rate is not None
        assert req_rate.start_time is not None
        assert req_rate.end_time is not None
        assert req_rate.requests == 1
        assert req_rate.seconds == 10
        assert req_rate.start_time.hour == 18
        assert req_rate.start_time.minute == 20
        assert req_rate.end_time.hour == 19
        assert req_rate.end_time.minute == 40

        wildcards_in_user_agent = """
        user-agent: foo*bot
        disallow: /myprofile
        """
        rp = Protego.parse(content=wildcards_in_user_agent)
        assert not rp.can_fetch("http://foo.bar/myprofile", "foo*bot")
        assert not rp.can_fetch("http://foo.bar/myprofile", "foobot")

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
        assert rp.can_fetch(url_allowed, "onebot")
        assert not rp.can_fetch(url_disallowed, "onebot")
        assert rp.can_fetch(url_allowed, "twobot")
        assert not rp.can_fetch(url_disallowed, "onebot")
        assert rp.can_fetch(url_allowed, "threebot")
        assert not rp.can_fetch(url_disallowed, "onebot")

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
            "User-Agent: foo\nAllow: /some/path\nUser-Agent: bar\n\n\nDisallow: /\n"
        )

        mac_file = (
            "User-Agent: foo\rAllow: /some/path\rUser-Agent: bar\r\r\rDisallow: /\r"
        )

        no_final_line_ending = (
            "User-Agent: foo\nAllow: /some/path\nUser-Agent: bar\n\n\nDisallow: /"
        )

        mixed_file = (
            "User-Agent: foo\nAllow: /some/path\r\nUser-Agent: bar\n\r\n\nDisallow: /"
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
            assert rp._total_line_seen == 6
            assert rp._total_directive_seen == 4
            assert rp.can_fetch(test_url, "foo")
            assert not rp.can_fetch(test_url, "bar")

    def test_index_html_is_directory(self):
        content = "User-Agent: *\nAllow: /allowed-slash/index.html\nDisallow: /\n"
        rp = Protego.parse(content=content)
        assert rp.can_fetch("http://foo.com/allowed-slash/", "footbot")
        assert rp.can_fetch("http://foo.com/allowed-slash/index.html", "footbot")
        assert not rp.can_fetch("http://foo.com/allowed-slash/index.htm", "footbot")
        assert not rp.can_fetch("http://foo.com/anyother-url", "footbot")

    def test_percentage_encoding(self):
        content = (
            "User-agent: FooBot\n"
            "Disallow: /\n"
            "Allow: /foo/bar?qux=taz&baz=http://foo.bar?tar&par\n"
        )
        rp = Protego.parse(content=content)
        assert rp.can_fetch(
            "http://foo.bar/foo/bar?qux=taz&baz=http://foo.bar?tar&par", "FooBot"
        )

        content = "User-agent: FooBot\nDisallow: /\nAllow: /foo/bar/ツ\n"
        rp = Protego.parse(content=content)
        assert rp.can_fetch("http://foo.bar/foo/bar/%E3%83%84", "FooBot")
        assert rp.can_fetch("http://foo.bar/foo/bar/ツ", "FooBot")

        content = "User-agent: FooBot\nDisallow: /\nAllow: /foo/bar/%E3%83%84\n"
        rp = Protego.parse(content=content)
        assert rp.can_fetch("http://foo.bar/foo/bar/%E3%83%84", "FooBot")
        assert rp.can_fetch("http://foo.bar/foo/bar/ツ", "FooBot")

        content = "User-agent: FooBot\nDisallow: /\nAllow: /foo/bar/%62%61%7A\n"
        rp = Protego.parse(content=content)
        assert rp.can_fetch("http://foo.bar/foo/bar/baz", "FooBot")
        assert rp.can_fetch("http://foo.bar/foo/bar/%62%61%7A", "FooBot")

    def test_url_case_sensitivity(self):
        content = "user-agent: FooBot\ndisallow: /x/\n"
        rp = Protego.parse(content=content)
        assert not rp.can_fetch("http://foo.bar/x/y", "FooBot")

        content = "user-agent: FooBot\ndisallow: /X/\n"
        rp = Protego.parse(content=content)
        assert rp.can_fetch("http://foo.bar/x/y", "FooBot")

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
        assert not rp.can_fetch("http://foo.bar/x$/abcdef", "FooBot")
        assert not rp.can_fetch("http://foo.bar/x%24/abcdef", "FooBot")
        assert rp.can_fetch("http://foo.bar/y/abcdef", "FooBot")
        assert not rp.can_fetch("http://foo.bar/y/abc", "FooBot")
        assert not rp.can_fetch("http://foo.bar/xabcx$/abcdef", "FooBot")
        assert not rp.can_fetch("http://foo.bar/xabcx%24/abcdef", "FooBot")
        assert not rp.can_fetch("http://foo.bar/yabcy/abc", "FooBot")
        assert rp.can_fetch("http://foo.bar/yabcy/abcdef", "FooBot")

    def test_escaped_special_symbols(self):
        """Percent encoded special symbols should be treated as ordinary characters."""
        content = "user-agent: FooBot\ndisallow: /x/abc%24\ndisallow: /x%2Ax/abc\n"
        rp = Protego.parse(content=content)
        assert not rp.can_fetch("http://foo.bar/x/abc$abc", "FooBot")
        assert not rp.can_fetch("http://foo.bar/x/abc$", "FooBot")
        assert rp.can_fetch("http://foo.bar/x/abc", "FooBot")
        assert not rp.can_fetch("http://foo.bar/x*x/abc", "FooBot")
        assert not rp.can_fetch("http://foo.bar/x*x/abcdef", "FooBot")
        assert rp.can_fetch("http://foo.bar/xabcx/abc", "FooBot")

    def test_special_symbols_dual_behaviour(self):
        """Special symbols such as * and $, should also be treated as an ordinary character"""
        content = "user-agent: FooBot\ndisallow: /x/abc$\ndisallow: /x*x/abc\n"
        rp = Protego.parse(content=content)
        assert not rp.can_fetch("http://foo.bar/x*x/abc", "FooBot")
        assert not rp.can_fetch("http://foo.bar/x/abc$", "FooBot")
        assert not rp.can_fetch("http://foo.bar/x/abc%24", "FooBot")

    def test_with_absolute_urls(self):
        content = "user-agent: *\ndisallow: http://ms-web00.walkerplus.com/\n"

        rp = Protego.parse(content=content)
        assert rp.can_fetch("http://foo.bar/", "FooBot")
        assert not rp.can_fetch(
            "http://foo.bar/http://ms-web00.walkerplus.com/", "FooBot"
        )

    def test_sitemaps_come_first(self):
        """Some websites have sitemaps before any robots directives"""
        content = (
            "Sitemap: https://www.foo.bar/sitmap.xml\n"
            "User-Agent: FootBot\n"
            "Disallow: /something"
        )
        rp = Protego.parse(content=content)
        assert list(rp.sitemaps) == ["https://www.foo.bar/sitmap.xml"]

    def test_disallow_target_url_path_is_missing(self):
        content = "User-Agent: *\nDisallow: /\n"
        rp = Protego.parse(content)
        assert not rp.can_fetch("http://example.com/", "FooBot")
        assert not rp.can_fetch("http://example.com", "FooBot")

    def test_bytestrings(self):
        content = b"User-Agent: FootBot\nDisallow: /something"
        with pytest.raises(ValueError, match="Protego.parse expects str, got bytes"):
            Protego.parse(content=content)  # type: ignore[arg-type]

    def test_leading_double_slash_in_pattern(self):
        content = "User-Agent: *\nDisallow: //folder/*\n"
        rp = Protego.parse(content)
        assert rp.can_fetch("http://example.com/", "FooBot")
        assert rp.can_fetch("http://example.com/folder", "FooBot")
        assert rp.can_fetch("http://example.com/folder/", "FooBot")
        assert rp.can_fetch("http://example.com/folder/page", "FooBot")
        assert rp.can_fetch("http://example.com//folder", "FooBot")
        assert not rp.can_fetch("http://example.com//folder/page", "FooBot")

    def test_visit_time(self):
        """Some website specified allow time for crawling in UTC"""
        content = "User-Agent: *\nVisit-time: 0200 0630\nUser-Agent: NoTime"
        rp = Protego.parse(content)
        visit_time = rp.visit_time("FooBoot")
        assert visit_time is not None
        assert visit_time.start_time == time(2, 0)
        assert visit_time.end_time == time(6, 30)
        assert rp.visit_time("NoTime") is None

    def test_parse_time_period(self):
        start_time, end_time = _parse_time_period("0100-1000")
        assert start_time == time(1, 0)
        assert end_time == time(10, 0)

        start_time, end_time = _parse_time_period("0500 0600", separator=" ")
        assert start_time == time(5, 0)
        assert end_time == time(6, 0)

    def test_disallow_query_wildcard(self):
        content = "User-agent: * \nDisallow: /*s="
        rp = Protego.parse(content=content)
        assert rp.can_fetch("https://www.site.local/", "*")
        assert rp.can_fetch("https://www.site.local/s/", "*")
        assert not rp.can_fetch("https://www.site.local/?s=asd", "*")


@pytest.mark.parametrize(
    ("allow", "disallow", "url", "allowed"),
    [
        ("*/p", "/", "http://example.com/page", True),
        ("/page", "*/*.htm", "https://example.com/page.htm", False),
    ],
)
def test_leading_asterisk(allow, disallow, url, allowed):
    content = f"User-Agent: *\nallow: {allow}\ndisallow: {disallow}\n"
    rp = Protego.parse(content)
    assert rp.can_fetch(url, "*") == allowed
