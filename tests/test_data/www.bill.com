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
# Paths (MW-1148)
Disallow: /<
Disallow: /2009
Disallow: /2010
Disallow: /2011
Disallow: /2012
Disallow: /2013
Disallow: /about-us/about-us
Disallow: /about-us/pr_
Disallow: /index-refer.php
Disallow: /marketing/
Disallow: /node/
# Old A/B Test URLs
Disallow: /signup-v2-t41cl/
Disallow: /signup-48b/
Disallow: /signup45b/
Disallow: /signup42a/
Disallow: /signup-v2-t41/
Disallow: /signup-48c/
Disallow: /signup45c/
Disallow: /signup42b/
Disallow: /signup-v2-t41a/
Disallow: /signup45d/
Disallow: /signup42c/
Disallow: /signup-v2-t41l/
Disallow: /signup45e/
Disallow: /signup-v2-t41al/
Disallow: /signup-v2-t37/
Disallow: /signup-48a/
Disallow: /signup45a/
Disallow: /5mhome2/
Disallow: /5mhome/
Disallow: /fthome/
Disallow: /lfhome/
Disallow: /multi_platform/
Disallow: /single_platform/
Disallow: /dhhome/
Disallow: /console_signup_b/
Disallow: /signup_sf/
Disallow: /signup_blue/
Disallow: /signup_pe/
Noindex: /signup_pe/
Disallow: /signup_np/
Noindex: /signup_np/
Disallow: /signup_np_p/
Noindex: /signup_np_p/
Disallow: /signup_np_p/
Noindex: /signup_np_p/
Disallow: /signup_np_p/
Noindex: /signup_np_p/
Disallow: /signup_p/
Noindex: /signup_p/
Disallow: /1_m_ov/
Noindex: /1_m_ov/
Disallow: /1_m_ov_b/
Noindex: /1_m_ov_b/
Disallow: /st_trial/
Noindex: /st_trial/
Disallow: /pp_trial/
Noindex: /pp_trial/
Disallow: /as_trial/
Noindex: /as_trial/
Disallow: /control_signup/
Noindex: /control_signup/
Disallow: /pp_signup/
Noindex: /pp_signup/
Disallow: /as_signup/
Noindex: /as_signup/
Disallow: /st_trial/
Noindex: /st_trial/
Disallow: /about-us/newsroom/
Noindex: /about-us/newsroom/
Disallow: /overview_d/
Noindex: /overview_d/
Disallow: /signup/trial-demo/
Noindex: /signup/trial-demo/
Disallow: /trial-demo-confirmation/
Noindex: /trial-demo-confirmation/

# MW-1315
Disallow: /lp/EFT/
Noindex: /lp/EFT/
Disallow: /lp/EFT_Demo/
Noindex: /lp/EFT_Demo/
Disallow: /lp/MM_Demo/
Noindex: /lp/MM_Demo/
Disallow: /accessibility-policy-and-statement/
Noindex: /accessibility-policy-and-statement/

#MW-1384 MW-1383
Disallow: /signup-ip/
Noindex: /signup-ip/
Disallow: /bdc-ip/
Noindex: /bdc-ip/

#Home page
Disallow: /overview_business/
Noindex: /overview_business/
Disallow: /overview_benefits/
Noindex: /overview_benefits/

#Signup page
Disallow: /signup/savings-time/
Noindex: /signup/savings-time/
Disallow: /signup/savings-money/
Noindex: /signup/savings-money/

#accountants
Disallow: /for-accountants/v2/
Noindex: /for-accountants/v2/
Disallow: /for-accountants/program-details/v2/
Noindex: /for-accountants/program-details/v2/
Disallow: /for-accountants/pricing/v2/
Noindex: /for-accountants/pricing/v2/

#MW-1677
Disallow: /bill-pay-quickbooks-online-advanced-trial-promotion/
Noindex: /bill-pay-quickbooks-online-advanced-trial-promotion/

#MW-1770
Disallow: /product-maintenance/
Noindex: /product-maintenance/
