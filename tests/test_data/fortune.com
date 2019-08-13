User-agent: *
Disallow: /wp-admin/
Allow: /wp-admin/admin-ajax.php
Sitemap: https://fortune.com/news-sitemap.xml

User-agent: *
Disallow: /wp-admin/

User-agent: Googlebot
Disallow: /search/*
Disallow: /sponsored/
Disallow: /feeds/

# Admin Pages
Disallow: /wp-login.php
Disallow: /wp-signup.php
Disallow: /press-this.php
Disallow: /remote-login.php
Disallow: /activate/
Disallow: /cgi-bin/
Disallow: /mshots/v1/
Disallow: /next/
Disallow: /public.api/*
Sitemap: https://fortune.com/sitemap.xml
