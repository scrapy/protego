# File: robots.txt 

# Site: https://www.anntaylor.com 

# Updated: 20170929




User-agent: * 

Disallow: /profile/orderStatusNotLoggedIn.jsp

Disallow: /checkout/

Disallow: /profile/

Disallow: /*weekender

Disallow: /search/

Disallow: /*?colorExplode=false

Sitemap: https://www.anntaylor.com/webassets/ann/sitemap/611-sitemap-index.xml


