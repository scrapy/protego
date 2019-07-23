Sitemap: https://www.ru.nl/sitemapindex.xml
Sitemap: https://www.ru.nl/sitemap.xml


#Toestaan spiders: 

#Google
User-agent: Googlebot
Disallow: /aspx/
Disallow: /people/
Crawl-delay: 5

User-Agent: Googlebot-Mobile
Disallow: /aspx/
Disallow: /people/
Crawl-delay: 5

User-Agent: Googlebot-Image
Disallow: /aspx/
Disallow: /people/
Crawl-delay: 5

User-Agent: Mediapartners-Google
Disallow: /aspx/
Disallow: /people/
Crawl-delay: 5

# Bing
User-agent: BingBot
Disallow: /aspx/
Disallow: /people/
Crawl-delay: 5

# Yahoo
User-agent: Yahoo-MMCrawler
Disallow: /aspx/
Disallow: /people/
Crawl-delay: 5

User-agent: Slurp
Disallow: /aspx/
Disallow: /people/
Crawl-delay: 5

# archive.org Wayback Machine
User-agent: ia_archiver
Disallow: /aspx/
Disallow: /people/
Crawl-delay: 5

User-agent: alexabot
Disallow: /aspx/
Disallow: /people/
Crawl-delay: 5

User-agent: verifybot
Disallow: /aspx/
Disallow: /people/
Crawl-delay: 5

User-agent: Twitterbot
Disallow: /aspx/
Disallow: /people/
Crawl-delay: 5

User-agent: LinkedInBot
Disallow: /aspx/
Disallow: /people/
Crawl-delay: 5

# Block alle andere spiders
User-agent: *
Disallow: /
