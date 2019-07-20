# These intructions apply to all robots.

User-Agent: *
Disallow: /portal/pdf/tos.pdf
Disallow: /portal/resource/terms_of_service.shtml
Disallow: /portal/email/
Disallow: /portal/confirmation/
Disallow: /portal/partners/businessdirectory/
Disallow: /portal/nl-old/
Disallow: /s.nl/c.NLCORP/it.I/id.156/.f
Disallow: /portal/assets/pdf/wp-complying-with-asc-606-with-netsuite.pdf
Disallow: /portal/common/pdf/ns-brandguidelines-2011.pdf

noindex: /portal/au/*
noindex: /portal/uk/*
noindex: /portal/sg/*
noindex: /portal/hk/*
noindex: /portal/nl/*
noindex: /portal/nl-old/*
noindex: /s.nl/c.NLCORP/it.I/id.156/.f

Sitemap: http://www.netsuite.com/sitemap.xml
Sitemap: http://www.netsuite.com/sitemap-fr.xml
