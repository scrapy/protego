Sitemap: https://www.technipages.com/sitemap.xml

# Google Image
User-agent: Googlebot-Image
Disallow:
Allow: /*

# Google AdSense
User-agent: Mediapartners-Google*
Disallow:

# global
User-agent: *
Disallow: /cgi-bin/
Disallow: /wp-admin/
Disallow: /wp-content/cache/
Disallow: /trackback/
Disallow: /feed/
Disallow: /comments/
Disallow: */trackback/
Disallow: */feed/
Disallow: /wp-login.php
Disallow: /wp-register.php
Allow: /wp-content/uploads/
Allow: /wp-includes/css/
Allow: /wp-includes/js/