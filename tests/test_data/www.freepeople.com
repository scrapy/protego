User-agent: *
Allow: /orchestration/js/
Disallow: /admin/
Disallow: /QUERYID/
Disallow: /resources/_shared/images/collection/
Disallow: /profile/
Disallow: /profile/me/
Disallow: /account/
Disallow: /checkout/
Disallow: /orchestration/
Disallow: /api/
Disallow: /cgi-bin/
Disallow: /unsupported
Disallow: /wishlist/
Disallow: /blog/wp-content/
Disallow: /homepage
Disallow: /china/homepage
Disallow: /uk/homepage
Disallow: *?webview=true
Noindex: /wishlist/
Noindex: /blog/wp-content/
Noindex: /homepage
Noindex: /china/homepage
Noindex: /uk/homepage
Noindex: *?webview=true


Crawl-delay: 1

User-agent: Pinterest
Crawl-delay: 120

# Sitemap indexes
Sitemap: https://www.freepeople.com/sitemapindex.xml
Sitemap: https://www.freepeople.com/uk/sitemapindex.xml
Sitemap: https://www.freepeople.com/china/sitemapindex.xml