# robots.txt
User-agent: *
Disallow: /feed
Disallow: /feed/
Disallow: /cgi-bin/
Disallow: /comment
Disallow: /comments
Disallow: /trackback
Disallow: /wp-admin/
Disallow: /wp-content
Disallow: /wp-content/
Disallow: /wp-includes
Disallow: /wp-includes/
Allow: /wp-includes/js
Allow: /wp-includes/js/
Disallow: /wp-login.php

Sitemap: http://new.ittf.com/sitemap_index.xml
