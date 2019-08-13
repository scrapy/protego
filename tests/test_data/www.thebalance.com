User-agent: *
Noindex: *=
Disallow: *=
Allow: /thmb/*
Allow: *utm_medium=social
Noindex: *.pdf
Disallow: *.pdf
Noindex: *quizResult=
Disallow: *quizResult=
Noindex: *globeNoTest
Disallow: *globeNoTest
Noindex: *globeResourceConcat
Disallow: *globeResourceConcat
Noindex: *globeTest_optimizelyInclusion
Disallow: *globeTest_optimizelyInclusion
Noindex: *?kw
Disallow: *?kw

User-agent: Mediapartners-Google
Disallow:

User-agent: Yahoo-MMCrawler
Allow: /z/cg/

User-agent: BecomeBot
Crawl-Delay: 10

User-agent: Pinterest
Disallow:

User-agent: Pinterestbot
Disallow:

Sitemap: https://www.thebalance.com/sitemap.xml
