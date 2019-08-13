# robots.txt 

User-agent: *
Disallow: */sitecore
Disallow: /en/sitecore
Disallow: /en/creo-simulation-live-ebook/
Disallow: /Development/
Disallow: /Development
Disallow: /en/Development/
Disallow: /de/Development/
Disallow: /fr/Development/
Disallow: /it/Development/
Disallow: /ja/Development/
Disallow: /ru/Development/
Disallow: /ko/Development/
Disallow: /pt/Development/
Disallow: /cn/Development/
Disallow: /tw/Development/
Disallow: /Thingworx/Manufacturing-apps/Sitecore
Sitemap: https://www.ptc.com/sitemap.xml
Disallow: /sitecore/content
Disallow: */Datasources/*
Disallow: */Components/*
Disallow: /*.pdf
Disallow: /*thank-you/
Disallow: /media library/PDF/
Disallow: /Media Library/PDF/
Disallow: /media library/Files/PDFs/
