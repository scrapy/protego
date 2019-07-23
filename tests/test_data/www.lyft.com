# www.robotstxt.org/
# https://developers.google.com/webmasters/control-crawl-index/

User-agent: *
Sitemap: https://www.lyft.com/sitemap.xml
Disallow: /invite/
Disallow: /i/
Disallow: /logout
Disallow: /developers/manage
Disallow: /developers/widgets
Disallow: /terms/incentives/
Disallow: /partner/
Disallow: /views/
