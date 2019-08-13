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
# CSS, JS, Images
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

# .............dotnet start.................

# Directories
Disallow: /controls/
Disallow: /CommonControls/
Disallow: /services/
Disallow: /ads/
Disallow: /8397/INV-NA/
Disallow: /8397/inv-na/
Disallow: /compare/

# Files
Disallow: /offsite.asp

# .............dotnet end.................

# .............d start.................
Disallow: /sites/

# Pages
Disallow: /maintenance.html
Disallow: /simulator/maintenance.html

# JS
Disallow: /corp/nativotemplate.aspx

# Java API
Disallow: /searches/v1/
Disallow: /meta_freebase/v1/

# Term topic center
Disallow:/*-viewall.asp

# FA Network API
Disallow:/advisor-network/api/

# Markets API
Disallow:/markets/api/

# Markets Embeddable KOM
Disallow:/markets/key-metrics/embed/

# All Accounts
Disallow:/accounts/

# All SEM paths
Disallow:/sem/

#INV-2289
Disallow:/vcb/
Disallow:/widgets/
Disallow:/vcb_lib/

# Currently not used, was a valid path temporarily. Leaving this for future consideration.
Disallow:/api/

# All simplesaml paths
Disallow: /simplesaml/

# version.txt
Disallow: /version.txt

#Block Partner Content
Disallow:/partner/
Noindex: /partner/

#Block Technical Charts
Disallow: /markets/stocks/*/technical-chart/
Disallow: /markets/etfs/*/technical-chart/
Noindex: /markets/stocks/*/technical-chart/
Noindex: /markets/etfs/*/technical-chart/

#Block markets subpages
Disallow: /markets/stocks/
Disallow: /markets/etfs/
Disallow: /markets/watchlist/
Disallow: /markets/stock-analysis/
Disallow: /markets/equities/
Disallow: /markets/stock/
Disallow: /markets/watchlist-signup/
Disallow: /markets/sectors/
Disallow: /markets/bonds/
Disallow: /markets/commodities/
Disallow: /markets/etf/
Noindex: /markets/stocks/
Noindex: /markets/etfs/
Noindex: /markets/watchlist/
Noindex: /markets/stock-analysis/
Noindex: /markets/equities/
Noindex: /markets/stock/
Noindex: /markets/watchlist-signup/
Noindex: /markets/sectors/
Noindex: /markets/bonds/
Noindex: /markets/commodities/
Noindex: /markets/etf/
Noindex: /markets/api/
Noindex: /markets/key-metrics/embed/
Disallow: /markets/api/
Disallow: /markets/key-metrics/embed/
Allow: /markets/

#Noindex search pages
Noindex: /search/

#Stop Forex 404s
Disallow: /forex/
Noindex: /forex/
Allow: /forex/education/


#dotdash rules start 
Allow: /thmb/*
Allow: *utm_medium=social
Noindex: *globeNoTest
Disallow: *globeNoTest
Noindex: *globeResourceConcat
Disallow: *globeResourceConcat
Noindex: *globeTest_optimizelyInclusion
Disallow: *globeTest_optimizelyInclusion
Noindex: *?kw
Disallow: *?kw

Allow: /simulator/
Disallow: /simulator/portfolio/
Disallow: /simulator/game/
Disallow: /simulator/ranking/
Disallow: /simulator/home/
Disallow: /simulator/trade/
Disallow: /simulator/markets/
Disallow: /simulator/fundamental/
Disallow: /simulator/messages/
Disallow: /simulator/stocks/
Disallow: /simulator/technical/
Disallow: /simulator/ajax/
Disallow: /simulator/help/
Disallow: /simulator/Home.aspx
Disallow: /simulator/messages/
Noindex: /simulator/portfolio/
Noindex: /simulator/game/
Noindex: /simulator/ranking/
Noindex: /simulator/home/
Noindex: /simulator/trade/
Noindex: /simulator/markets/
Noindex: /simulator/fundamental/
Noindex: /simulator/messages/
Noindex: /simulator/stocks/
Noindex: /simulator/technical/
Noindex: /simulator/ajax/
Noindex: /simulator/help/
Noindex: /simulator/Home.aspx
Noindex: /simulator/messages/