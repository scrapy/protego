User-agent: *
Allow: *.js
Allow: *.css
Disallow: /units/
Disallow: /searchTerms/
Disallow: /listings/
Disallow: /traveler/
Disallow: /td/
Disallow: /listings/
Disallow: /info/internal-links
Disallow: /pm/
Disallow: /reviews/
Disallow: /traveler/profiles
Disallow: /ratePlans/
Disallow: /v2/lodgingRates/

User-agent: Applebot
Noindex: /*/refined/

User-agent: Mediapartners-Google
Disallow: *

User-agent: google-hoteladsverifier
Disallow:

Sitemap: https://www.homeaway.com/sitemaps/SLP_Index_Sitemap_HOMEAWAY_US.xml
Sitemap: https://www.homeaway.com/sitemaps/PDP_Index_Sitemap_HOMEAWAY_US.xml