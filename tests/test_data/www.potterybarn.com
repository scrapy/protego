#
# robots.txt - Pottery Barn https://www.potterybarn.com
#

User-agent: EasouSpider
Disallow: /

User-agent: *
Disallow: /account/
Disallow: /checkout/
Disallow: /shoppingcart/
Disallow: /services/
Disallow: /shop_g/
Disallow: /shop_r/
Disallow: /products_g/
Disallow: /products_r/
Disallow: */minipip
Disallow: */quicklook
Disallow: /personalization/ 
Disallow: */show-mobile-email-signup 
Disallow: */show-join-email.jsonp 
Disallow: */registry/list.json 
Disallow: */apartment-
Allow: */apartment-furniture/

#Sitemaps
Sitemap: https://www.potterybarn.com/netstorage/ecom/sitemaps/registry/sitemapindex.xml
Sitemap: https://www.potterybarn.com/sitemap.xml
Sitemap: https://www.potterybarn.com/netstorage/sitemap-PB-tips-ideas.xml
