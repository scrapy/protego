User-agent:*
Disallow: /account/
Disallow: /auth/
Disallow: */works/*/carousel
Disallow: /discover/
Disallow: /mybubble/
Disallow: /objections/
Disallow: /settings/
Disallow: /*.json$
Disallow: /api/
Noindex: /account/
Noindex: /auth/
Noindex: */works/*/carousel
Noindex: /discover/
Noindex: /mybubble/
Noindex: /objections/
Noindex: /settings/
Noindex: /*.json$
Noindex: /api/

Sitemap: https://www.redbubble.com/sitemap/index-sitemap.xml
