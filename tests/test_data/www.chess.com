User-agent: *
Disallow: /_
Disallow: /en/
Disallow: /cdn-cgi/
Disallow: /admin
Disallow: /developers
Disallow: /download/pgn
Disallow: /fb
Disallow: /home/
Disallow: /logout
Disallow: /message
Disallow: /settings
Disallow: /switch
Disallow: /unsubscribe
Disallow: /webhook
Disallow: /login_
Disallow: /login_and_go
Disallow: /payment/
Disallow: /games/archive

User-agent: *
Disallow: /*/login_
Disallow: /*/login_and_go
Disallow: /*/payment/
Disallow: /*/games/archive

Sitemap: https://www.chess.com/sitemapindex.xml
