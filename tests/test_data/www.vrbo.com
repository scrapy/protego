User-agent: *
disallow: /units/
disallow: /pm/
disallow: /index.cfm?exchangeRate=*
disallow: /listingpage.mvc/
disallow: /my/
disallow: /preview/
disallow: /traveler/profiles/
disallow: /calendar
disallow: /write
disallow: /*?q
disallow: /*?Q
disallow: /*td/profiles/
disallow: /listings/
disallow: /reviews/write/
disallow: /linktrip
disallow: /td/
disallow: /gd/
disallow: /vpv/
disallow: /forward
disallow: /auth/
disallow: /traveler/th
disallow: /traveler/api
disallow: /traveler/profile
disallow: /checkoutconfirmation
disallow: *?*adultscount*
disallow: *?emailaddress*
disallow: /paymentconfirmation
allow:  */api/vacation-rentals*

User-agent: Mediapartners-Google
Disallow:

User-agent: google-hoteladsverifier
Disallow:

Sitemap: https://www.vrbo.com/vacation-ideas/sitemap.xml
Sitemap: https://www.vrbo.com/sitemaps/PDP_Index_Sitemap_VRBO.xml
Sitemap: https://www.vrbo.com/sitemaps/SLP_Index_Sitemap_VRBO.xml
Sitemap: https://www.vrbo.com/vd2/temp/vrboserpindex.xml