User-agent: *

Disallow: /css
Disallow: /js
Allow: /*.css
Allow: /*.js

Disallow: /site-search*
Disallow: /*?p=1$
Disallow: /*en-au/*
Disallow: /*nl-nl/*
Disallow: /*.xml
Disallow: /boost/handlers/recordView.ashx*
Disallow: /thrive/handlers/recordView.ashx*
Disallow: /spark/handlers/recordView.ashx*
Disallow: /-/media/RI/pdf/*
Disallow: /~/media/RI/pdf/*
Disallow: /-/media/Solution Center/MAS/PDF/White Papers/*
Disallow: /~/media/Solution Center/MAS/PDF/White Papers/*
Disallow: /-/media/Solution Center/NAS/PDF/White Papers/*
Disallow: /~/media/Solution Center/NAS/PDF/White Papers/*
Disallow: /-/media/Solution Center/MNC/PDF/White Papers/*
Disallow: /~/media/Solution Center/MNC/PDF/White Papers/*
Disallow: /rc_*.asp
Disallow: /advisor/*
Disallow: /workforce-management/docs/whitepaper/*
Disallow: /legislative_update/docs/*
Disallow: /legislative_update/archive/docs/*
Disallow: /small-business-health-insurance/index_thankyou.aspx
Disallow: /mobile-payroll-quote/thankyou.aspx
Disallow: /SEM2016/Accountant/*
Disallow: /semlps/*
Disallow: /sem totalsource/*
Allow: /*sitemap.xml
Allow: /*sitemap.*.xml

Sitemap: https://www.adp.com/sitemap.aspx
Sitemap: http://adp.ca/en-ca/sitexml.aspx
Sitemap: http://adp.ca/fr-ca/sitexml.aspx
Sitemap: http://insurance.adp.com/insurance_sitemap.xml