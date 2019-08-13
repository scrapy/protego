User-agent: *
Disallow: /sitecore/
Disallow: /mufc/
Allow: /AssetPicker/Images/
Allow: /AssetPicker/images/
Disallow: /AssetPicker/
Disallow: /assets/
Disallow: /ruxitagentjs_2SVfqr_10139180201161915.js
Disallow: /build/
Disallow: /en/myunited/
Disallow: /fr/myunited/
Disallow: /es/myunited/
Disallow: /en/myunited/
Disallow: /ar/myunited/
Disallow: /zh/myunited/
Disallow: /ja/myunited/
Disallow: /ko/myunited/
Disallow: */social*
Disallow: */collection*
Disallow: /*search?q=*
Sitemap: https://www.manutd.com/sitemap.xml


User-agent: Twitterbot
Allow: /AssetPicker/Images
Disallow: /*search?q=*

User-agent: facebookexternalhit
Allow: /AssetPicker/Images
Disallow: /*search?q=*

User-agent: Googlebot
Allow: /build/
Disallow: /*search?q=*

User-agent: Googlebot-News
Allow: /build/
Disallow: /*search?q=*

User-agent: Googlebot-Video
Allow: /build/
Disallow: /*search?q=*

User-agent: Googlebot-Mobile
Allow: /build/
Disallow: /*search?q=*

User-agent: Googlebot-Image
Allow: /build/
Disallow: /*search?q=*

Allow: /.well-known/amphtml/apikey.pub 

