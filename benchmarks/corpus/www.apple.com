# robots.txt for https://www.apple.com/

User-agent: *
Disallow: /*shop/browse/overlay/*
Disallow: /*shop/iphone/payments/overlay/*
Disallow: /cn/*/aow/*
Disallow: /tmall*
Allow: /ac/globalnav/2.0/*/images/ac-globalnav/globalnav/search/* 	

User-agent: Baiduspider
Disallow: /*
Allow: /cn/*
Allow: /cn-edu/*
Allow: /cn-k12/*

User-agent: HaoSouSpider
Disallow: /*
Allow: /cn/*
Allow: /cn-edu/*
Allow: /cn-k12/*

User-agent: Sogou web spider
Disallow: /*
Allow: /cn/*
Allow: /cn-k12/*

User-agent: Sogou inst spider
Disallow: /*
Allow: /cn/*
Allow: /cn-k12/*

User-agent: Sogou spider2
Disallow: /*
Allow: /cn/*
Allow: /cn-k12/*

#DaumWebMasterTool:6ff40e0f09564a9d4e3bc80e7cbde7c196677a2f5f610eb9c029836774f9a8e9:D9a8IEFAzmC/NWsQ3tB0Wg==

Sitemap: https://www.apple.com/shop/sitemap.xml
Sitemap: https://www.apple.com/autopush/sitemap/sitemap-index.xml
Sitemap: https://www.apple.com/newsroom/sitemap.xml
Sitemap: https://www.apple.com/retail/sitemap/sitemap.xml
Sitemap: https://www.apple.com/today/sitemap-index.xml
