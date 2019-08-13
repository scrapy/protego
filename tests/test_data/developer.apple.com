# robots.txt for http://developer.apple.com/
User-agent: *
Disallow: /click/
Disallow: /cgi-bin/
Disallow: /survey/
Disallow: /temp/
Disallow: /search/
Disallow: /unsubscribe/
Disallow: /reference/