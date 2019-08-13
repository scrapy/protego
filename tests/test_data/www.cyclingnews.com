User-agent: Googlebot
Disallow: /search/
Crawl-delay: 1

User-agent: bingbot
Disallow: /search/
Crawl-delay: 2

User-agent: msnbot
Disallow: /search/
Crawl-delay: 2

User-Agent: *
Disallow: /search/
Disallow: /forums/
Crawl-delay: 30

Sitemap: http://www.cyclingnews.com/sitemap.xml