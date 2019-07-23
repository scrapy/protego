#
# robots.txt file for  https://www.llbean.com
#
 
User-agent: *
Disallow: /v1/
Disallow: /bin/
Disallow: /search/
Disallow: /jsData/
Disallow: /kiosk/
Disallow: /buttons/
Disallow: /flash/
Disallow: /fsrscripts/
Disallow: /promotions/
Disallow: /parksearch/
Disallow: /webapp/wcs/stores/servlet/ShowProductPostAdd
Disallow: /webapp/wcs/stores/servlet/ShowShoppingCart
Disallow: /webapp/wcs/stores/servlet/ShowCheckLogon
Disallow: /webapp/wcs/stores/servlet/LogonForm
Disallow: /webapp/wcs/stores/servlet/ShowSizeChart
Disallow: /webapp/wcs/stores/servlet/ShowZoom
Disallow: /webapp/wcs/stores/servlet/ShowCollectionOrdering
Disallow: /webapp/wcs/stores/servlet/LargerView
Disallow: /webapp/wcs/stores/servlet/ShowRioXML
Disallow: /*ShowRuntimeError
Disallow: /webapp/wcs/stores/servlet/ShowOrderTrackingDetails
Disallow: /webapp/wcs/stores/servlet/ShowMainCustomization
Disallow: /webapp/wcs/stores/servlet/ShowProductWidget
Disallow: /webapp/wcs/stores/servlet/ShowAdventureListXML
Disallow: /webapp/wcs/stores/servlet/LLBFieldValidationJSON
Disallow: /webapp/wcs/stores/servlet/OrderItemUpdateCheck
Disallow: /webapp/wcs/stores/servlet/ShowPzPromoLookup
Disallow: /webapp/wcs/stores/servlet/ShowParksNearBy
Disallow: /webapp/wcs/stores/servlet/WishListDisplay
Disallow: /wl/
Disallow: /email-g
Disallow: /email-a
Disallow: /email-n
Disallow: /email-p

Sitemap: https://www.llbean.com/llbean-sitemap.xml
Sitemap: https://www.llbean.com/llbean-vsitemap.xml
 
