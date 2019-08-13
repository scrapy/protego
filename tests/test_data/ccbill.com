User-agent: *
Disallow: /wp-admin/
Allow: /wp-admin/admin-ajax.php
Disallow: /templates/*
Disallow: /merchants/
Disallow: /payments-for/
Disallow: /more/