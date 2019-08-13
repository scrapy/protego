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

# Sitemaps
Sitemap: https://www.parents.com/sitemap.xml
Sitemap: https://www.parents.com/sitemap2.xml
Sitemap: https://www.parents.com/news-sitemap.xml

User-agent: *
Crawl-delay: .5

# Current CMS
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
Disallow: /shell/
Disallow: /taxonomy/term/*
Disallow: /content/*
Disallow: /node/add/
Disallow: /user/*
Disallow: /user/register/
Disallow: /user/password/
Disallow: /user/login/
Disallow: /user/logout/
Disallow: /node/
Disallow: /taxonomy/term/
Disallow: /?q=admin/
Disallow: /?q=comment/reply/
Disallow: /?q=filter/tips/
Disallow: /?q=node/add/
Disallow: /?q=search/
Disallow: /?q=user/password/
Disallow: /?q=user/register/
Disallow: /?q=user/login/
Disallow: /?q=user/logout/

# ONECMS
Disallow: /*.jhtml
Disallow: /*___itemUrl___
Disallow: /embed
Disallow: /oembed
Disallow: /dyn/
Disallow: /home/
Disallow: /labs/
Disallow: /order/
Disallow: /child/
Disallow: /photos/
Disallow: /common/
Disallow: /content/
Disallow: /private/
Disallow: /premium/
Disallow: /partner/
Disallow: /templates/
Disallow: /community/kudos/
Disallow: /community/user/
Disallow: /templatedata/
Disallow: /videos/theme/
Disallow: /videos/widgets/

# Content
Disallow: /shop/
Disallow: /baby-names/results/
Disallow: /baby-names/my-list/
Disallow: /baby-names/surprise-me/
Disallow: /chatbot-exporter/*
Disallow: /search*

User-agent: Googlebot
# Current CMS
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
Disallow: /shell/
Disallow: /taxonomy/term/*
Disallow: /content/*
Disallow: /node/add/
Disallow: /user/*
Disallow: /user/register/
Disallow: /user/password/
Disallow: /user/login/
Disallow: /user/logout/
Disallow: /node/
Disallow: /taxonomy/term/
Disallow: /?q=admin/
Disallow: /?q=comment/reply/
Disallow: /?q=filter/tips/
Disallow: /?q=node/add/
Disallow: /?q=search/
Disallow: /?q=user/password/
Disallow: /?q=user/register/
Disallow: /?q=user/login/
Disallow: /?q=user/logout/

# ONECMS
Disallow: /*.jhtml
Disallow: /*___itemUrl___
Disallow: /embed
Disallow: /oembed
Disallow: /dyn/
Disallow: /home/
Disallow: /labs/
Disallow: /order/
Disallow: /child/
Disallow: /photos/
Disallow: /common/
Disallow: /content/
Disallow: /private/
Disallow: /premium/
Disallow: /partner/
Disallow: /templates/
Disallow: /community/kudos/
Disallow: /community/user/
Disallow: /templatedata/
Disallow: /videos/theme/
Disallow: /videos/widgets/

# Content
Disallow: /shop/
Disallow: /baby-names/results/
Disallow: /baby-names/my-list/
Disallow: /baby-names/surprise-me/
Disallow: /chatbot-exporter/*
Disallow: /syndication/
Disallow: /search*
