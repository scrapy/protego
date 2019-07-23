User-agent: Twitterbot
Disallow: /

User-agent: *
Disallow: /core/
Disallow: /cgi-bin/
Disallow: /includes/
Disallow: /flash/
Disallow: /plugins/
Disallow: /system/
Disallow: /widgets/
Disallow: /assets/
Disallow: /blogs/wp-content/
Disallow: /blog-galleries/
Disallow: /blogs/

Allow: /sitemap/
Allow: /api/
Allow: /static/js/
Allow: /static/css/
Allow: /js/
Allow: /css/
Allow: /tv/

Sitemap: https://www.complex.com/sitemap/news.xml
Sitemap: https://www.complex.com/sitemap/index.xml
