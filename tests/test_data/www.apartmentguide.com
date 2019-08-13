#

# Sitemap Global Search Engine Ping (Google, Yahoo, MSN, Ask)

#

User-Agent: *

Disallow: /thmpg/

Disallow: /schools/*

Disallow: /apartments/print/*

Disallow: /apartments/get_geo_url

Disallow: /apartments/Alaska/Yakutat/
Disallow: /zip/99689*

Disallow: /MediaPlexAd/

Disallow: /rentals/

Disallow: /*/?order=*

Disallow: /*coupon*

Disallow: /deals/*

Disallow: /*?personalize=*

Disallow: /favorites*

Disallow: /redirects/*

Disallow: /s/*

Disallow: /scripts/*

Disallow: /mobile-download-sms/*

Disallow: /filter*

Disallow: /ka/*

Disallow: /zip/*?*

Disallow: /listings/photos/*

Disallow: /test-response-for-500/654456/

Disallow: /*?limit

Disallow: /*?*min_price=*
Disallow: /*?*max_price=*

Disallow: /*geolocation*

Disallow: /*/Reviews/new/*

Disallow: /*/?rating=*

Disallow: /r/*

Disallow: /vanity/*

Disallow: /multi-search/*

User-agent: Mediapartners-Google*

Disallow:

SITEMAP: https://www.apartmentguide.com/sitemap.xml

User-agent: CazoodleBot
Disallow: /

User-agent: Adsbot-Google
User-agent: AdsBot-Google-Mobile
User-agent: AdIdxBot
Allow: /r/*
Allow: /schools/*
