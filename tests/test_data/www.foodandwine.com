#                          /[-])//  ___
#                     __ --\ `_/~--|  / \
#                   /_-/~~--~~ /~~~\\_\ /\
#                   |  |___|===|_-- | \ \ \
# _/~~~~~~~~|~~\,   ---|---\___/----|  \/\-\
# ~\________|__/   / // \__ |  ||  / | |   | |
#          ,~-|~~~~~\--, | \|--|/~|||  |   | |
#          [3-|____---~~ _--'==;/ _,   |   |_|
#                      /   /\__|_/  \  \__/--/
#                     /---/_\  -___/ |  /,--|
#                     /  /\/~--|   | |  \///
#                    /  / |-__ \    |/
#                   |--/ /      |-- | \
#                  \^~~\\/\      \   \/- _
#                   \    |  \     |~~\~~| \
#                    \    \  \     \   \  | \
#                      \    \ |     \   \    \
#                       |~~|\/\|     \   \   |
#                      |   |/         \_--_- |\
#                      |  /            /   |/\/
#                       ~~             /  /
#                                     |__/
#
# robots.txt
#
# For more information about the robots.txt standard, see:
# http://www.robotstxt.org/wc/robots.html
#
# For syntax checking, see:
# http://www.sxw.org.uk/computing/robots/check.html

# Sitemaps
Sitemap: https://www.foodandwine.com/sitemap-index.xml

User-agent: *
crawl-delay: .5
Disallow: /includes/
Disallow: /misc/
Disallow: /modules/
Disallow: /profiles/
Disallow: /scripts/
Disallow: /themes/
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
Disallow: /admin/
Disallow: /comment/reply/
Disallow: /filter/tips/
Disallow: /node*
Disallow: /user/register/
Disallow: /user/password/
Disallow: /user/login/
Disallow: /user/logout/
Disallow: /private/
Disallow: /embed
Disallow: /oembed
Disallow: /?q=admin/
Disallow: /?q=comment/reply/
Disallow: /?q=filter/tips/
Disallow: /?q=node/add/
Disallow: /?q=search/
Disallow: /?q=user/password/
Disallow: /?q=user/register/
Disallow: /?q=user/login/
Disallow: /?q=user/logout/

# Content
Disallow: /search*


User-agent: Googlebot
Disallow: /includes/
Disallow: /misc/
Disallow: /modules/
Disallow: /profiles/
Disallow: /scripts/
Disallow: /themes/
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
Disallow: /admin/
Disallow: /comment/reply/
Disallow: /filter/tips/
Disallow: /node*
Disallow: /user/register/
Disallow: /user/password/
Disallow: /user/login/
Disallow: /user/logout/
Disallow: /private/
Disallow: /embed
Disallow: /oembed
Disallow: /?q=admin/
Disallow: /?q=comment/reply/
Disallow: /?q=filter/tips/
Disallow: /?q=node/add/
Disallow: /?q=search/
Disallow: /?q=user/password/
Disallow: /?q=user/register/
Disallow: /?q=user/login/
Disallow: /?q=user/logout/

# Content
Disallow: /search*
Disallow: /syndication/
