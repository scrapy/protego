User-Agent: *

Disallow: /radar-admin/
Disallow: /profile/
Disallow: /profile/_report/
Disallow: /search/
Disallow: /?page=*
Disallow: /*/archive/*
Allow: /news/archive/*

Allow: /
Sitemap: https://www.gamesradar.com/sitemap.xml
Sitemap: https://www.gamesradar.com/uk/sitemap.xml
Sitemap: https://www.gamesradar.com/au/sitemap.xml
