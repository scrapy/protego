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
#Site settings

Disallow: /node
Disallow: /resource-center/insights/themes/custom/schwabcog/styleguide
Disallow: /resource-center/insights/index.php
Disallow: /resource-center/insights/index.php/*
Disallow: /resource-center/insights/node
Disallow: /resource-center/content
Disallow: /resource-center/section
Disallow: /resource-center/author
Disallow: /resource-center/category
Disallow: /active-trader/insights/index.php
Disallow: /active-trader/insights/index.php/*
Disallow: /active-trader/insights/node
Disallow: /active-trader/content
Disallow: /active-trader/section
Disallow: /active-trader/author
Disallow: /active-trader/category
Disallow: /public/schwab/nn/login
Disallow: /public/schwab/nn/promo
 
Sitemap: https://www.schwab.com/sitemap/public-schwab/sitemap.xml
Sitemap: https://www.schwab.com/public/schwab/nn/f/google-news.news
Sitemap: https://www.schwab.com/resource-center/insights/sitemap.xml
Sitemap: https://www.schwab.com/active-trader/insights/sitemap.xml
Sitemap: https://www.schwab.com/sitemap.xml