
Sitemap: https://www.deluxe.com/sitemap-index.xml

User-agent: *
Disallow: /cgi/
Disallow: /deluxe-route.jsp
Disallow: /dlxbrtrain/
Disallow: /dlxcard/
Disallow: /dlxdemo/
Disallow: /dlxempl/
Disallow: /dlxexchg/
Disallow: /echecks/drawing/
Disallow: /echecks/terms/
Disallow: /healthcare-products/
Disallow: /idtbpp/
Disallow: /logolp/
Disallow: /products-services/financial-link-guidelines.jsp
Disallow: /shopdeluxe/catalog/facetSearchCategory.jsp
Disallow: /slp10/
Disallow: /tag-products/
Disallow: /webspecials/
 
# From Inkhead updated on 2-19
Disallow: /products/includes/
Disallow: /products/secure/
Disallow: /products/customize/
Disallow: /products/m/wishlistadd.cshtml
Disallow: /products/net/
# update end

User-agent: msnbot
Crawl-delay: 25

User-agent: AdsBot-Google
Crawl-delay: 25