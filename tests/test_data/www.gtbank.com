# robots.txt for https://www.gtbank.com/

Sitemap: https://www.gtbank.com//sitemap.xml

# Don't allow web crawlers to index Craft

User-agent: *
Disallow: /craft/
