User-agent: bingbot
Crawl-delay: 10

User-agent: *
Allow: /
Allow: /*+f-*
Allow: /*?_s=gppc*
Allow: /*/browse/featuredproduct/*

Disallow: /*_r=*
Disallow: /*query*
Disallow: /*-merchandise-*
Disallow: /account
Disallow: /track-order
Disallow: /cart
Disallow: /world-baseball-classic/*
Disallow: /cooperstown-teams/*
Disallow: /milb/*
Disallow: /*-other*

Sitemap: /sitemapmlbshopindex.xml
