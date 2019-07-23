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

Sitemap: https://www.yourtango.com/sitemap
Sitemap: https://www.yourtango.com/sitemap.xml

User-agent: Mediapartners-Google
Disallow:

User-agent: *


# Directories
Disallow: /feed/
Noindex: /experts/search
Noindex: /experts/search/
Noindex: /taxonomy/term/
Disallow: /7181/
Disallow: /1020897/
Disallow: /prouser/
Disallow: /print/
Disallow: /printmail/
Disallow: /popup/
Noindex: /fb_cb/
Disallow: /archive/
Disallow: /forward/
Disallow: /node-comment/
Disallow: /includes/
Disallow: /misc/
Disallow: /modules/
Disallow: /profiles/
Disallow: /scripts/
Disallow: /sites/all
Disallow: /sites/default/default.settings.php
Disallow: /sites/default/settings.php
Disallow: /themes/
Disallow: /plugins/feedback.php
# Files
Disallow: /CHANGELOG.txt
Disallow: /cron.php
Disallow: /social-share-cron.php
Disallow: /INSTALL.mysql.txt
Disallow: /INSTALL.pgsql.txt
Disallow: /install.php
Disallow: /INSTALL.txt
Disallow: /LICENSE.txt
Disallow: /MAINTAINERS.txt
Disallow: /update.php
Disallow: /UPGRADE.txt
Disallow: /xmlrpc.php
# Paths (clean URLs)
Disallow: /admin/
Allow: /admin/config/services/update-cache/ 
Noindex: /admin/config/services/update-cache/
Noindex: /infinite-ajax/articles/
Allow: /user/register
Allow: /user/password
Allow: /user/login
Noindex: /user/
Disallow: /comment/reply/
Disallow: /contact/
Disallow: /logout/
Disallow: /node/add/
Noindex: /search/
#Fixes for slow crawl
Disallow: /hybridauth/
# Paths (no clean URLs)
Disallow: /?q=admin/
Disallow: /?q=comment/reply/
Disallow: /?q=contact/
Disallow: /?q=logout/
Disallow: /?q=node/add/
Disallow: /?q=search/
Disallow: *gadcreatives.glam.com*
Disallow: *gadcreatives.mode.com*
#Fixes for slow crawl
Disallow: /?q=hybridauth/
#Allow Specific URLs
Allow: /sites/all/themes/pinkduck/images/sprite*
Allow: /sites/all/themes/pinkduck/i/*
Allow: /sites/all/themes/ytresponsive/*
Allow: /users/radar-online
#Fixes for slow crawl
Allow: /sites/all/themes/ytpurple/*
Allow: /*/*.css
Allow: /*/*.js
Allow: /*/*.gif
Allow: /*/*.jpg
Allow: /*/*.jpeg
Allow: /*/*.png
Allow: /*/*.svg
Allow: /sites/all/*/*.css
Allow: /sites/all/*/*.js
Allow: /sites/all/*/*.gif
Allow: /sites/all/*/*.jpg
Allow: /sites/all/*/*.jpeg
Allow: /sites/all/*/*.png
Allow: /sites/all/*/*.svg
#Fixes for old sitemap index links
Disallow: /sitemap-*.xml
Allow: /sitemap.xml
Allow: /sitemap
Allow: /sitemap/*

Disallow: /home/tabid/*
Disallow: /Home/tabid/*
Disallow: /home/webapps/*
Disallow: /Home/webapps/*
Disallow: /home/ajax/*
Disallow: /Home/ajax/*
Disallow: /home/celebrities-with-organized-homes
Disallow: /Home/xys
