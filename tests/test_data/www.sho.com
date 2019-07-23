User-Agent: *
Disallow: /tve/
Disallow: /realmedia/
Disallow: /redzone/
Disallow: /scboxing/
Disallow: /api/
Disallow: /video/affiliate/
Disallow: */meta$

User-Agent: Nutch
Allow: */meta$

Sitemap: http://www.sho.com/sitemap.xml
