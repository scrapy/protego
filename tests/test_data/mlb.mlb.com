User-agent: truveo
Disallow: /

User-agent: msnbot
Crawl-delay: 6
Disallow: /video/index.jsp*

User-agent: Yahoo! slurp
Crawl-delay: 6

User-agent: YahooSeeker
Crawl-delay: 10

User-agent: daumoa
Crawl-delay: 12

User-agent: voilabot
Crawl-delay: 20

User-agent: FriendFeedBot
Crawl-delay: 20

User-agent: UnwindFetchor
Crawl-delay: 20

User-agent: *

Disallow: /team/player_career.jsp 
Disallow: /team/player_news.jsp 
Disallow: /lookup/
Disallow: /hou/fan_forum/mascot_appearance_form.jsp
Disallow: /ws/search/