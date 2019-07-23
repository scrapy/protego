#disallow /user/ as there are incoming links going to pages within the /user/ directory that can't be accessed.
User-agent: *
Disallow: /user/
Disallow: /preview/
Disallow: /search
Disallow: /newsletters/
Sitemap: https://www.cntraveler.com/sitemap.xml
Sitemap: https://www.cntraveler.com/feed/google-latest-news/sitemap-google-news

User-agent: Pinterest
Crawl-Delay: 60

User-agent: Pinterestbot
Crawl-Delay: 60

User-agent: *
Crawl-Delay: 30