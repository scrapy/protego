User-agent: *
Disallow:/craptions/archive/
Disallow:/craptions/category/
Disallow: /search/
Disallow: /forums/
Disallow: /movies/*_quotes/
Disallow: /movies/*_clips-*/
Disallow: /gallery/
Disallow: /single/
Sitemap: http://www.cracked.com/sitemap.xml

User-agent: yacy
Disallow:/search/*

User-agent: java
Disallow:/search/*
