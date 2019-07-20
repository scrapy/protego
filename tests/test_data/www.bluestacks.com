User-agent: Yandex
Allow: /ru
Allow:/download.html
Disallow: /
Clean-param: p&z&u */index.html

User-agent: Baiduspider
Disallow: /

User-agent: *

Disallow: /wp-content/plugins/
Disallow: /wp-admin/
Disallow: /feed/
Disallow: /trackback/
Disallow: /xmlrpc.php
Disallow: /readme.html
Disallow: /json/
Disallow: /banner_app/
Disallow: /tw/banner_app/
Disallow: /ja/banner_app/
Disallow: /ko/banner_app/
Disallow: /th/banner_app/
Disallow: /ru/banner_app/
Disallow: /es/banner_app/
Disallow: /fr/banner_app/
Disallow: /pt-br/banner_app/
Disallow: /it/banner_app/
Disallow: /de/banner_app/
Disallow: /vi/banner_app/
Disallow: /id/banner_app/
Disallow: /ms/banner_app/
Disallow: /nl/banner_app/
Disallow: /pl/banner_app/
Disallow: /ar/banner_app/

Allow: /

sitemap: https://www.bluestacks.com/sitemap_index.xml

