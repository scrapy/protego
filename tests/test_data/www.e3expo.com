User-agent: Yandex
Disallow: /wp-admin
Disallow: /wp-includes
Disallow: /wp-content/plugins
Disallow: /wp-content/uploads
Disallow: /wp-json/
Disallow: /wp-login.php
Disallow: /wp-register.php
Disallow: */embed
Disallow: */feed
Disallow: /cgi-bin
Disallow: *?s=
Allow: /wp-admin/admin-ajax.php

Host: www.e3expo.com

User-agent: *
Disallow: /wp-admin
Disallow: /wp-includes
Disallow: /wp-content/plugins
Disallow: /wp-content/uploads
Disallow: /wp-json/
Disallow: /wp-login.php
Disallow: /wp-register.php
Disallow: */embed
Disallow: */feed
Disallow: /cgi-bin
Disallow: *?s=
Allow: /wp-admin/admin-ajax.php

Sitemap: https://www.e3expo.com/sitemap.xml