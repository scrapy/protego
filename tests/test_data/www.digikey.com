# all crawlers
User-agent: *

Disallow: /sitecore/api/ssc/DKBeacon/Service/beacon/trackPageVisit
Disallow: /sitecore/api/ssc/Beacon/Service/beacon/trackPageVisit
Disallow: /mobile/api/*
Disallow: /VoiceAssistant/
Disallow: /VoiceAssistant/*

# Sitemaps
Sitemap: https://www.digikey.com/product-detail/sitemap.xml
Sitemap: https://www.digikey.com/product-search/sitemap.xml
Sitemap: https://www.digikey.com/Homepage-us.xml
