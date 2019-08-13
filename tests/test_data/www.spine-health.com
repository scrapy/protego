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
# http://www.robotstxt.org/robotstxt.html

User-agent: *
Crawl-delay: 10
# CSS, JS, Images
Allow: *.css$
Allow: *.css?
Allow: *.js$
Allow: *.js?
Allow: *.gif$
Allow: *.gif?
Allow: *.jpg$
Allow: *.jpg?
Allow: *.jpeg$
Allow: *.jpeg?
Allow: *.png$
Allow: *.png?
Allow: *.eot$
Allow: *.eot?
Allow: *.svg$
Allow: *.svg?
Allow: *.ttf$
Allow: *.ttf?
Allow: *.woff$
Allow: *.woff?
Allow: *.woff2$
Allow: *.woff2?
Allow: /misc/*.css$
Allow: /misc/*.css?
Allow: /misc/*.js$
Allow: /misc/*.js?
Allow: /misc/*.gif
Allow: /misc/*.jpg
Allow: /misc/*.jpeg
Allow: /misc/*.png
Allow: /modules/*.css$
Allow: /modules/*.css?
Allow: /modules/*.js$
Allow: /modules/*.js?
Allow: /modules/*.gif
Allow: /modules/*.jpg
Allow: /modules/*.jpeg
Allow: /modules/*.png
Allow: /profiles/*.css$
Allow: /profiles/*.css?
Allow: /profiles/*.js$
Allow: /profiles/*.js?
Allow: /profiles/*.gif
Allow: /profiles/*.jpg
Allow: /profiles/*.jpeg
Allow: /profiles/*.png
Allow: /themes/*.css$
Allow: /themes/*.css?
Allow: /themes/*.js$
Allow: /themes/*.js?
Allow: /themes/*.gif
Allow: /themes/*.jpg
Allow: /themes/*.jpeg
Allow: /themes/*.png
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
# Paths - old site (no clean URLs)
Disallow: /?q=abuse/
Disallow: /?q=aggregator/
Disallow: /?q=buddies/
Disallow: /?q=comment_notify/
Disallow: /?q=user/
Disallow: /?q=contact/
Disallow: /?q=filter/
Disallow: /?q=logout/
Disallow: /?q=myuserpoints/
# Custom Paths
Disallow: /node/
Disallow: /database/
Disallow: /sites/
Disallow: /updates/
Disallow: /tagadelic/
Disallow: /reports/
Disallow: /Find/
Disallow: /doctor/find-a-doctor/
Disallow: /doctor/search/
Disallow: /doctor/zip/
Disallow: /search/
Disallow: /seek
Disallow: /userpoints?
Disallow: /videowidget
Disallow: /abuse/
Disallow: /aggregator/
Disallow: /buddies/
Disallow: /buddy
Disallow: /buddylist
Disallow: /claim-profile/
Disallow: /comment/
Disallow: /comment_notify/
Disallow: /contact/
Disallow: /filter/
Disallow: /image_captcha/
Disallow: /logout/
Disallow: /myuserpoints/
Disallow: /nodereference/autocomplete/
Disallow: /print/
Disallow: /privatemessage/
Disallow: /taxonomy/
Disallow: /user/
Disallow: /field-collection/
Disallow: /image-gallery/node/
Disallow: /test-page
Disallow: /sponsored-content-legal
Disallow: /verified-spine-health
# varnish
Disallow: /healthcheck
# Analytics Paths
Disallow: /internal/
Disallow: /external/
Disallow: /chat
Allow: /profiles/veritas/modules/custom/vh_footer_ads/api/api.php

Sitemap: https://www.spine-health.com/sitemap.xml
