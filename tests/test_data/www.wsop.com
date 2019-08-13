User-agent: Mediapartners-Google
Disallow:
User-agent: MJ12bot
Disallow:
User-agent: CrazyWebCrawler-Spider
Disallow: /
User-agent: *
Disallow: /download/
Disallow: /tourney/WSOP.ics
Disallow: /tournaments/print-results.asp
Disallow: /tournaments/print-structure.asp
Disallow: /tournaments/portable/fr/print-structure.asp?*
Disallow: /tournaments/portable/fr/print-results.asp?*
Disallow: /riocasino/casinogames/
Disallow: /online-poker/limits-rake.asp
Disallow: /_Incapsula_Resource*
User-agent: Googlebot-mobile
Allow: /m/
