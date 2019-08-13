User-agent: *
Disallow: /lm/*
Disallow: /safeco/*
Disallow: /*.page*
Disallow: /*/not-found
Disallow: /local-office
Disallow: /sales-representative

User-agent: sistrix
Disallow: /

User-agent: Kurogo Server*
Disallow: /

Sitemap: https://www.libertymutual.com/sitemap.xml
Sitemap: https://www.libertymutual.com/video-sitemap.xml
Sitemap: https://www.safeco.com/safeco-sitemap.xml
