# See http://www.robotstxt.org/ for documentation on how to use the robots.txt file
# To ban all spiders from the entire site:
User-agent: *
Disallow: /

Sitemap: https://newrelic.com/sitemap.xml
Sitemap: https://www.newrelic.de/sitemap.xml
Sitemap: https://br.newrelic.com/sitemap.xml
