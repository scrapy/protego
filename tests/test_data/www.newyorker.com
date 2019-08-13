
User-agent: *
Disallow: /articles
Disallow: /categories
Disallow: /cnevideos
Disallow: /curatedsearches
Disallow: /galleries
Disallow: /gallery
Disallow: /photos
Disallow: /preview
Disallow: /projects
Disallow: /search
Disallow: /svc
Disallow: /wp-admin
Disallow: /wp-includes
Disallow: /*/amp

User-agent: Googlebot
Allow: /*/amp
Disallow: /cartoon/

User-agent: Bingbot
Allow: /*/amp

Sitemap: https://www.newyorker.com/sitemap.xml
Sitemap: https://www.newyorker.com/feed/google-news-sitemap-feed/sitemap-google-news
            