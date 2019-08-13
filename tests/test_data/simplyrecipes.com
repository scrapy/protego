# Simply Recipes Robots file

User-agent: *
Disallow: /wp-admin/
Disallow: /?s=*
Disallow: /m/*
Allow: /wp-admin/admin-ajax.php

Sitemap: https://www.simplyrecipes.com/sitemap.xml
