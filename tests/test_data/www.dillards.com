User-agent: *
Disallow: /webapp/wcs/stores/servlet/

User-agent: ly.st
crawl-delay: 1

User-agent: bingbot
Disallow: /webapp/wcs/stores/servlet/

sitemap: https://www.dillards.com/sitemap/sitemap.xml
