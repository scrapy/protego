##
# PROD robots.txt
#
# This file is to prevent the crawling and indexing of certain parts
# of your site by web crawlers and spiders run by sites like Yahoo!
# and Google. By telling these "robots" where not to go on your site,
# you save bandwidth and server resources.
#
# This file will be ignored unless it is at the root of your host:
# http://example.com/robots.txt
#
# For more information about the robots.txt standard, see:
# http://www.robotstxt.org/robotstxt.html
##
User-Agent: *
Sitemap: https://www.technologyreview.com/sitemap.xml
Sitemap: https://www.technologyreview.com/googlenews.xml
Disallow: /api/
Disallow: /auth/
Disallow: /draft/
Disallow: /login/
Disallow: /logout/
Disallow: /mit-news/
Disallow: /search/
