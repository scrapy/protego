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
#
# For syntax checking, see:
# http://www.frobee.com/robots-txt-check

User-agent: *

# Directories
Disallow: /includes/
Disallow: /misc/
Disallow: /modules/
Disallow: /profiles/
Allow: /profiles/*.css
Allow: /profiles/*.js
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
Allow: /profiles/foreignaffairs/themes/custom/fa/images/fa-news-feed-logo.png
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
Disallow: /register-form/
Disallow: /modal_forms/
Disallow: /ajax_forms/
Disallow: /verify/registration/
Disallow: /subscribe/
Disallow: /gift/
Disallow: /tcs/
Disallow: /js/
Disallow: /node/_search/
Disallow: /cart/
Disallow: /printmail/
Disallow: /taxonomy/
Disallow: /newsletter/
Disallow: /101014362/
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
Disallow: /?q=register-form/
Disallow: /?q=modal_forms/
Disallow: /?q=ajax_forms/
Disallow: /?q=verify/registration/
Disallow: /?q=subscribe/
Disallow: /?q=gift/
Disallow: /?q=tcs/
Disallow: /?q=js/
Disallow: /?q=node/_search/
Disallow: /?q=cart/
Disallow: /?q=printmail/
Disallow: /?q=taxonomy/
Disallow: /?q=newsletter/
Disallow: /?q=101014362/
