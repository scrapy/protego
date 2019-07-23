User-agent: *
Disallow: /wp-admin/
Allow: /wp-admin/admin-ajax.php

# Block search pages
Disallow: *?s=*
Disallow: /search/*

# Block review filter pages
Disallow: /reviews?*period=
Disallow: /reviews?s=
Disallow: /reviews?*sorting=
Disallow: /reviews?*product_type=
Disallow: /reviews?*brands=

# Block guide filter pages
Disallow: /guide?*period=
Disallow: /guide?*&s=
Disallow: /guide?*brands=
Disallow: /guide?*product_type=

# Block recipe filter pages
Disallow: /recipes?s=
Disallow: /recipes?*&s=
Disallow: /recipes/?*&s=
Disallow: /recipes/tag/*?s=
Disallow: /recipes/tag/*/?s=
Disallow: /recipes/tag/*?*&s=
Disallow: /recipes/tag/*/?*&s=

# Block API
Disallow: /wp-json/*

# Block Vouchers
Disallow: /discount-codes/discount-codes/visit
Disallow: /vouchers/vouchers/visit

# Block links within GTM JavaScript
Disallow: */utils/*
Disallow: */utils/definitions
Disallow: */ChildVisitor
Disallow: */ProxyVisitor
Disallow: */encode
Disallow: */decode
Disallow: */definitions
Disallow: */Message
Disallow: */consent-string
Disallow: */PlaceholderVisitor

# Block Taboola Javascript
Disallow: /wp-content/plugins/keystone-taboola/assets/js/taboola.js*
# Sitemap archive
Sitemap: https://www.nme.com/sitemap.xml

