Sitemap: https://www.rent.com/sitemap.xml

# allow indexing of some things (for production)
User-agent: *

Disallow: /go/
Disallow: /guest/
Disallow: /search/results*/
Disallow: /webapi/
Disallow: /account/
Disallow: /oneweb/analytics*
Disallow: /dynamic-search*
Disallow: /apartments/
Disallow: /enter/
Disallow: /property/
Disallow: /rentals/
Disallow: /*?source=*
Disallow: /track/
Disallow: /v3*
Disallow: /r/
Disallow: */schools/
Disallow: /multi-search/

# disallow Cazoodlebot
User-agent: Cazoodlebot
Disallow: /

User-agent: Adsbot-Google
User-agent: AdsBot-Google-Mobile
User-agent: AdIdxBot
Allow: /r/*
