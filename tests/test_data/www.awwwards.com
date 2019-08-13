Sitemap: https://www.awwwards.com/sitemap.xml

User-agent: *
Disallow: /feed
Disallow: /vote/
Disallow: /tag/
Disallow: /11d12designs/
Disallow: /publicclass/
Disallow: /design-products/
Disallow: /submission/
Disallow: /app.php/
Disallow: /gallery/
Disallow: /search-websites
Disallow: /events/tag/
Disallow: *favourites?page
Disallow: /preview/
Disallow: /search-articles
Disallow: /inspiration/search
Disallow: /websites/?
Disallow: /directory/search/?
Disallow: /*/likes$
Disallow: /*/awards$
Disallow: /*/follow$
Disallow: /*/votes$

User-agent: MSIECrawler
Disallow: /

User-agent: psbot
Disallow: /

User-agent: Fasterfox
Disallow: /

User-agent: Xenu
Disallow: /

User-agent: SiteSucker
Disallow: /

User-agent: dotbot
Disallow: /
