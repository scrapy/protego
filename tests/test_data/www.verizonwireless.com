User-Agent: * 
Allow: *.js 
Allow: *.css 
Disallow: /cgi-bin
Disallow: /perl
Noindex: /clp/login
Noindex: */accessmanager
Noindex: /vzwapp/prepay   
Noindex: *accessoryDetailsForSearchDump 
Noindex: */com/vzw/commerce/order/purchase/
Noindex: */checkout/ 


##PREPAID ATG
Disallow: /prepaid/browse/cart.jsp
Disallow: */btwn
Disallow: /accessories/*-sku-
Disallow: /accessories/tealeaf/target/TealeafTarget.jsp

## OMNI RELATED
Disallow: */browse/RVInfoActor/loadRVInfo
Disallow: */browse/DeviceDetailsActor/
Disallow: /miniCartRenderer.jsp
Disallow: /browse/deviceDetails.jsp
Disallow: */browse/deviceISPUDetails.jsp
Disallow: */browse/devicesetup/
Disallow: */com/vzw/commerce/order/purchase/
Disallow: */desktop/browse/includes/
Disallow: /vzw/threeDsecure/
Disallow: */checkout/
Disallow: /vmmupgrade/
Noindex: /amserver/UI/Login?
Noindex: /content/vzw-engage/c2c/
Disallow: /vzw/secure/authDecision.jsp

##Affiliate
Noindex: */swf/
Noindex: *.swf
Noindex: /support/secure/
Noindex: /od/cust/cart/addRemoveAccessory?

##Sitemap definitions
Sitemap: https://www.verizonwireless.com/sitemaps_index.xml

