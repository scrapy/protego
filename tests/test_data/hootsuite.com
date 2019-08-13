# tells Google not to include these URLs in the index even if they have already been crawled
User-Agent: Googlebot
Noindex: *d=pro*
Noindex: /dashboard*
Noindex: /signup*
Noindex: /feed*
Noindex: /login*
Noindex: /hootlet/social-share*
Noindex: /hootlet/load*
Noindex: /social-connect/send*
Noindex: /share-button*
Noindex: /app/social-network/*
Noindex: /ajax*
Noindex: /sso-redirect*
Noindex: /js*

# tells all engines not to crawl these URLs
User-Agent: *
Disallow: *d=pro*
Disallow: /dashboard*
Disallow: /signup*
Disallow: /feed*
Disallow: /login*
Disallow: /hootlet/social-share*
Disallow: /hootlet/load*
Disallow: /social-connect/send*
Disallow: /share-button*
Disallow: /app/social-network/*
Disallow: /ajax*
Disallow: /sso-redirect*
Disallow: /js*

# Don't allow web crawlers to index Craft CMS
User-agent: *
Noindex: /craft/
Disallow: /craft/
Noindex: /*.pdf$
Disallow: /*.pdf$

Sitemap: https://hootsuite.com/sitemap.xml
