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
Sitemap: https://www.travelandleisure.com/sitemap-index.xml

User-agent: *
crawl-delay: .5
# CMS FE
Disallow: /includes/
Disallow: /misc/
Disallow: /modules/
Disallow: /profiles/
Disallow: /scripts/
Disallow: /themes/
Disallow: /private/
Disallow: /embed
Disallow: /oembed
Disallow: /admin/
Disallow: /comment/reply/
Disallow: /filter/tips/
Disallow: /node*
Disallow: /user/register/
Disallow: /user/password/
Disallow: /user/login/
Disallow: /user/logout/
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
# CMS FE
Disallow: /includes/
Disallow: /misc/
Disallow: /modules/
Disallow: /profiles/
Disallow: /scripts/
Disallow: /themes/
Disallow: /private/
Disallow: /embed
Disallow: /oembed
Disallow: /admin/
Disallow: /comment/reply/
Disallow: /filter/tips/
Disallow: /node*
Disallow: /user/register/
Disallow: /user/password/
Disallow: /user/login/
Disallow: /user/logout/
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
