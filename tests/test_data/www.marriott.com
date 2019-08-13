# Robots.txt file for HTTPS Marriott.com
#
Sitemap: https://www.marriott.com/sitemap-index-us.xml
#
User-agent: *
Disallow: /einterface/
Disallow: /search/
Allow: /search/default.mi