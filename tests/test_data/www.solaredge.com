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
Disallow: /sites/default/files/warranty_export/
Disallow: /sites/default/files/warranty-extension-pricelist.pdf

# Files
Disallow: /README.txt
Disallow: /web.config

# Paths (clean URLs)
Disallow: /au/
Disallow: /admin/
Disallow: /comment/reply/
Disallow: /filter/tips/
Disallow: /node/
Disallow: /search/
Disallow: /user/register/
Disallow: /user/password/
Disallow: /user/login/
Disallow: /user/logout/
Disallow: /us/site-designer/
Disallow: /site-designer/
Disallow: /*/reimbursement-form
Disallow: /*/labor-compensation-form
Disallow: /*/marketing-shop
Disallow: /registration-pending-approval*
Disallow: /registration-complete*
Disallow: /registration-wo-sn*
Disallow: /registration-system-owner*
Disallow: /*/registration-pending-approval
Disallow: /*/registration-complete
Disallow: /*/registration-wo-sn
Disallow: /*/registration-system-owner

Disallow: /*/us/labor-compensation-form
Disallow: /*/storedge/firmware
Disallow: /*/us/storedge/firmware
Disallow: /*/aus/storedge/firmware

# Paths (no clean URLs)
Disallow: /index.php/admin/
Disallow: /index.php/comment/reply/
Disallow: /index.php/filter/tips/
Disallow: /index.php/node/
Disallow: /index.php/search/
Disallow: /index.php/user/password/
Disallow: /index.php/user/register/
Disallow: /index.php/user/login/
Disallow: /index.php/user/logout/
Disallow: /index.php/registration-pending-approval*
Disallow: /index.php/registration-complete*
Disallow: /index.php/registration-wo-sn*
Disallow: /index.php/registration-system-owner*
Disallow: /index.php/*/registration-pending-approval
Disallow: /index.php/*/registration-complete
Disallow: /index.php/*/registration-wo-sn
Disallow: /index.php/*/registration-system-owner

User-Agent: googlebot
Disallow: /node/
Disallow: /node
Disallow: /*/node

