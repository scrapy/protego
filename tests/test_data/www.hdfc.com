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
# Paths (clean URLs)
Disallow: /filter/tips
Disallow: /search
Disallow: /user
Disallow: /node
Disallow: /blog/node
Disallow: /blog/index.php/admin/
Disallow: /blog/index.php/comment/reply/
Disallow: /blog/index.php/filter/tips/
Disallow: /blog/index.php/node
Disallow: /blog/index.php/search/
Disallow: /blog/index.php/user

# Sitemap
Sitemap: https://www.hdfc.com/sitemap.xml

User-agent: rogerbot
Disallow:
