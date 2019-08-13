User-agent: *
Disallow: /email/
Disallow: /login
Disallow: /profile/
Disallow: /discuss/
Disallow: /private/
Disallow: /article/
Disallow: /video/

User-agent: Googlebot
Disallow: /urb/
Disallow: /services/
Disallow: /email/
Disallow: /login
Disallow: /profile/
Disallow: /discuss/
Disallow: /private/
Disallow: /article/
Disallow: /video/

User-agent: Bingbot
Disallow: /urb/
Disallow: /services/
Disallow: /email/
Disallow: /login
Disallow: /profile/
Disallow: /discuss/
Disallow: /private/
Disallow: /article/
Disallow: /video/

#
# Misbehaving bot
#
User-agent: bhc.collectionBot
Disallow: /

Sitemap: https://www.yummly.com/yummly-all-pages-us.xml
