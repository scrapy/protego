User-Agent: *
Disallow: /cgi-bin/
Disallow: /co/
Allow: /co/StoreLocator
Allow: /co/api/OpenApplyPromo
Allow: /shop-online
Disallow: /shop/all-products
Disallow: /shop/sort/
Disallow: /is/image/LandsEnd/
Disallow: /ix
Disallow: /shop/sort
Disallow: /shop/search
Disallow: /shop/on-the-counter
Disallow: /search
Disallow: /autocomplete

User-Agent: Springbot
Disallow: /

User-Agent: Pinterest
Disallow: /

User-Agent: Yandex
Disallow: /

User-agent: bingbot
User-agent: msnbot
User-agent: bingbot/2.0
Disallow: /cgi-bin/
Disallow: /co/
Allow: /co/StoreLocator
Allow: /shop-online
Disallow: /shop/all-products
Disallow: /shop/sort/
Disallow: /is/image/LandsEnd/
Disallow: /ix
Disallow: /pp/
Disallow: /shop/sort
Disallow: /shop/search
Disallow: /shop/on-the-counter
Disallow: /search
Disallow: /autocomplete
Crawl-delay: 1

Sitemap: https://www.landsend.com/sitemap/index.xml
Sitemap: https://www.landsend.com/shop-online/sitemap.xml
