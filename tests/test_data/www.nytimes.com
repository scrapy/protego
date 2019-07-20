User-agent: *
Allow: /ads/public/
Allow: /svc/news/v3/all/pshb.rss
Disallow: /ads/
Disallow: /adx/bin/
Disallow: /puzzles/leaderboards/invite/*
Disallow: /register
Disallow: /svc
Disallow: /video/embedded/*
Disallow: /1996/06/17/nyregion/guest-at-diplomat-s-party-accused-of-rape.html
Disallow: /search/
Disallow: /*?*query=
Disallow: /*.pdf$
Disallow: /*?*utm_source=
Disallow: /*?*login=
Disallow: /*?*searchResultPosition=

User-Agent: omgilibot
Disallow: /

User-Agent: omgili
Disallow: /

Sitemap: https://www.nytimes.com/sitemaps/www.nytimes.com/sitemap.xml.gz
Sitemap: https://www.nytimes.com/sitemaps/sitemap_news/sitemap.xml.gz
Sitemap: https://www.nytimes.com/sitemaps/sitemap_video/sitemap.xml.gz
Sitemap: https://www.nytimes.com/sitemaps/www.nytimes.com_realestate/sitemap.xml.gz
Sitemap: https://www.nytimes.com/sitemaps/www.nytimes.com/2016_election_sitemap.xml.gz
Sitemap: https://www.nytimes.com/elections/2018/sitemap