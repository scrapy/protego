User-agent: *
Disallow: *.pdf
Disallow: /*?v=2
Disallow: /*flush=1
Disallow: /*comparison*

Sitemap: https://www.giant-bicycles.com/sitemap
Sitemap: https://www.liv-cycling.com/sitemap

User-agent: Yandex
Crawl-delay: 4 
User-agent: bingbot
Crawl-delay: 2 
User-agent: msnbot
Crawl-delay: 2 
User-agent: MJ12bot
Disallow: /
User-agent: voltron
Disallow: /
User-agent: AhrefsBot
Disallow: /
User-agent: spbot 
Disallow: /
User-agent: HaosouSpider 
Disallow: /
User-agent: 360Spider 
Disallow: /
User-agent: Exabot 
Disallow: /
User-agent: XoviBot
Disallow: /
User-agent: Screaming Frog SEO Spider
Disallow: /
User-agent: Screaming Frog SEO Spider/4.1
Disallow: /
User-agent: SEOkicks-Robot
Disallow: /
User-agent: Vagabondo
Disallow: /
User-agent: rogerbot
Crawl-delay: 10 