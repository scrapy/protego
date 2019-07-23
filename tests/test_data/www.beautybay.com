Sitemap: https://www.beautybay.com/.sitemaps/sitemap-b.xml
Sitemap: https://www.beautybay.com/.sitemaps/sitemap-b-pt.xml
Sitemap: https://www.beautybay.com/.sitemaps/sitemap-c.xml
Sitemap: https://www.beautybay.com/.sitemaps/sitemap-p.xml


User-agent: *
disallow: /checkout/
disallow: /checkout/address
disallow: /checkout/payment
disallow: /profile
disallow: /pages/suppliers_termsandconditions
disallow: /pages/suppliers_termsandconditions/
noindex: /pages/suppliers_termsandconditions/
disallow: /bag
disallow: /account/
disallow: /account/wishlist/
disallow: /account/wishlist/create/item/
disallow: /thanks/
disallow: /a/
disallow: /b/
disallow: /l/?q=*
disallow: /login/

User-agent: Yandex 
Crawl-Delay: 15