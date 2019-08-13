Sitemap: https://www.tmz.com/sitemaps/article/index.xml
Sitemap: https://www.tmz.com/sitemaps/gallery/index.xml
Sitemap: https://www.tmz.com/sitemaps/page/index.xml
Sitemap: https://www.tmz.com/sitemaps/video/index.xml
Sitemap: https://www.tmz.com/sitemaps/news.xml

User-agent: Googlebot-News
Disallow: /photos
Disallow: /videos

User-agent: proximic
Disallow:

User-agent: bingbot
Crawl-delay: 60

User-agent: *

Disallow: /_/
Disallow: */print
Disallow: /search

