User-agent: *

# Allow Individual Pages
Allow: /egift/eGiftPurchase.action
Allow: /profile/enrolllanding.action
Allow: /home/

# Allow Individual .jsp Pages
Allow: /index.jsp
Allow: /components/popups/skymark/terms.jsp
Allow: /deltareservemqm/mbrLanding.action
Allow: /app_links/join_skymiles/index.jsp
Allow: /awards/skymark/landing/index.jsp
Allow: /privacy_security/index.jsp
Allow: /worldwide_sites/index.jsp
Allow: /cns/travel/flight_notification/index.jsp
Allow: /components/help/apps/booking/fare_class.jsp
Allow: /mqm-calculator/help/class.jsp

# Allow Subfolders with .jsp pages
Allow: /about_delta/
Allow: /business_programs_services/
Allow: /care/
Allow: /help/
Allow: /legal/
Allow: /marketing/
Allow: /planning_reservations/
Allow: /prog_serv/
Allow: /skymiles/
Allow: /travel/
Allow: /traveling_checkin/

# Allow App Subfolders
Allow: /buygftxfer/
Allow: /contactus/
Allow: /baggage/
Allow: /profile/
Allow: /cns/
Allow: /inside/
Allow: /schedules/
Allow: /travel-agency/
Allow: /emailus/
Allow: /dlsearch/
Allow: /skyclub/*.action
Allow: /merch/shop*.action

# Disallow file types
Disallow: /*.jsp
Disallow: /*.pdf

# Disallow generated pages
Disallow: /profile/enrolllanding.action?partnerCd*
Disallow: /merch/searchHotelAction.action?locationCode*
Disallow: /merch/searchCarAction.action?locationCode*
Disallow: /edoc/displayEdocTNC.action*
Disallow: /edoc/redeemDocuments.action?action=*
Disallow: /air-shopping/findFlights.action?action=
Disallow: /air-shopping/findFlights.action?originCity=
Disallow: /flight-search/book-a-flight?cacheKeySuffix=
Disallow: /flight-search/search?&tripType=
Disallow: /flight-search/search?action=
Disallow: /custlogin/showResetPassword.action*
Disallow: /flight-search-2/

# Disallow Subfolders
Disallow: /cart/
Disallow: /customerprofile/
Disallow: /edocviewer/
Disallow: /oci/
Disallow: /onlinerefunds/
Disallow: /PCCOciWeb/
Disallow: /smlogin/
Disallow: /widgetnav/
Disallow: /acctmaint/
Disallow: /intranetlink/
Disallow: /booking/
Disallow: /contactus/shared
Disallow: /content/dam/delta-www/pdfs/
Disallow: /seat/
Disallow: /components/
Disallow: /content/www/reference/
Disallow: /content/www/en_us/offers-and-redirects
Disallow: /content/campaigns/
Disallow: /myitinerary/
Disallow: /custlogin/
Disallow: /cartalacarte/
Disallow: /air-shopping/

# Disallow Individual App Pages
Disallow: /book/activity/confirmation.action
Disallow: /mytrips/printItinerary.action
Disallow: /mydelta/receiptDetailsPage
Disallow: /mydelta/receiptDetailsPage.action
Disallow: /mydelta/vacationReceiptDetailsPage
Disallow: /mydelta/walletMyReceiptSummary
Disallow: /mydelta/walletMyVoucherSummary

# Disallow smt links
Disallow: /*smt-silver.html
Disallow: /*smt-platinum.html
Disallow: /*smt-gold.html
Disallow: /*smt-diamond.html
Disallow: /*smt-loggedIn.html
Disallow: /*smt-member.html

# Disallow Secondary Content Pages
Disallow: /apac/en/
Disallow: /br/en/
Disallow: /ca/en/
Disallow: /cn/en/
Disallow: /eu/en/
Disallow: /fr/en/
Disallow: /gb/en/
Disallow: /jp/en/
Disallow: /kr/en/
Disallow: /lac/en/
Disallow: /mea/en/
Disallow: /mx/en/
Disallow: /eu/es/
Disallow: /lac/es/
Disallow: /mx/es/
Disallow: /eu/fr/
Disallow: /ca/fr/
Disallow: /eu/pt/
Disallow: /intl/en/
Disallow: /global/en/
Disallow: /content/www/apac/en/
Disallow: /content/www/br/en/
Disallow: /content/www/ca/en/
Disallow: /content/www/cn/en/
Disallow: /content/www/eu/en/
Disallow: /content/www/fr/en/
Disallow: /content/www/gb/en/
Disallow: /content/www/jp/en/
Disallow: /content/www/kr/en/
Disallow: /content/www/lac/en/
Disallow: /content/www/mea/en/
Disallow: /content/www/mx/en/
Disallow: /content/www/eu/es/
Disallow: /content/www/lac/es/
Disallow: /content/www/mx/es/
Disallow: /content/www/eu/fr/
Disallow: /content/www/ca/fr/
Disallow: /content/www/eu/pt/
Disallow: /content/www/intl/en/
Disallow: /content/www/global/en/

# Disallow Secondary Home Pages
Disallow: /apac/en
Disallow: /br/en
Disallow: /ca/en
Disallow: /cn/en
Disallow: /eu/en
Disallow: /fr/en
Disallow: /gb/en
Disallow: /jp/en
Disallow: /kr/en
Disallow: /lac/en
Disallow: /mea/en
Disallow: /mx/en
Disallow: /eu/es
Disallow: /lac/es
Disallow: /mx/es
Disallow: /eu/fr
Disallow: /ca/fr
Disallow: /eu/pt

Sitemap:  https://www.delta.com/sitemap.xml