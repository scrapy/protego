# /robots.txt file for WR Fusion site
# Version 1.4 2011-04-20

User-agent: *

Sitemap: https://www.waitrose.com/sitemapIndex.xml

#Trolley Pages
Disallow: /shop/ViewTrolley


#Check Out
Disallow: /shop/RegistrationInitiate
Disallow: /shop/CheckOutInitiateCmd
Disallow: /shop/CheckOutOrderPreviewCmd
Disallow: /shop/CheckOutPaymentCmd
Disallow: /shop/OrderProcess




#User details
Disallow: /shop/InitiateLogin
Disallow: /shop/RegistrationInitiate
Disallow: /shop/InitiateMyAccount
Disallow: /shop/LoginDetailsInitiateCmd
Disallow: /shop/PrivateInfoInitiateCmd
Disallow: /shop/AddressInitiateCmd
Disallow: /shop/GetPaymentBillingDetailsCmd
Disallow: /shop/OrderStatusDisplayCmd
Disallow: /shop/InterestItemDisplayCmd
Disallow: /shop/InitiateShoppingListCmd
Disallow: /shop/SaveSubstitutionPreferenceCmd
Disallow: /shop/Logoff
Disallow: /home/forum.html
Disallow: /content/waitrose/en/home/forum/
Disallow: /shop/MyAccount
Disallow: /shop/MyAddresses
Disallow: /shop/MyLists
Disallow: /shop/GetCustomerOrders

#INC0319111
Disallow: /home/groceries/online_grocery_delivery.html

#CHG0013642
Disallow: /content/waitrose/en/home/groceries/online-grocery-delivery.html
Disallow: /content/waitrose/en/home/groceries/online-grocery-delivery2.html
Disallow: /content/waitrose/en/home/groceries/online-grocery-deliver1.html
Disallow: /content/waitrose/en/home/groceries/offer-new-75.html

#WPIP-1635
Disallow: /shop/OfferDetails
Disallow: /ecom/shop/offers

Allow: /ecom

#CHG0223681
Allow: /.well-known/

#CHG0156758
Crawl-delay: 1

#CHG0226882
Disallow: */undefined/*

#CHG0228904
Disallow: *search?*
Disallow: *HeaderSearchCmd*
Disallow: *en/profile*
Disallow: *A4*
Disallow: *A5*

#CHG0237209
Disallow: */webapp/*

#CHG0241294
Disallow: *?fulfilment*
Disallow: /shop/LogonForm*


