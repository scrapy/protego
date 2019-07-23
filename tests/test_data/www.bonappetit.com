User-agent: *
Disallow: /user/
Disallow: /wp-admin
Disallow: /promotions
Disallow: /search
Disallow: /?s=*
Disallow: /tel
Disallow: /print

User-agent: Pinterest
Crawl-Delay: 60

User-agent: Pinterestbot
Crawl-Delay: 60

Sitemap: https://www.bonappetit.com/sitemap.xml
Sitemap: https://www.bonappetit.com/feed/google-latest-news/sitemap-google-news