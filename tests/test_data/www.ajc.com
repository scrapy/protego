#Block from all, these are not the droids you are looking for
User-agent: *
Disallow: /search
Disallow: /google-search
Disallow: /flatpage-

#Delayed "meh" bots
User-agent: bingbot
Crawl-delay: 10
User-agent: AhrefsbBot
Crawl-delay: 15
User-agent: SemrushBot
Crawl-delay: 15
User-agent: BLEXBot
Crawl-delay: 15
User-agent: MJ12bot
Crawl-delay: 15
User-agent: AmazonAdBot
Crawl-delay: 15
User-agent: Pinterestbot
Crawl-delay: 15
User-agent: trendictionbot
Crawl-delay: 15
User-agent: NTENTbot
Crawl-delay: 15
User-agent: DotBot
Crawl-delay: 15
User-agent: rogerbot
Crawl-delay: 15
User-Agent: Exabot
Crawl-delay: 15
User-agent: GetIntent Crawler
Crawl-delay: 15

#Get off my lawn
User-agent: Yandex
Disallow: /
User-agent: YandexMobileBot
Disallow: /
User-agent: PhantomJS
Disallow: /
User-agent: SputnikBot
Disallow: /
User-agent: SeznamBot
Disallow: /
User-agent: Cliqzbot
Disallow: /  
User-agent: Mail.RU_Bot
Disallow: /
User-agent: Baiduspider
Disallow: /
User-agent: Baiduspider-video
Disallow: /
User-agent: Baiduspider-image
Disallow: /
User-agent: SentiBot
Disallow: /
User-agent: MauiBot (crawler.feedback+wc@gmail.com)
Disallow: /
User-agent: Mappy
Disallow: /
User-Agent: WotBot
Disallow: /