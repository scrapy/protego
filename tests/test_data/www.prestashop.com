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
Disallow: */node/*
Disallow: /search/
Disallow: /user/register/
Disallow: /user/password/
Disallow: /user/login/
Disallow: /user/logout/
# Paths (no clean URLs)
Disallow: /*login/*
Disallow: /*file/*
Disallow: /?q=admin/
Disallow: /?q=comment/reply/
Disallow: /?q=filter/tips/
Disallow: /?q=node/add/
Disallow: /?q=search/
Disallow: /?q=user/password/
Disallow: /?q=user/register/
Disallow: /?q=user/login/
Disallow: /?q=user/logout/
#Forum
Disallow: /forums/admin/
Disallow: /forums/cache/
Disallow: /forums/converge_local/
Disallow: /forums/hooks/
Disallow: /forums/ips_kernel/
Disallow: /forums/retail/
Disallow: /forums/public/style_captcha/
Disallow: /forums/index.php?app=core&module=task
Disallow: /forums/index.php?app=forums&module=moderate&section=moderate
Disallow: /forums/index.php?app=forums&module=extras&section=forward
Disallow: /forums/index.php?app=members&module=chat
Disallow: /forums/index.php?&unlockUserAgent=1
Disallow: /forums/*&module=search
Disallow: /forums/*app=core&module=global&section=reputation
Disallow: /forums/*app=core&module=usercp
Disallow: /forums/*app=members&module=messaging
Disallow: /forums/*&p=
Disallow: /forums/*&pid=
Disallow: /forums/*&hl=
Disallow: /forums/*&start=
Disallow: /forums/*view__getnewpost$
Disallow: /forums/*view__getlastpost$
Disallow: /forums/*view__old$
Disallow: /forums/*view__new$
Disallow: /forums/*view__getfirst$
Disallow: /forums/*view__getprevious$
Disallow: /forums/*view__getnext$
Disallow: /forums/*view__getlast$
Disallow: /forums/*&view=getnewpost$
Disallow: /forums/*&view=getlastpost$
Disallow: /forums/*&view=old$
Disallow: /forums/*&view=new$
Disallow: /forums/*&view=getfirst$
Disallow: /forums/*&view=getprevious$
Disallow: /forums/*&view=getnext$
Disallow: /forums/*&view=getlast$
Disallow: /forums/*?s=
Disallow: /forums/*&s=
Disallow: /forums/index.php?app=core&module=global&section=login&do=deleteCookies
Disallow: /forums/index.php?app=forums&module=extras&section=rating
Disallow: /forums/index.php?app=forums&module=forums&section=markasread
Disallow: /forums/*&do=who
Disallow: /forums/applications/core/interface/file/attachment.php
Disallow: /forums/*&section=dname
Disallow: /forums/tags/
Disallow: */profile/*/reputation/
Disallow: /forums/*?do=
Disallow: /forums/*&do=
Disallow: /forums/*?sortby=
Disallow: /forums/*&sortby=
