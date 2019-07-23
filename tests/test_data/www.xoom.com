# Per robots.txt directives, blank lines are not good in robots.txt
# Please see www.robotstxt.org and the wikipedia page for proper syntax
User-agent: *
Disallow: /internal/
Disallow: /page-no-longer-available
Disallow: /plain/
Disallow: /popup/
Disallow: /quicksend
Disallow: /schedule
Disallow: /send/
Disallow: /sendmoney
Disallow: /service-temporarily-unavailable
Disallow: /static/
Disallow: /track-transaction
