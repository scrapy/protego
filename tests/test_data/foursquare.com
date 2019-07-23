User-agent: *
Disallow: /search
Disallow: /search?
Disallow: /login?
Disallow: /login/*
Disallow: /signup?
Disallow: /signup/*
Allow: /signup/$
Disallow: /mobile/
Disallow: /touch/login
Disallow: /mobile/search
Disallow: /user/*/checkin/
Disallow: /*/checkin/
Allow: /v/checkin*
Disallow: /private/wtrack
Disallow: /l/
Disallow: /*/badge/
Disallow: /*/badges
Allow: /v/badge*
Disallow: /oauth2/
Disallow: /device/
Disallow: /venue/claim
Disallow: /app/
Disallow: /go/
Disallow: /*/lists/edited$
Disallow: /*/lists/followed$
Disallow: /*/lists/friends$
Disallow: /*/list/todos$
Disallow: /*/list/tips$
Disallow: /*/list/venuelikes$

User-agent: Branch Metrics API
User-agent: Branch API
Allow: /v/*

User-agent: PiplBot
User-agent: MJ12bot
User-agent: CCBot
User-agent: SeznamBot
User-agent: Exabot
User-agent: netseer
User-agent: Mappy
User-agent: crawler4j
User-agent: Gigabot
User-agent: ZoomBot
User-agent: BUbiNG
User-agent: Getintent Crawler
User-agent: BLEXBot
User-Agent: trendictionbot
User-agent: hyscore
User-agent: magpie-crawler
User-agent: RyteBot
Disallow: /v/*

Sitemap: https://4sq-sitemap.s3.amazonaws.com/sitemap_index.xml
