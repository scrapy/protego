Sitemap: http://dfw.cbslocal.com/sitemap.xml
Sitemap: http://dfw.cbslocal.com/news-sitemap.xml

User-agent: *
Disallow: /wp-admin/
Allow: /wp-admin/admin-ajax.php
