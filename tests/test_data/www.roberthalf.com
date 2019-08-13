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
## Allow job-search-sitemap.xml to be crawled
Allow: /sites/default/files/documents/job-search-sitemap.xml
Disallow: /sites/default/files/documents/
Disallow: /sites/default/files/documents/*
Disallow: /sites/default/files/Media_Root/*
# Paths (clean URLs)
Disallow: /admin/
Disallow: /comment/reply/
Disallow: /filter/tips
Disallow: /node/add/
Disallow: /search/
Disallow: /user
Disallow: /user/*
Disallow: */node/*
Disallow: https://authorizeme.roberthalf.com/RHSignIn?a=RH&b=&c=US&d=en_US&p=t*
Disallow: /ajax/*
Disallow: *target="_parent"
Disallow: /work-with-us/careers-at-robert-half/internal-jobs/*

# Paths (no clean URLs)
Disallow: /index.php/*
# XML sitemap
Sitemap: https://www.roberthalf.com/sites/default/files/documents/job-search-sitemap.xml
# XML sitemap
Sitemap: https://www.roberthalf.com/sitemap.xml