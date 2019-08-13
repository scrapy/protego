Sitemap: http://sanfrancisco.cbslocal.com/sitemap.xml
Sitemap: http://sanfrancisco.cbslocal.com/news-sitemap.xml

User-agent: *
Disallow: /wp-admin/
Allow: /wp-admin/admin-ajax.php
