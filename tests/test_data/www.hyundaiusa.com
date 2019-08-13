# robots.txt for https://www.hyundaiusa.com

User-agent: *

Disallow: /inc/
Disallow: /swf/
Disallow: /xml/
Disallow: /MasterPages/
Disallow: /shopping-tools/Home/OptOut.aspx
Allow: /images/
Allow: /public_images/
Allow: /js/
Allow: /css/
Allow: /compare/
Sitemap: https://www.hyundaiusa.com/sitemap.xml
