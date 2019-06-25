# encoding=utf-8
from protego import Protego
from unittest import TestCase


class TestProtego(TestCase):
    def test_allowed(self):
        robotstxt_content = ("User-agent: * \n"
                             "Disallow: /disallowed \n"
                             "Allow: /allowed \n"
                             "Crawl-delay: 10")
        rp = Protego.parse(content=robotstxt_content)
        self.assertTrue(rp.allowed("https://www.site.local/allowed", "*"))
        self.assertFalse(rp.allowed("https://www.site.local/disallowed", "*"))

    def test_length_based_precedence(self):
        robotstxt_content = ("User-agent: * \n"
                             "Disallow: / \n"
                             "Allow: /page")
        rp = Protego.parse(content=robotstxt_content)
        self.assertTrue(rp.allowed("https://www.site.local/page", "*"))

    def test_sitemaps(self):
        robotstxt_content = ("User-agent: * \n"
                             "Disallow: /disallowed \n"
                             "Allow: /allowed \n"
                             "Sitemap: https://site.local/sitemap.xml")
        rp = Protego.parse(
            content=robotstxt_content)
        sitemaps = list(rp.sitemaps())
        self.assertTrue(len(sitemaps) == 1)
        self.assertTrue("https://site.local/sitemap.xml" in sitemaps)

    def test_no_sitemaps(self):
        robotstxt_content = ("User-agent: * \n"
                             "Disallow: /disallowed \n"
                             "Allow: /allowed \n"
                             "Crawl-delay: 10")
        rp = Protego.parse(
            content=robotstxt_content)
        self.assertTrue(not list(rp.sitemaps()))

    def test_no_preferred_host(self):
        robotstxt_content = ("User-agent: * \n"
                             "Disallow: /disallowed \n"
                             "Allow: /allowed \n"
                             "Crawl-delay: 10")
        rp = Protego.parse(
            content=robotstxt_content)
        self.assertTrue(rp.preferred_host() is None)

    def test_crawl_delay(self):
        robotstxt_content = ("User-agent: * \n"
                             "Disallow: /disallowed \n"
                             "Allow: /allowed \n"
                             "Crawl-delay: 10")
        rp = Protego.parse(
            content=robotstxt_content)
        self.assertTrue(rp.crawl_delay('*') == 10.0)

    def test_no_crawl_delay(self):
        robotstxt_content = ("User-agent: * \n"
                             "Disallow: /disallowed \n"
                             "Allow: /allowed")
        rp = Protego.parse(
            content=robotstxt_content)
        self.assertTrue(rp.crawl_delay('*') is None)

    def test_empty_response(self):
        """empty response should equal 'allow all'"""
        rp = Protego.parse(content='')
        self.assertTrue(rp.allowed("https://site.local/", "*"))
        self.assertTrue(rp.allowed("https://site.local/", "chrome"))
        self.assertTrue(rp.allowed("https://site.local/index.html", "*"))
        self.assertTrue(rp.allowed("https://site.local/disallowed", "*"))

    def test_unicode_url_and_useragent(self):
        robotstxt_content = u"""
        User-Agent: *
        Disallow: /admin/
        Disallow: /static/
        # taken from https://en.wikipedia.org/robots.txt
        Disallow: /wiki/K%C3%A4ytt%C3%A4j%C3%A4:
        Disallow: /wiki/Käyttäjä:
        User-Agent: UnicödeBöt
        Disallow: /some/randome/page.html"""
        rp = Protego.parse(
            content=robotstxt_content)
        self.assertTrue(rp.allowed("https://site.local/", "*"))
        self.assertFalse(rp.allowed("https://site.local/admin/", "*"))
        self.assertFalse(rp.allowed("https://site.local/static/", "*"))
        self.assertTrue(rp.allowed("https://site.local/admin/", u"UnicödeBöt"))
        self.assertFalse(rp.allowed(
            "https://site.local/wiki/K%C3%A4ytt%C3%A4j%C3%A4:", "*"))
        self.assertFalse(rp.allowed(u"https://site.local/wiki/Käyttäjä:", "*"))
        self.assertTrue(rp.allowed(
            "https://site.local/some/randome/page.html", "*"))
        self.assertFalse(rp.allowed(
            "https://site.local/some/randome/page.html", u"UnicödeBöt"))
