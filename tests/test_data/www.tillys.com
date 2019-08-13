User-agent: *
Disallow: /*prefn*
Disallow: /*prefv*
Allow: */?prefn1=clearance&prefv1=true
Disallow: /*pmin=*
Disallow: /*pmax=*
Disallow: /*pid=*
Disallow: /*srule=*
Disallow: /*lang=*
Disallow: /*demandware.store*
Disallow: /*start=*
Disallow: /find?q=*

Sitemap: https://www.tillys.com/sitemap_index.xml