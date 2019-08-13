User-agent: oodlebot
Disallow: /

User-agent: Clickagy Intelligence Bot v2
Disallow: /

User-agent: *
Allow: /public/member/login
Allow: /public/member/new
Disallow: /public/member/
Disallow: /public/cmscommentAbuse/
Disallow: /*?print=1
Disallow: /?sid=7198470&nid=210
Disallow: /?nid=148&sid=35120504
Disallow: /index.php?nid=148&sid=3008453
Disallow: /index.php?nid=148&sid=20219647
Disallow: /ad_logger/
Disallow: /*nid=1070 
Disallow: /auto/stat/
Disallow: /auto/search/ad-carousel
Disallow: /homes/stat/
Disallow: /jobs/stat/
Disallow: /jobs/emailafriend/
Disallow: *format/html
Disallow: /ajax/yahoo_stocks.php

User-agent: ksl-crawler
Allow: /

Sitemap: https://www.ksl.com/sitemaps/news/sitemap
Sitemap: https://www.ksl.com/sitemaps/news/google-news-sitemap
