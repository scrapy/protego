User-agent: *
Allow: /content/dam/
Allow: /content/food-com/jcr:content/analytics.sitecatalyst.js
Disallow: /content/
Allow: /libs/granite/
Disallow: /libs/
Disallow: /services/
Disallow: /search/
Disallow: /features/apple-news/
Disallow: /mobile-app/
Disallow: /sponsored/in-the-kitchen/
Disallow: /shows/tv-schedule.*
Disallow: *.recipePrint
Disallow: *.embed
Disallow: */recentlyaired*
Disallow: */ratings*
Allow: *.lazy-fetch*
Allow: *hotspot*

User-agent: Mediapartners-Google
Disallow:

Sitemap: https://www.foodnetwork.com/sitemaps/sitemap_food_index.xml
Sitemap: https://www.foodnetwork.com/fn-dish/news-sitemap.xml
Sitemap: https://www.foodnetwork.com/healthyeats/news-sitemap.xml

User-agent: Googlebot-News
Allow: /fn-dish
Allow: /healthyeats
Disallow: /