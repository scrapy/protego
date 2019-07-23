User-agent: *
Disallow: /affiliate/
Disallow: /history/
Disallow: /report/
Disallow: /forum/
Crawl-delay: 3

User-agent: bingbot
Crawl-delay: 60

#User-agent: Googlebot
#Crawl-delay: 60

User-agent: Pinterestbot
Crawl-delay: 40

User-agent: UptimeRobot
Crawl-delay: 30

User-agent: Exabot
Crawl-delay: 40
