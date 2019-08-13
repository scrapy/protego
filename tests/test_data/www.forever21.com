# robots.txt 05/06/18
User-agent:*
Disallow: */core/
Disallow: */CheckOut/
Disallow: */Checkout/
Disallow: */checkout/
Disallow: */search/
Disallow: */Search/
Disallow: */login/
Disallow: */Login/
Noindex: */Account/
Noindex: */account/
Noindex: */CheckOut/
Noindex: */Checkout/
Noindex: */checkout/
Noindex: */search/
Noindex: */Search/
Noindex: */login/
Noindex: */Login/

 

Sitemap: https://www.forever21.com/sitemap_index.xml