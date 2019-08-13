Sitemap: https://www.jeep.com/sitemap.xml
Sitemap: https://www.jeep.com/primary_sitemap.xml

User-agent: UptimeBot
Disallow: /

User-agent: *
Disallow: /services/
Disallow: /es/
Disallow: /vots/
Disallow: /webselfservice/
Disallow: /test/
Disallow: /hostc/