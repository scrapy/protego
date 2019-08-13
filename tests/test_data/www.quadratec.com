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

# Site map
sitemap: https://www.quadratec.com/sitemap.xml

# JS/CSS
Allow: /misc/*.js$
Allow: /misc/*.js?
Allow: /misc/*.css$
Allow: /misc/*.css?
Allow: /misc/*.png$
Allow: /misc/*.png?
Allow: /modules/*.js$
Allow: /modules/*.js?
Allow: /modules/*.css$
Allow: /modules/*.css?
Allow: /profiles/*.js$
Allow: /profiles/*.js?
Allow: /profiles/*.css$
Allow: /profiles/*.css?
Allow: /themes/*.js$
Allow: /themes/*.js?
Allow: /themes/*.css$
Allow: /themes/*.css?


# Directories
Disallow: /includes/
Disallow: /misc/
Disallow: /modules/
Disallow: /profiles/
Disallow: /scripts/
Disallow: /themes/
Disallow: /customer-ajax/
Disallow: /nocache/
Disallow: /wheel-tire-builder/

# Specific paths to exclude
#Disallow: /video/

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
Disallow: /user/
Disallow: /user
Disallow: /wishlist/
Disallow: /cart
Disallow: /checkout
Disallow: /checkout/
Disallow: /account
Disallow: /account/
Disallow: /add_to_cart
Disallow: /add_to_cart*
Disallow: /autocomplete/quadratec_search_block
Disallow: /customer-ajax/

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
