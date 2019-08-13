User-agent: *
Disallow: /*/search*
Disallow: /*/build-quote*
Disallow: /*/product-comparison
Disallow: /*/legal-notices
Disallow: /*/tipform*
Disallow: /content/crs/*
Disallow: /dls/*

Noindex: /en_US/articles/thank-you-for-your-request-ssl
Noindex: /*/*.metadata.html
Noindex: /*/*.index.html

SITEMAP: https://www.cat.com/sitemap.xml