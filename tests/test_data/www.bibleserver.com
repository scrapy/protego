# robots.txt for bibleserver.com
Sitemap: https://www.bibleserver.com/sitemap-1.xml.gz
Sitemap: https://www.bibleserver.com/sitemap-2.xml.gz
Sitemap: https://www.bibleserver.com/sitemap_search.xml.gz

User-agent: *
Disallow: /admin/
Disallow: /import/
Disallow: /iplists/
