User-agent: *
Disallow: /wp-admin/
Disallow: /?wptouch_switch

# cleaning up crawl errors
Disallow: /search

Sitemap: https://www.mlbtraderumors.com/sitemap.xml

User-agent: * 
Crawl-delay: 1
