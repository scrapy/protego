# For all robots
User-agent: *

# Block access to specific groups of pages
Disallow: /en/cart*
Disallow: /es/cart*
Disallow: */checkout*
Disallow: */my-account*
Disallow: */job*

Disallow: *pageSize=24*
Disallow: *pageSize=30*

Disallow: /en/search*jobId*
Disallow: /es/search*jobId*
Disallow: /search*jobId*

Disallow: /seo/*

Disallow: /store-nearme
Disallow: /store-finder

Disallow: *referer=sidebar_form-universal
Disallow: *referer=sidebar_form-exactfit
Disallow: *referer=nol-veh-conds

Disallow: /en/my-vehicle/vehicleType/*
Disallow: /es/my-vehicle/vehicleType/*
Disallow: /fr/my-vehicle/vehicleType/*

Disallow: */years/*

#Noindex to help expedite removing indexation of these URLs
Noindex: /en/search*jobId*
Noindex: /es/search*jobId*
Noindex: /search*jobId*
Noindex: /seo/*

#Block Crawlers from accessing any distil pages
Disallow: /distil*

# Block CazoodleBot as it does not present correct accept content headers
User-agent: CazoodleBot
Disallow: /

# Block MJ12bot as it is just noise
User-agent: MJ12bot
Disallow: /

# Block dotbot as it cannot parse base urls properly
User-agent: dotbot/1.0
Disallow: /

# Block Gigabot
User-agent: Gigabot
Disallow: /

# Allow search crawlers to discover the sitemap
Sitemap: https://www.napaonline.com/nol_sitemap_https.xml
Sitemap: https://www.napaonline.com/nol_store_sitemap_https.xml
Sitemap: https://www.napaonline.com/napa_category_sitemap_https.xml
Sitemap: https://www.napaonline.com/vlp_sitemap_https.xml