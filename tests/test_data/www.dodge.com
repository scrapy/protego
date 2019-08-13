Sitemap: https://www.dodge.com/sitemap.xml
Sitemap: https://www.dodge.com/primary_sitemap.xml


User-agent: UptimeBot
Disallow: /

User-agent: *
Disallow: /services/
Disallow: /es/
Disallow: /vots/
Disallow: /webselfservice/
Disallow: /test/
Disallow: /hostc/