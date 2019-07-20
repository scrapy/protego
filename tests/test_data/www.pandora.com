User-agent: PiplBot
Disallow: /

User-agent: bingbot
User-agent: deepcrawl
User-agent: Googlebot
Sitemap: https://www.pandora.com/sitemap-index.xml
Allow: /api/v1/auth/anonymousLogin
Disallow: /restricted
Disallow: /content/
Disallow: /backstage/

User-agent: *
Sitemap: https://www.pandora.com/sitemap-index.xml
Disallow: /restricted
Disallow: /content/
Disallow: /backstage/
Disallow: /api/
