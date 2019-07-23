
User-agent: *

Disallow: /admin/
Disallow: */?clearDisclaimer=true
Disallow: /* distribID=$
Disallow: /* jsessionid=$
Disallow: /shoppingCart.do?task=
Disallow: /distribNew/
Sitemap: https://foreverliving.com/sitemap/foreverliving.xml

