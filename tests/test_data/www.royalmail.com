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
Crawl-delay: 10

#
# Core rules
#
Disallow: /includes/
Disallow: /misc/
Disallow: /modules/
Disallow: /profiles/
Disallow: /scripts/
Disallow: /themes/

# CSS, JS, Images
Allow: /core/*.css$
Allow: /core/*.css?
Allow: /core/*.js$
Allow: /core/*.js?
Allow: /core/*.gif
Allow: /core/*.jpg
Allow: /core/*.jpeg
Allow: /core/*.png
Allow: /core/*.svg
Allow: /profiles/*.css$
Allow: /profiles/*.css?
Allow: /profiles/*.js$
Allow: /profiles/*.js?
Allow: /profiles/*.gif
Allow: /profiles/*.jpg
Allow: /profiles/*.jpeg
Allow: /profiles/*.png
Allow: /profiles/*.svg

# Directories
Disallow: /core/
Disallow: /profiles/

# Files
Disallow: /README.txt
Disallow: /web.config

# Paths (clean URLs)
Disallow: /admin/
Disallow: /comment/reply/
Disallow: /filter/tips
Disallow: /node/add/
Disallow: /search/
Disallow: /user/register/
Disallow: /user/password/
Disallow: /user/login/
Disallow: /user/logout/
# Paths (no clean URLs)
Disallow: /index.php/admin/
Disallow: /index.php/comment/reply/
Disallow: /index.php/filter/tips
Disallow: /index.php/node/add/
Disallow: /index.php/search/
Disallow: /index.php/user/password/
Disallow: /index.php/user/register/
Disallow: /index.php/user/login/
Disallow: /index.php/user/logout/

# Files
Disallow: /CHANGELOG.txt
Disallow: /cron.php
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
Disallow: /comment/reply/
Disallow: /filter/tips/
Disallow: /logout/
Disallow: /node/add/
Disallow: /search/
Disallow: /user/register/
Disallow: /user/password/
Disallow: /user/login/
Disallow: /user

Disallow: /holding/
Disallow: /trackdetails
Disallow: /rml-shared-find-a-postcode
Disallow: /rml-shared-price-finder
Disallow: /rml-shared-track-your-item
Disallow: /sorry

# Paths (no clean URLs)
Disallow: /?q=admin/
Disallow: /?q=comment/reply/
Disallow: /?q=filter/tips/
Disallow: /?q=logout/
Disallow: /?q=node/add/
Disallow: /?q=search/
Disallow: /?q=user/password/
Disallow: /?q=user/register/
Disallow: /?q=user/login/
Disallow: /?q=user


#
# Custom rules
#

Disallow: /ppcaff/
Disallow: /landingpage/
Disallow: /gear/

# Node pages & Welsh-language equivalent pages
Disallow: /node/
Disallow: /cy/node

# Quote Journeys
Disallow: /single-trip-travelinsurance
Disallow: /travel-insurance
Disallow: /annual-multi-trip-travelinsurance
Disallow: /long-trip-travelinsurance
Disallow: /explorer-travelinsurance
Disallow: /over-50
Disallow: /travel-insurance-application
Disallow: /rod-fishing-licence-application
Disallow: /over-50s-life-insurance-application

Disallow: /user
Disallow: /?q=user

Disallow: /holding/
Disallow: /?q=holding/

Disallow: /sorry
Disallow: /?q=sorry

Disallow: /?q=node/25359019

Disallow: /trackdetails
Disallow: /?q=trackdetails

Disallow: /rml-shared-find-a-postcode
Disallow: /?q=rml-shared-find-a-postcode

Disallow: /rml-shared-price-finder
Disallow: /?q=rml-shared-price-finder

Disallow: /rml-shared-track-your-item
Disallow: /?q=rml-shared-track-your-item

# Common causes of duplication
Disallow: /*?answer
Disallow: /*?campaignid
Disallow: /*&campaignid
Disallow: /*?catId
Disallow: /*&catId
Disallow: /*gear=

