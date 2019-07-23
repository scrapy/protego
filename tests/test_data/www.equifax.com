User-agent: *

Disallow: /uiTest/
Disallow: /siteAssets/
Disallow: /US/PSOL/
Disallow: /productDemos/debtStackingDemo.html
Disallow: /debtwiseoffer/
Disallow: /tracking/
Disallow: /us/
Disallow:/psol/
Disallow:/cs7/Satellite
Disallow:/cs7/BlobServer
Disallow: /wp-content/
Disallow: /wp-includes/
Disallow: /wordpress/
Disallow: /pages/
Disallow: /wp-admin/
Disallow: /sitePages/
Disallow: /creditscorecard/

Disallow:/videos/psol/products/familyplan/mc
Disallow:/pdfs/psol/products/familyplan/mc

Sitemap: http://www.equifax.com/sitemap.xml
Sitemap: http://www.equifax.com/ArgentinaSitemap.xml
Sitemap: https://www.consumer.equifax.ca/canada/canadasitemap.xml
Sitemap: http://www.equifax.com/ElSalvadorSitemap.xml
Sitemap: http://www.equifax.com/PeruSitemap.xml
Sitemap: http://www.equifax.com/PortugalSitemap.xml
Sitemap: http://www.equifax.com/UruguaySitemap.xml
Sitemap: https://www.equifax.com/sitemap.xml

User-agent: Googlebot
Disallow: /premier-495/

User-agent: AdsBot-Google
Allow: /premier-495/