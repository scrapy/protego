User-agent: *
Disallow: /manager/
Disallow: /core/
Disallow: /assets/pageflip/
Disallow: */blog/?tags
Disallow: */blog/?blog-category
Disallow: */request-form-confirmation?loc
Disallow: */celebrity-leaderboard?
Disallow: */?venue
Disallow: */?_ga
Disallow: */?utm
Disallow: */ajax.json

Sitemap: https://topgolf.com/sitemap.xml