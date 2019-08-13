User-agent: *
#Non-Canonical Parameters
Disallow: /*prefn*
Disallow: /*prefv*
Disallow: /*pmin=*
Allow: /*pmin=0$
Allow: /*pmin=1$
Allow: /*pmin=0.02$
Disallow: /*pmax=*
Disallow: /*pid=*
Disallow: /*srule=*
Disallow: /*lang=*
#URLs
Disallow: /*demandware.store*
Allow: /*demandware.store*xml$
Allow: /on/demandware.store/Sites-Belk-Site/default/Home-GetPromos
Disallow: /*cssuite*
Disallow: /shopping-bag/
Allow: /*cm_mmc*
#Pagination
Allow: /*/?sz=*&start=*
Allow: /*/*/?sz=*&start=*
Allow: /*/*/*/?sz=*&start=*
Allow: /*/*/*/*/?sz=*&start=*
Allow: /*/*/*/*/*/?sz=*&start=*
Allow: /*/*/*/*/*/*/?sz=*&start=*
Disallow: /search/*sz=*&start=*
#OSS
Disallow: /search/
Allow: /search/?q=*&lang=default$
#Shop by Brand
Allow: /search/?shopbybrand=root$
Allow: /search/?shopbybrand=women$
Allow: /search/?shopbybrand=men$
Allow: /search/?shopbybrand=juniors$
Allow: /search/?shopbybrand=kids-baby$
Allow: /search/?shopbybrand=beauty$
Allow: /search/?shopbybrand=shoes$
Allow: /search/?shopbybrand=handbags-accessories$
Allow: /search/?shopbybrand=jewelry$
Allow: /search/?shopbybrand=bed-bath$
Allow: /search/?shopbybrand=for-the-home$
Allow: /search/?shopbybrand=fan-gear$
#Clearance
Allow: /search/?isclearancelanding=true&pmid=BelkClearancePricing$
Sitemap: https://www.belk.com/sitemap_index.xml

User-agent: AdsBot-Google
Disallow: /*cssuite*

User-agent: AdIdxBot
Disallow: /*cssuite*

User-agent: Pinterest
Disallow: /*cssuite*

User-agent: Baiduspider
User-agent: Baiduspider-video
User-agent: Baiduspider-image
Disallow: /

User-agent: Yandex
Disallow: /