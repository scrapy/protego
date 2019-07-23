User-agent: Slurp
Crawl-delay: 1

User-agent: Bingbot
Crawl-delay: 1

User-agent: YandexBot
Crawl-delay: 1

User-agent: MJ12bot
Crawl-delay: 1

User-Agent: AhrefsBot
Crawl-delay: 1

User-Agent: Baiduspider
Crawl-delay: 1

User-agent: *
Allow: /files/thumbs/
Allow: /files/twitter_images/
Disallow: /*.doc$
Disallow: /test/
Disallow: /api/
Disallow: /scifoo/
Disallow: /resources/
Disallow: /Resources/
Disallow: /projects/
Disallow: /open/
Disallow: /files/
Disallow: /design/
Disallow: /CDNSource/
Disallow: /videobook.php
Disallow: /embed/
Disallow: /submission.php
Disallow: /legacy/
Disallow: /misc/
Disallow: /shibboleth
Disallow: /account
Disallow: /Shibboleth.sso
Disallow: /discovery

Sitemap: https://www.jove.com/sitemap/sitemap-index.xml