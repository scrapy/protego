Sitemap: http://www.kxan.com/news-sitemap.xml

User-agent: *
Disallow: /wp-admin/
Allow: /wp-admin/admin-ajax.php

Crawl-delay: 10# Sitemap archive
Sitemap: https://www.kxan.com/sitemap.xml

