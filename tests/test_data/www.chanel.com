User-agent: *

#PRESSRELEASE
Disallow: /pressrelease/*

#MY-ACCOUNT
Disallow : /my-account/*

#CORPORATE
Disallow: /*.swf
Disallow: /*.json
disallow:*popup*
Disallow: contents/images/nav/
Disallow: /fr_FR/*/services/logout

#SITEMAP
Allow: /sitemap.xml
Allow: /sitemap*.xml
Sitemap: http://www.chanel.com/sitemap.xml

#NEW-WFJ
Disallow: /*null/*
Disallow: */w/wishlist*
Disallow: */w/pdf*
Disallow: */api/*
Disallow: /*?lang=
Disallow: /*?text=
Disallow: /*?wfjpreview=

#ONE
Disallow: */search/*
Disallow: */cart/*
Disallow: */checkout/*
Disallow: */wishlist/*
Disallow: /*?q=*
Disallow: /*?asm=*
Disallow: /us/*?*

#SRQ0140051
Disallow: /*?token=*