# Allow Google AdSense crawler on most pages.
User-agent: Mediapartners-Google
Disallow: /backend
Disallow: /settings
Disallow: /game

# By default, disallow all crawlers.
User-agent: *
Disallow: /mailurl
Disallow: /onlinemail
Disallow: /unsubscribe
Disallow: /about/safety
Disallow: /about/terms
Disallow: /about/privacy
Disallow: /about/codeofconduct

# Full url of latest sitemap.
Sitemap: http://www.zorpia.com/sitemap.xml
Sitemap: https://twoo-a.akamaihd.net/static/1914446478937102644184356/sitemap.xml