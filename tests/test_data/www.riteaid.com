User-agent: *
Disallow: /secure/
Disallow: /sitesearch/
Disallow: /redir/
Disallow: /stores/locator/
Disallow: /corporate/investor-relations/presentations
 
# Elite Disallowed Index
Disallow: /shop/*?p=
Disallow: /shop/*?mode=
Disallow: /shop/*?limit=
Disallow: /shop/*?dir=
 
# Directories
Disallow: /shop/404/
Disallow: /shop/app/
Disallow: /shop/cgi-bin/
Disallow: /shop/downloader/
Disallow: /shop/includes/
Disallow: /shop/js/
Disallow: /shop/lib/
Disallow: /shop/pkginfo/
Disallow: /shop/report/
Disallow: /shop/skin/
Disallow: /shop/stats/
Disallow: /shop/var/
 
# Paths (clean URLs)
Disallow: /shop/index.php/
Disallow: /shop/catalog/product_compare/
Disallow: /shop/catalog/category/view/
Disallow: /shop/catalog/product/view/
Disallow: /shop/catalogsearch/
Disallow: /shop/checkout/
Disallow: /shop/control/
Disallow: /shop/contacts/
Disallow: /shop/customer/
Disallow: /shop/customize/
Disallow: /shop/newsletter/
Disallow: /shop/poll/
Disallow: /shop/review/
Disallow: /shop/sendfriend/
Disallow: /shop/tag/
Disallow: /shop/wishlist/

# Old CMS Pages 
Disallow: /shop/about-magento-demo-store
Disallow: /shop/customer-service
Disallow: /shop/enable-cookies
Disallow: /shop/privacy-policy-cookie-restriction-mode
Disallow: /shop/private-sales
Disallow: /shop/reward-points

# Files
Disallow: /shop/cron.php
Disallow: /shop/cron.sh
Disallow: /shop/error_log
Disallow: /shop/install.php
Disallow: /shop/LICENSE.html
Disallow: /shop/LICENSE.txt
Disallow: /shop/LICENSE_AFL.txt
Disallow: /shop/STATUS.txt
 
# Paths (no clean URLs)
Disallow: /shop/*.js$
Disallow: /shop/*.css$
Disallow: /shop/*.php$
Disallow: /shop/*?p=*&
Disallow: /shop/*?SID=
 
# Images
User-agent: Googlebot-Image
Disallow: /shop/
Allow: /shop/media/catalog/product/
 
# Sitemap
Sitemap: https://www.riteaid.com/sitemap.xml
Sitemap: https://www.riteaid.com/shop/media/sitemap.xml
Sitemap: https://photo.riteaid.com/sitemap.xml
