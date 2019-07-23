Sitemap: http://foreignpolicy.com/news-sitemap.xml

User-agent: Mediapartners-Google
Disallow: 

User-agent: *
Disallow: /wp-admin/
Allow: /wp-admin/admin-ajax.php
# Sitemap archive
Sitemap: https://foreignpolicy.com/sitemap.xml

