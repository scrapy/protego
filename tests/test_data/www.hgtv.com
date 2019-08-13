User-agent: *
Allow: /content/dam/
Allow: /content/hgtv-com/jcr:content/analytics.sitecatalyst.js
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

Sitemap: https://www.hgtv.com/sitemaps/sitemap_hgtv_index.xml
