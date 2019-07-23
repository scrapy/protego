User-agent: truveo
Disallow: /

User-agent: asterias
Disallow: /

User-agent: singingfish
Disallow: /

#User-agent: Googlebot
#Crawl-delay: 1

User-agent: msnbot
Crawl-delay: 6
Disallow: /video/index.jsp*

#User-agent: bingbot
#Crawl-delay: 6
#Disallow: /video/index.jsp*

User-agent: Yahoo! slurp
Crawl-delay: 6

User-agent: YahooSeeker
Crawl-delay: 10

User-agent: daumoa
Crawl-delay: 12

User-agent: twiceler
Crawl-delay: 20

User-agent: voilabot
Crawl-delay: 20

User-agent: FriendFeedBot
Crawl-delay: 20

User-agent: WikioFeedBot
Crawl-delay: 20

User-agent: UnwindFetchor
Crawl-delay: 20

User-agent: *
#Disallow: /stats/
#Disallow: /milb/stats/
Disallow: /lookup/
