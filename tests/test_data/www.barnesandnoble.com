#robots.txt for http://www.barnesandnoble.com
User-agent: *
Disallow: /account/
Disallow: /mobile/account/
Disallow: /checkout/
Disallow: /mobile/checkout/
Disallow: */lia.barnesandnoble/
Disallow: /ajax?
Disallow: /www/search?
Disallow: /handler.jsp
Disallow: /google/ad

Sitemap: http://www.barnesandnoble.com/sitemap.xml
