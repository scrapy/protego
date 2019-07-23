#Robots.txt file for https://www.virginaustralia.com

User-agent: *

Disallow: /information
Disallow: /fragment/
Disallow: /cgi-bin/
Disallow: /php/
Disallow: /search/
Disallow: /?pos-selector*
Disallow: /?siteselect*
Disallow: /apps/
Disallow: /skyframes/
Disallow: /mobile-content/*
Disallow: /external_images/*
Disallow: /6314/*
Disallow: /SSW2010/VAVA/webqtrip.html?execution=e1s1 

Sitemap: https://www.virginaustralia.com/sitemap_index.xml




