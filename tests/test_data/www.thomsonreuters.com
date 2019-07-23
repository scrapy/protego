# Global robots config
User-agent: *

Disallow: /*?*
Allow: /*js*
Allow: /*css*

# robots.txt for http://thomsonreuters.com/
Disallow: /404.html
Disallow: /500.html
Disallow: /en/60279341234.html
Disallow: /en/60279341234
Disallow: /content/ewp-marketing-websites

Sitemap: https://www.thomsonreuters.com/en/sitemap.xml