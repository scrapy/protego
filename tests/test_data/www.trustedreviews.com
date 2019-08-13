User-agent: *
Disallow: /wp-admin/
Allow: /wp-admin/admin-ajax.php

Disallow: /wp-json/*
Disallow: /wp-content/plugins/keystone-taboola/assets/js/taboola.js*

# Sitemaps
Sitemap: https://www.trustedreviews.com/sitemap.xml
Sitemap: https://www.trustedreviews.com/sitemap_news.xml

# CDN
