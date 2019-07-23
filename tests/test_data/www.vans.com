# robots.txt for https://www.vans.com
User-agent: *
Disallow: /utility/store-locator/store-details.html 
Disallow: /utility/store-locator/store-directions.html 
Disallow: /utility/store_locator/store_detail/mini-case.html
Disallow: /webapp/wcs/stores/servlet/OrderItemDisplay
Disallow: /webapp/wcs/stores/servlet/VFShippingAddressView
Disallow: /webapp/wcs/stores/servlet/VFBillingAndPaymentView
Disallow: /shop/SingleShipmentOrderSummaryView
Disallow: /webapp/wcs/stores/servlet/OrderOKView
Disallow: /shop/SearchDisplay*
Disallow: /utility/article-search-results*
Disallow: /ns/vans/projects*
Disallow: /ns/vans/js*
Disallow: /dealers*
Disallow: /shop/VFProductAvailabilityNotifyForm*
Disallow: /custom-2.html*
Disallow: /customizer.html*
Disallow: /catalog/Vans/en_US*
Disallow: /shop/LogonForm*
Disallow: /shop/VFFavoriteListDisplayView*
Disallow: /shop/VFLogonFormHopUp*
Disallow: /webapp/wcs/stores/servlet/VFShareFavoriteListDisplay*
Disallow: /shop/test-wshoes
Disallow: /shop/test-mshoes
Disallow: /shop/VFCanonicalSearchDisplay*
Disallow: catalogId=10001*
Disallow: linkRef=editCart*
Disallow: /shop/VFLogoff*
Disallow: /search-autosuggest*
Disallow: /en-gb/vans-dk/*

Sitemap: https://www.vans.com/sitemap.xml
Sitemap: https://www.vans.com/international-us-sitemap.xml

User-agent: AdsBot-Google
Disallow: /webapp/wcs/stores/servlet/OrderItemDisplay
Disallow: /webapp/wcs/stores/servlet/VFShippingAddressView
Disallow: /webapp/wcs/stores/servlet/VFBillingAndPaymentView
Disallow: /shop/SingleShipmentOrderSummaryView
Disallow: /webapp/wcs/stores/servlet/OrderOKView


# __   __   _     _  _   ___        ___    ___    __  __     
# \ \ / /  /_\   | \| | / __|      / __|  / _ \  |  \/  |    
#  \ V /  / _ \  | .` | \__ \  _  | (__  | (_) | | |\/| |    
#   \_/  /_/ \_\ |_|\_| |___/ (_)  \___|  \___/  |_|  |_|
#
# 
# || ___    ___   ___ 
#   / _ \  | __| | __|
#  | (_) | | _|  | _| 
#   \___/  |_|   |_|
#                                                         
#   _____   _  _   ___ 
#  |_   _| | || | | __|
#    | |   | __ | | _| 
#    |_|   |_||_| |___|
#        
#    ___   ___     _   __      __  _  ||
#   / __| | _ \   /_\  \ \    / / | |   
#  | (__  |   /  / _ \  \ \/\/ /  | |__ 
#   \___| |_|_\ /_/ \_\  \_/\_/   |____|
#                       
#
#   O-\-<]:                                                                                                 
               