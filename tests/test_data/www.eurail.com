#
# robots.txt
#
# This file is to prevent the crawling and indexing of certain parts
# of your site by web crawlers and spiders run by sites like Yahoo!
# and Google. By telling these "robots" where not to go on your site,
# you save bandwidth and server resources.
#
# This file will be ignored unless it is at the root of your host:
# Used:    http://example.com/robots.txt
# Ignored: http://example.com/site/robots.txt
#
# For more information about the robots.txt standard, see:
# http://www.robotstxt.org/wc/robots.html
#
# For syntax checking, see:
# http://www.sxw.org.uk/computing/robots/check.html

User-agent: *
Crawl-delay: 10
# Directories
Disallow: /includes/
Disallow: /misc/
Disallow: /modules/
Disallow: /profiles/
Disallow: /scripts/
Disallow: /themes/
# Files
Disallow: /CHANGELOG.txt
Disallow: /cron.php
Disallow: /INSTALL.mysql.txt
Disallow: /INSTALL.pgsql.txt
Disallow: /INSTALL.sqlite.txt
Disallow: /install.php
Disallow: /INSTALL.txt
Disallow: /LICENSE.txt
Disallow: /MAINTAINERS.txt
Disallow: /update.php
Disallow: /UPGRADE.txt
Disallow: /xmlrpc.php
# Paths (clean URLs)
Disallow: /admin/
Disallow: /comment/reply/
Disallow: /filter/tips/
Disallow: /node/add/
Disallow: /search/
Disallow: /user/register/
Disallow: /user/password/
Disallow: /user/login/
Disallow: /user/logout/
Disallow: /ajax/eurail-shop/add-to-cart/
Disallow: /ajax/eurail_passfinder/add_to_cart/
# Paths (no clean URLs)
Disallow: /?q=admin/
Disallow: /?q=comment/reply/
Disallow: /?q=filter/tips/
Disallow: /?q=node/add/
Disallow: /?q=search/
Disallow: /?q=user/password/
Disallow: /?q=user/register/
Disallow: /?q=user/login/
Disallow: /?q=user/logout/
# Paths (Nodes which include a 'Display in iframe' checkbox)
Disallow: /node/12621
Disallow: /thank-you-page-poll-page-static-page
Disallow: /?q=node/12621
Disallow: /?q=thank-you-page-poll-page-static-page
Disallow: /node/12626
Disallow: /thank-you-page-poll-page-result-static-page
Disallow: /?q=node/12626
Disallow: /?q=thank-you-page-poll-page-result-static-page
Disallow: /node/13101
Disallow: /book-your-hotel
Disallow: /?q=node/13101
Disallow: /?q=book-your-hotel
Disallow: /node/14901
Disallow: /reservations-thank-you-page
Disallow: /?q=node/14901
Disallow: /?q=reservations-thank-you-page
Disallow: /node/30892
Disallow: /node/30892
Disallow: /?q=node/30892
Disallow: /?q=node/30892
Disallow: /node/30902
Disallow: /node/30902
Disallow: /?q=node/30902
Disallow: /?q=node/30902
Disallow: /node/31072
Disallow: /node/31072
Disallow: /?q=node/31072
Disallow: /?q=node/31072
Disallow: /node/31817
Disallow: /node/31817
Disallow: /?q=node/31817
Disallow: /?q=node/31817
Disallow: /node/63351
Disallow: /node/63351
Disallow: /?q=node/63351
Disallow: /?q=node/63351
Disallow: /node/63356
Disallow: /node/63356
Disallow: /?q=node/63356
Disallow: /?q=node/63356
Disallow: /node/63361
Disallow: /node/63361
Disallow: /?q=node/63361
Disallow: /?q=node/63361
Disallow: /node/63366
Disallow: /node/63366
Disallow: /?q=node/63366
Disallow: /?q=node/63366
Disallow: /node/63371
Disallow: /node/63371
Disallow: /?q=node/63371
Disallow: /?q=node/63371
Disallow: /node/63376
Disallow: /node/63376
Disallow: /?q=node/63376
Disallow: /?q=node/63376
Disallow: /node/63381
Disallow: /node/63381
Disallow: /?q=node/63381
Disallow: /?q=node/63381
Disallow: /node/63386
Disallow: /node/63386
Disallow: /?q=node/63386
Disallow: /?q=node/63386
Disallow: /node/64131
Disallow: /node/64131
Disallow: /?q=node/64131
Disallow: /?q=node/64131
Disallow: /node/64136
Disallow: /node/64136
Disallow: /?q=node/64136
Disallow: /?q=node/64136
Disallow: /node/64141
Disallow: /node/64141
Disallow: /?q=node/64141
Disallow: /?q=node/64141
Disallow: /node/64146
Disallow: /node/64146
Disallow: /?q=node/64146
Disallow: /?q=node/64146
Disallow: /node/67891
Disallow: /node/67891
Disallow: /?q=node/67891
Disallow: /?q=node/67891
Disallow: /node/67896
Disallow: /node/67896
Disallow: /?q=node/67896
Disallow: /?q=node/67896
Disallow: /node/67901
Disallow: /node/67901
Disallow: /?q=node/67901
Disallow: /?q=node/67901
Disallow: /node/67906
Disallow: /node/67906
Disallow: /?q=node/67906
Disallow: /?q=node/67906
Sitemap: https://www.eurail.com/sitemap.xml
Sitemap: https://www.eurail.com/sitemap-aem.xml
