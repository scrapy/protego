User-agent: *
Allow: /content/dam/
Allow: /content/diy-com/jcr:content/analytics.sitecatalyst.js
Disallow: /content/
Allow: /libs/granite/
Disallow: /libs/
Disallow: /services/
Disallow: /search/
Disallow: /features/apple-news/
Disallow: /shows/tv-schedule.*
Disallow: *.embed
Allow: *.lazy-fetch*
Allow: *hotspot*

User-agent: Mediapartners-Google
Disallow:

Sitemap: https://www.diynetwork.com/sitemaps/sitemap_diy_index.xml
