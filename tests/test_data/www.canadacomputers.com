User-agent: *
Allow: /
Disallow: /corporate_payment.php
Disallow: /category/
Disallow: /courier/
Disallow: /includes/
Disallow: /newsletter/
Disallow: /scripts/
Disallow: /tools/
Disallow: /marketing/kiosks/
Sitemap: http://www.canadacomputers.com/sitemap.xml

## Do not crawl links with session IDs
Disallow: *?sid=*
Disallow: *&sid=*