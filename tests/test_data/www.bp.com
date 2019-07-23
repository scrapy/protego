# robots.txt for bp.com
User-agent: *
Disallow:
Disallow:/*.html?*
Disallow: /en_gb/united-kingdom/media/press-releases/bpme-launch.html
disallow: /en/global/corporate/testing/stagestruck-set-up.html*
disallow: /narrative2018*
disallow: /en_gb/united-kingdom/home/references.html*
disallow: /en_us/united-states/home/referencing.html*
Disallow: /content/dam/bp/images/*
Disallow: /content/dam/bp/audio/*
Disallow: /content/dam/bp/excel/*
Disallow: /content/dam/bp/pdf/*
Disallow: /content/dam/bp/powerpoint/*
Disallow: /content/dam/bp/zip/*
Disallow: /content/dam/bp/word/*
Disallow: /content/dam/bp/outlook/*
Disallow: /content/dam/bp/en/*

User-agent: Algolia Crawler
Disallow:
Disallow: /en_gb/united-kingdom/media/press-releases/bpme-launch.html
disallow: /en_us/united-states/home/referencing.html*
disallow: /en/global/corporate/testing/stagestruck-set-up.html*
disallow: /narrative2018*
disallow: /en_gb/united-kingdom/home/references.html

sitemap: https://www.bp.com/sitemap.xml