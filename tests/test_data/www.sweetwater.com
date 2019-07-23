# /robots.txt file for http://www.sweetwater.com/
# mail webmaster@sweetwater.com for specific information
# last updated 04-18-2003 JPM
User-agent: *

Disallow: /store/cart.php
Disallow: /store/checkout/
Disallow: /store/myaccount/
Disallow: /webservices_sw/
Allow: /webservices_sw/content/cards/
Allow: /webservices_sw/items/

Sitemap: https://www.sweetwater.com/sitemap.xml