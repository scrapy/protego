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

    def test_no_crawl_delay(self):
        content = ("User-agent: * \n"
                   "Disallow: /disallowed \n"
                   "Allow: /allowed")
        rp = Protego.parse(content=content)
        self.assertTrue(rp.crawl_delay('*') is None)

    def test_empty_response(self):
        """empty response should equal 'allow all'"""
        rp = Protego.parse(content='')
        self.assertTrue(rp.allowed("https://site.local/", "*"))
        self.assertTrue(rp.allowed("https://site.local/", "chrome"))
        self.assertTrue(rp.allowed("https://site.local/index.html", "*"))
        self.assertTrue(rp.allowed("https://site.local/disallowed", "*"))

    def test_unicode_url_and_useragent(self):
        content = u"""
        User-Agent: *
        Disallow: /admin/
        Disallow: /static/
        # taken from https://en.wikipedia.org/robots.txt
        Disallow: /wiki/K%C3%A4ytt%C3%A4j%C3%A4:
        Disallow: /wiki/Käyttäjä:
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
        self.assertTrue(rp.allowed(
            "https://site.local/some/randome/page.html", "*"))
        self.assertFalse(rp.allowed(
            "https://site.local/some/randome/page.html", u"UnicödeBöt"))
