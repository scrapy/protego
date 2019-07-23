User-agent: *
Disallow: /members/
Disallow: *?s=
Disallow: *p=*&preview=true*
Disallow: /wp-content/cache/
Allow: /wp-content/cache/autoptimize/
Disallow: /docs/
Disallow: *utm_source=vCitaBlog*

User-agent: Mediapartners-Google
Disallow:

User-agent: Twitterbot
Crawl-delay: 60

User-agent: Facebot
Crawl-delay: 20

User-agent: bingbot
Crawl-delay: 20

User-agent: MSNBot
Crawl-delay: 20

User-agent: Slurp
Crawl-delay: 60

User-agent: Yahoo! Slurp
Crawl-delay: 60

User-agent: YandexBot
Crawl-delay: 60

User-agent: YandexMedia
Crawl-delay: 60

User-agent: YandexImages
Crawl-delay: 60

User-agent: YandexCatalog
Crawl-delay: 60

User-agent: YaDirectFetcher
Crawl-delay: 60

User-agent: YandexBlogs
Crawl-delay: 60

User-agent: YandexNews
Crawl-delay: 60

User-agent: YandexPagechecker
Crawl-delay: 60

User-agent: YandexMetrika
Crawl-delay: 60

User-agent: YandexMarket
Crawl-delay: 60

User-agent: YandexCalendar
Crawl-delay: 60

