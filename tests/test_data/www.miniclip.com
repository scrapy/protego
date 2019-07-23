User-agent: Mediapartners-Google
Disallow:

User-agent: *
Disallow: /*.txt$
Disallow: /*.ini$
Disallow: /*.inc$
Disallow: /*.xml$

Disallow: /games/*.htm$
Disallow: /games/*.html$

Allow: /ads.txt$
Allow: /sitemap.xml$
Allow: /games/en/feed.xml$
Allow: /games/fr/feed.xml$
Allow: /games/es/feed.xml$
Allow: /games/pt/feed.xml$
Allow: /games/it/feed.xml$
Allow: /games/kr/feed.xml$
Allow: /games/jp/feed.xml$
Allow: /games/br/feed.xml$
Allow: /games/pl/feed.xml$
Allow: /games/hu/feed.xml$
Allow: /games/ro/feed.xml$
Allow: /games/cs/feed.xml$
Allow: /games/ru/feed.xml$
Allow: /games/in/feed.xml$
Allow: /games/se/feed.xml$
Allow: /games/tr/feed.xml$

Sitemap: https://www.miniclip.com/sitemap.xml