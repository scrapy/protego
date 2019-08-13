User-agent: *
Disallow: /search/
Sitemap: https://techcrunch.com/sitemap.xml
Sitemap: https://techcrunch.com/news-sitemap.xml
User-agent: *
Disallow: /wp-admin/
Allow: /wp-admin/admin-ajax.php
