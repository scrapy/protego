User-agent: *
Disallow: /service/
Disallow: /schedule-mobile
Disallow: /include/app_pages/
Disallow: /api/
Allow: /api/feeds/
Sitemap: http://www.amc.com/sitemap.xml

# Google Image
User-agent: Googlebot-Image
Disallow:
Allow: /
