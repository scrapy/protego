# robots.txt file for www.shopify.com

User-agent: *

Disallow: /technology/tagged/*page*
Disallow: /landing
Disallow: /blogsearch
Disallow: /blog/search
Disallow: /ventureone
Disallow: /*digital_wallets/dialog
Disallow: /technology.atom
Disallow: /blogs/blog.atom
Disallow: /blogs/technology.atom
Disallow: /blog.atom
Disallow: /tools/business-name-generator/searchbutton*
Disallow: /tools/business-name-generator/searchpage*
Disallow: /tools/business-name-generator/searchutf8*
Disallow: /cannabis
Disallow: /growth-tools-assets
Disallow: /email-validation


Disallow: /tools/slogan-maker/show*

Disallow: /encyclopedia/search*

Sitemap: https://www.shopify.com/sitemap.xml
Sitemap: https://www.shopify.com/sitemap_blog.xml
