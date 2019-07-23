User-agent: *
Allow: /orchestration/js/
Disallow: /checkout/
Disallow: /orchestration/
Disallow: /api/
Disallow: /cgi-bin/
Disallow: /unsupported
Disallow: /blog/wp-content/
Disallow: /homepage
Disallow: /en-gb/homepage
Disallow: /fr-fr/homepage
Disallow: /de-de/homepage
Disallow: /wishlist/
Disallow: /en-gb/wishlist/
Disallow: /fr-fr/wishlist/
Disallow: /de-de/wishlist/
Disallow: */help/aplus
Disallow: /fr-ca/help/aplus
Disallow: /anthro/catalog/
Disallow: /mobile/catalog/
Disallow: *?webview=true
Disallow: /uk/en/
Noindex: /blog/wp-content/
Noindex: /homepage
Noindex: /en-gb/homepage
Noindex: /fr-fr/homepage
Noindex: /de-de/homepage
Noindex: /wishlist/
Noindex: /en-gb/wishlist/
Noindex: /fr-fr/wishlist/
Noindex: /de-de/wishlist/
Noindex: */help/aplus
Noindex: /fr-ca/help/aplus
Noindex: /anthro/catalog/
Noindex: /mobile/catalog/
Noindex: *?webview=true
Noindex: /uk/en/

Crawl-delay: 60

User-agent: Pinterest
Crawl-delay: 120

# Sitemap indexes
Sitemap: https://www.anthropologie.com/sitemapindex.xml
Sitemap: https://www.anthropologie.com/en-gb/sitemapindex.xml
Sitemap: https://www.anthropologie.com/fr-ca/sitemapindex.xml
Sitemap: https://www.anthropologie.com/fr-fr/sitemapindex.xml
Sitemap: https://www.anthropologie.com/de-de/sitemapindex.xml

