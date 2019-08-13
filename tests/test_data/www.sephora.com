########################################################
#
#    Sephora.com Robots File
#    Last Updated on April 14th, 2016
#
########################################################

User-agent: *
Disallow: /basket/
Disallow: /browse/
Disallow: /checkout/
Disallow: /contentStore/
Disallow: /error/
Disallow: /lovelist/
Disallow: /profile/MyAccount/
Disallow: /profile/login/
Disallow: /profile/orders/
Disallow: /profile/purchaseHistory/
Disallow: /profile/popup/
Disallow: /profile/logout/
Disallow: /profile/forgotpassword/
Disallow: /profile/myBeautyBag/
Disallow: /profile/accountHistory/
Disallow: /profile/common/
Disallow: /profile/orderConfirmation/
Disallow: /profile/registration/
Disallow: /search
Disallow: /shopping-list/
Disallow: /users/
Crawl-delay: 5

Sitemap: https://www.sephora.com/sitemap.xml