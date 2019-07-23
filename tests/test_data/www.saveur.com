Sitemap: https://www.saveur.com/arcio/sitemap-index/index/
Sitemap: https://www.saveur.com/arcio/fronts-sitemap/


##Disallow the following spiders##

User-agent: Gigabot
Disallow: /

User-agent: Scrubby
Disallow: /

User-agent: Nutch
Disallow: /

User-agent: baiduspider
Disallow: /

User-agent: naverbot
Disallow: /

User-agent: yeti
Disallow: /

User-agent: asterias
Disallow: /

User-agent: *
Crawl-delay: 10
Disallow: