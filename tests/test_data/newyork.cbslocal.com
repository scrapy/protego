Sitemap: http://newyork.cbslocal.com/sitemap.xml
Sitemap: http://newyork.cbslocal.com/news-sitemap.xml

User-agent: *
Disallow: /wp-admin/
Allow: /wp-admin/admin-ajax.php
