User-agent: *
Disallow: /wp-admin/
Allow: /wp-admin/admin-ajax.php
Disallow: /crossdomain.xml
Disallow: /eyeblaster/
Disallow: /*/mraid.js

Sitemap: https://wtop.com/wtop_sitemap_index.xml