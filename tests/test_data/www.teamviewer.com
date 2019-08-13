#Valid for all user agents
User-agent: *
 
#Disallow Global Website#
Disallow: /GenericStatisticsWS.asmx
Disallow: /GenericStatisticsWS.asmx/*
Disallow: /ws/
Disallow: /link/
Disallow: /api/
Disallow: /Handlers/
Disallow: /mailings/
Disallow: /newsletter/
Disallow: /*.aspx?currency
Disallow: /*.aspx?Currency
Disallow: /*.aspx?module
Disallow: /*.aspx?page
Disallow: /*page=
Disallow: /*.aspx?runtimeinterval
Disallow: /*@@URL@@
Disallow: /*@@url@@
Disallow: /*@@IMAGE@@
Disallow: /*@@image@@
Disallow: /*mac.aspx
Disallow: /*mobile-app.aspx
Disallow: /*?nab
Disallow: /*?menu
 
#Disallow WP#
Disallow: /wp-login.php
 
#Allow Exceptions for images, scripts, pdfs#
Allow: /resources/
Allow: /styles/
Allow: /images/
Allow: /res/
Allow: /components/
Allow: /docs/
Allow: /pub/
 
#Sitemaps#

Sitemap: https://www.teamviewer.com/sitemap_index.xml
Sitemap: https://www.teamviewer.com/page-sitemap.xml
Sitemap: https://www.teamviewer.com/features-sitemap.xml
Sitemap: https://www.teamviewer.com/press-sitemap.xml
Sitemap: https://www.teamviewer.com/successstories-sitemap.xml
Sitemap: https://www.teamviewer.com/integrations-sitemap.xml
Sitemap: https://www.teamviewer.com/author-sitemap.xml
Sitemap: https://www.teamviewer.com/info-sitemap.xml
 
#Changed on 2018-12-11 SeSi#
