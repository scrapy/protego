User-Agent: *  
Disallow: /product/*
Disallow: /_includes/*/*.jsp$ 
Disallow: /account/privacy_policy.jsp 
Disallow: /store/selfservice/*.jsp$ 
Disallow: /store/cart/cart.jsp 
Disallow: /store/static/BopusInfo 
Disallow: /product.asp*&PrintMode
Disallow: /store/static/FreeShipping 
Disallow: /store/cart/
Disallow: /*.asp
Disallow: /search/search.aspx
Disallow: /store/static/GiftPackagingPopUp 
Disallow: /store/static/GiftPackagingUnavailable 
Disallow: /store/static/HealthyWomen/ 
Disallow: /store/static/ItemShippedDirectlyFromVendor 
Disallow: /store/static/RebatePolicy 
Disallow: /store/static/ShippingRestrictions/ 
Disallow: /store/static/ShopGraco/ 
Disallow: /store/static/SoftLaunchOffer/ 
Disallow: /store/static/VendorDropShipPopUp/ 
Disallow: /store/static/destinationMaternityJump/
Disallow: /store/browse/print/product_details.jsp* 
Disallow: /store/category/*/*/*/_*_*_*/* 
Disallow: /store/category/*/*/*/*/_*_*_*/* 
Disallow: /store/brand/*/*/_*_*_*/* 
Disallow: /store/category/*/*/*/_*/store-*/* 
Disallow: /store/brand/*/*/_*/store-*/* 
Disallow: /store/s/*/_*
Disallow: /_includes/*
Disallow: /store/browse/print/product_details.jsp*
Disallow: /cgi-bin
Disallow: /LocatorCode
Disallow: /Bonus



User-agent: Mediapartners-Google
Disallow: /

User-agent: AhrefsBot
Disallow: /
