User-agent: *
Crawl-delay: 30
Disallow: /*.ashx$
Disallow: /personal-finance/bankrate-cc-results.aspx
Disallow: /personal-finance/bankrate-cd-results.aspx
Disallow: /personal-finance/bankrate-auto-results.aspx
Disallow: /personal-finance/bankrate-mma-results.aspx
Disallow: /personal-finance/bankrate-mortgage-results.aspx

User-agent: grapeshot
User-agent: Pipl
Disallow: /

User-agent: mediapartners-google
Crawl-delay: 0

User-agent: googlebot
Crawl-delay: 0

User-agent: googlebot-news
Crawl-delay: 0

User-agent: adsbot-google
Crawl-delay: 0

User-agent: googlebot-image
Crawl-delay: 0

User-agent: googlebot-mobile
Crawl-delay: 0

User-agent: bingbot
Crawl-delay: 0

User-agent: slurp
Crawl-delay: 0

User-agent: msnbot
Crawl-delay: 0

User-agent: msnbot-media
Crawl-delay: 0

User-agent: Yahoo-Blogs
Crawl-delay: 0

User-agent: Yahoo-MMCrawler
Crawl-delay: 0

User-agent: DuckDuckBot
Crawl-delay: 0

User-agent: YandexBot
Crawl-delay: 0

Sitemap: https://www.nasdaq.com/sitemap.xml