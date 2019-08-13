User-agent: *
Disallow: /cgi-bin/
Disallow: /community/collection.php
Disallow: /community/favorites.php
Disallow: /community/profile.php
Disallow: /community/ratings.php
Disallow: /link/
Disallow: /movies/search.php
Disallow: /news/search.php
Disallow: /search/

User-agent: Mediapartners-Google
Allow: /

User-agent: bingbot
Crawl-delay: 10

User-agent: msnbot
Crawl-delay: 10

User-agent: Applebot
Crawl-delay: 10

user-agent: AhrefsBot
disallow: /

User-agent: CCBot
Disallow: /

User-agent: NaverBot
Disallow: /

User-agent: Omgili
Disallow: /

User-agent: proximic
Disallow: /

User-agent: Riddler
Disallow: /

User-agent: MaxPointCrawler
Disallow: /

User-agent: MaxPointCrawler/Nutch-1.10
Disallow: /

User-agent: dotbot
Disallow: /

User-agent: The Knowledge AI
Disallow: /

User-agent: panscient.com
Disallow: /

User-agent: Seekport
Disallow: /

User-agent: SemrushBot
Disallow: /

User-agent: SemrushBot-SA
Disallow: /

User-agent: NTENTbot
Disallow: /
