#Welcome to the new Choice Hotels website.

User-agent: google-hoteladsverifier
Disallow:
Disallow: /hotelmedia

User-agent: *
Disallow: /confirmation
Disallow: /guestdata
Disallow: /modify/
Disallow: /earn-points/gift-card-
Disallow: /earn-points/triple-points-
Disallow: /earn-points/free-night-rewards-
Disallow: /earn-points/rewards-now-
Disallow: /rates
Disallow: /reservations
Disallow: /*?*brand=
Disallow: /*?*amenity=
Disallow: /es-us/es-us/
Disallow: /fr-us/fr-us/
Disallow: /fr-ca/
Disallow: /en-ca/
Disallow: /promo/thankyou
Disallow: /secret-site
Disallow: /es-us/*/hotel-reviews/
Disallow: /fr-us/*/hotel-reviews/
Disallow: /choice-privileges/promo/2179
Disallow: /choice-privileges/promo/thankyou/2179
Disallow: /choice-privileges/promo/4196

User-agent: *
Crawl-delay: 5

Sitemap: https://www.choicehotels.com/sitemap.xml

#Last updated March 21, 2019