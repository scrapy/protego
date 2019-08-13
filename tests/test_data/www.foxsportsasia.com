User-agent: *
Disallow: /wp-admin/
Allow: /wp-admin/admin-ajax.php
Disallow: /search/
Disallow: /*?s=
# Sitemap archive
Sitemap: https://www.foxsportsasia.com/sitemap.xml