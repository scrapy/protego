User-agent: *

Disallow: /wp-admin/*
Disallow: /app-join-rush-247
Disallow: /app-stations
Disallow: /app-email-the-show
Disallow: /mobilefeed/*
Disallow: /?s=*
Disallow: /*ImageFile-*
Disallow: /-[0-9]*-p/

Allow: /
Allow: /wp-admin/admin-ajax.php

Sitemap: https://www.rushlimbaugh.com/sitemap_index.xml
