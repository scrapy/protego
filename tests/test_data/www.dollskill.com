User-agent: *

Crawl-delay: 10

Disallow: /index.php/
Disallow: /catalog/product_compare/
Disallow: /catalog/category/view/
Disallow: /catalog/product/view/
Disallow: /catalog/product/gallery/
Disallow: /catalogsearch/
Disallow: /checkout/
Disallow: /control/
Disallow: /contacts/
Disallow: /customer/
Disallow: /customize/
Disallow: /newsletter/
Disallow: /poll/
Disallow: /review/
Disallow: /sendfriend/
Disallow: /tag/
Disallow: /wishlist/

# PPaths
Disallow: /app/
Disallow: /catalog/
Disallow: /catalogsearch/
Disallow: /customer/
Disallow: /downloader/
Disallow: /lib/
Disallow: /pkginfo/
Disallow: /report/
Disallow: /tag/
Disallow: /review/
Disallow: /var/
Disallow: /ajax/index/quickview/product_id/
Disallow: /404/
Disallow: /cgi-bin/
Disallow: /includes/
Disallow: /magento/
Disallow: /stats/

# Files
Disallow: /cron.php
Disallow: /cron.sh
Disallow: /error_log
Disallow: /install.php
Disallow: /LICENSE.html
Disallow: /LICENSE.txt
Disallow: /LICENSE_AFL.txt
Disallow: /STATUS.txt

User-Agent: Googlebot
Allow: *.js
Allow: *.css

Sitemap: https://www.dollskill.com/sitemap.xml

