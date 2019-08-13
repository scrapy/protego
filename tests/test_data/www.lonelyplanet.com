User-agent: *
Disallow: /gateway/
Disallow: /thorntree/*.jspa*
Disallow: /thorntree/*.cfm*
Disallow: /thorntree/print/
Disallow: /thorntree/forums/search
Disallow: /thorntree/profiles/*/activities
Disallow: /members/*
Disallow: /assets/
Disallow: /*?create_review=true*
Disallow: /contact/business_listings/

Disallow: *searchResult?q
Disallow: *search?q
Disallow: *?utf8
Disallow: *?search
Disallow: *?&search
Disallow: *&search
Disallow: *?sort_dir
Disallow: *?sort_order
Disallow: *?filters
Disallow: *?ab_tours_cta
Disallow: *?authenticity_token
Disallow: *?ab_viator_activity_cta
Disallow: *?lpaffil
Disallow: *?category

Sitemap: https://www.lonelyplanet.com/thorntree_sitemap.xml.gz
Sitemap: https://www.lonelyplanet.com/sitemaps/dotcom-sitemaps/sitemaps.xml
Sitemap: https://www.lonelyplanet.com/video/smap.xml

User-agent: Sphere (www.sphere.com) scout*at*sphere*dot*com
Crawl-delay: 0.5

User-agent: BLEXBot
Crawl-delay: 10

User-agent: Blekkobot
Crawl-delay: 10

User-agent: 008
Disallow: /

User-agent: voltron
Disallow: /
