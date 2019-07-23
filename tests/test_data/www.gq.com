User-agent: *
Disallow: /search?
Disallow: /preview/

User-agent: Googlebot-News
Disallow: /branded/

User-agent: Twitterbot
Disallow: /*/amp

Sitemap: https://www.gq.com/sitemap.xml
Sitemap: https://www.gq.com/feed/google-latest-news/sitemap-google-news
Sitemap: https://www.gq.com/branded-sitemap.xml