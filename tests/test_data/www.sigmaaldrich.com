#go away
User-agent: *
Disallow: /cgi-bin/
Disallow: /cgibin/
Disallow: /admin/
Disallow: /login.html
Disallow: /Datanodes.html
Disallow: /Promo/
Disallow: /promo/
Disallow: /3pp/
Disallow: /promotions/
Disallow: /special-offers/
Disallow: /site-level/offers/
Disallow: /sitelevel/
Disallow: /testing-pages/
Disallow: /B2B/
Disallow: /help-welcome/
Disallow: /tacton/
Disallow: /stores/
Disallow: /Local/
Disallow: /saws.nsf
Disallow: /catalog.nsf
Disallow: *printerview.html
Disallow: *email.html
Disallow: *emailview.html
Disallow: /saws2.nsf
Disallow: /suite7
Disallow: /YFGApplication
Disallow: /genes/
Disallow: /author/
Disallow: /clips/
Disallow: /ifb/
Disallow: /catalog/AddToFavorite.do
Disallow: /MSDS/MSDS/PrintMSDSAction.do
Disallow: *.html|
Disallow: /catalog/Compare.do
Disallow: /bin/wcmcommand

# crawl budgeting 10172017
Disallow: /webapp/wcs/stores/servlet/AddItemsToQuickOrder
Disallow: /webapp/wcs/stores/servlet/OrderCenterView?
Disallow: */dynaTraceMonitor
Disallow: /catalog/TechContentTablePage.do?
Disallow: /catalog/AdvancedSearchPage.do?
Disallow: /catalog/NoSearchResults.jsp

#no index lang parameter opc pages
Noindex: /*?TablePage*?lang

# crawl budgeting 04202018 301 cleanup
Disallow: /site-level/email-tech-service-us.html?
Disallow: /insite_email_techservice?
Disallow: /system/sling/login.html
Disallow: /*?TablePage*?lang
Disallow: /catalog/documents?

# crawl budget 05162018
Disallow: /AddtoBasket.html  
Disallow: /webapp/wcs/stores/servlet/ProfileThankYouView?
Disallow: /site-level/special-forms/safc-quote-request.html?ProductNo=

#Baidu
User-agent: Baiduspider
Disallow: /cgi-bin/
Disallow: /cgibin/
Disallow: /admin/
Disallow: /login.html
Disallow: /Datanodes.html
Disallow: /Promo/
Disallow: /promo/
Disallow: /3pp/
Disallow: /promotions/
Disallow: /special-offers/
Disallow: /site-level/offers/
Disallow: /sitelevel/
Disallow: /testing-pages/
Disallow: /B2B/
Disallow: /help-welcome/
Disallow: /tacton/
Disallow: /stores/
Disallow: /Local/
Disallow: /saws.nsf
Disallow: /catalog.nsf
Disallow: *printerview.html
Disallow: *email.html
Disallow: *emailview.html
Disallow: /saws2.nsf
Disallow: /suite7
Disallow: /YFGApplication
Disallow: /genes/
Disallow: /author/
Disallow: /clips/
Disallow: /ifb/
Disallow: /catalog/AddToFavorite.do
Disallow: /MSDS/MSDS/PrintMSDSAction.do
Disallow: /catalog/Compare.do
Disallow: /bin/wcmcommand

# crawl budgeting 10172017
Disallow: /webapp/wcs/stores/servlet/AddItemsToQuickOrder
Disallow: /webapp/wcs/stores/servlet/OrderCenterView
Disallow: */dynaTraceMonitor
Disallow: /catalog/TechContentTablePage.do?
Disallow: /catalog/AdvancedSearchPage.do?
Disallow: /catalog/NoSearchResults.jsp

# crawl budgeting 04202018 301 cleanup
Disallow: /site-level/email-tech-service-us.html?
Disallow: /insite_email_techservice?
Disallow: /system/sling/login.html
Disallow: /catalog/documents?

# crawl budget 05162018
Disallow: /AddtoBasket.html  
Disallow: /webapp/wcs/stores/servlet/ProfileThankYouView?
Disallow: /site-level/special-forms/safc-quote-request.html?ProductNo=

#Sitemaps
Sitemap: https://www.sigmaaldrich.com/sitemap_index.xml
Sitemap: https://www.sigmaaldrich.com/abstract_index.xml
Sitemap: https://www.sigmaaldrich.com/cq5_sitemap.xml
Sitemap: https://www.sigmaaldrich.com/opc_sitemap.xml
Sitemap: https://www.sigmaaldrich.com/gene-symbol-sitemap2.xml
Sitemap: https://www.sigmaaldrich.com/gene-symbol-sitemap1.xml
Sitemap: https://www.sigmaaldrich.com/sitemap_china.xml