# http://www.robotstxt.org/

Sitemap: https://www.getharvest.com/sitemap.xml.gz

User-agent: EasouSpider
Disallow: /

User-agent: *
Disallow: /invitation/
Disallow: /generate/
