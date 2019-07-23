# robots.txt file
# @see http://www.robotstxt.org/robotstxt.html

User-agent: *

# Sitemaps for search engines
# deploy.sh nightly
Sitemap: https://www.sncf.com/sitemap.xml
Sitemap: https://www.sncf.com/sncv1/sitemap.xml
