#
# robots.txt - Williams-Sonoma https://www.williams-sonoma.com
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

#Sitemaps
Sitemap: https://www.williams-sonoma.com/netstorage/ecom/sitemaps/registry/sitemapindex.xml
Sitemap: https://www.williams-sonoma.com/sitemap.xml
Sitemap: https://www.williams-sonoma.com/netstorage/sitemap-recipe.xml
Sitemap: https://www.williams-sonoma.com/netstorage/sitemap-WS-pages.xml


