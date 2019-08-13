Sitemap: https://www.chrysler.com/sitemap.xml
Sitemap: https://www.chrysler.com/primary_sitemap.xml

User-agent: UptimeBot
Disallow: /

User-agent: *
Disallow: /services/
Disallow: /es/
Disallow: /vots/
Disallow: /webselfservice/
Disallow: /test/
Disallow: /hostc/