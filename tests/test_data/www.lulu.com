User-agent: *
Crawl-delay: 5
Disallow: /images/
Disallow: /classes/
Disallow: /includes/
Disallow: /items/
Disallow: /s1/
Disallow: /*/account/
Sitemap: http://www.lulu.com/sitemap_index.xml


User-agent: googlebot
Crawl-delay: 1
Disallow: /images/
Disallow: /classes/
Disallow: /includes/
Disallow: /items/
Disallow: /s1/
Disallow: /*/account/
Sitemap: http://www.lulu.com/sitemap_index.xml

User-agent: bingbot
Crawl-delay: 4
Disallow: /images/
Disallow: /classes/
Disallow: /includes/
Disallow: /items/
Disallow: /s1/
Disallow: /*/account/
Sitemap: http://www.lulu.com/sitemap_index.xml

User-agent: Slurp
Crawl-delay: 5
Disallow: /images/
Disallow: /classes/
Disallow: /includes/
Disallow: /items/
Disallow: /s1/
Disallow: /*/account/
Sitemap: http://www.lulu.com/sitemap_index.xml

User-agent: Yandex
Crawl-delay: 5
Disallow: /images/
Disallow: /classes/
Disallow: /includes/
Disallow: /items/
Disallow: /s1/
Disallow: /*/account/
Sitemap: http://www.lulu.com/sitemap_index.xml
