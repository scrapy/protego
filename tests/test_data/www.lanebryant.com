User-agent: *
Disallow: /test/
Disallow: /*search
Disallow: /*account/
Disallow: /*N=
Disallow: *?bvroute=
Disallow: /*cart/
Disallow: *?No=
Disallow: *jsessionid*
Disallow: *icid*
Disallow: *index=0*
Noindex: *index=0*
Noindex: *jsessionid*

#Sitemap-Index
Sitemap: https://www.lanebryant.com/sitemap.xml
