User-agent: *
Disallow: /user/
Disallow: /local-wedding-resources*/filter_*
Disallow: /*/slideshow/*
Disallow: /services/redirect*
Disallow: /*?printable=true*
Disallow: /rest/galleries/*
Disallow: /rest/weddingwire/*
Disallow: /local-wedding-resources/*

Disallow: /search
Disallow: /search?
Disallow: /search/
Disallow: /preview/

Sitemap: https://www.brides.com/sitemap.xml
Sitemap: https://www.brides.com/feed/google-latest-news/sitemap-google-news
