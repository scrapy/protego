User-agent: AhrefsBot
Disallow: /


User-agent: TwitterBot
Disallow:


User-agent: *
Disallow: /play-index/*cgi
Disallow: */scoring/
Disallow: */gamelog/
Disallow: */splits/
Disallow: /player_search.cgi
Disallow: /boxscores/index*
Disallow: /my/
Disallow: /7103
Crawl-delay: 3
