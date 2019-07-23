# XML Sitemap & Google News Feeds version 4.9.4 - http://status301.net/wordpress-plugins/xml-sitemap-feed/
Sitemap: https://www.komando.com/sitemap.xml
Sitemap: https://www.komando.com/sitemap-news.xml

User-agent: *
Disallow: /wp-admin/
Allow: /wp-admin/admin-ajax.php
