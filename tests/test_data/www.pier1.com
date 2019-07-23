User-agent: *
Disallow: /*q=*
Disallow: /Product-ShippingMethodsInfo*
Disallow: /Wishlist-Add*
Disallow: /SendtoFriend*
Disallow: /Account-PasswordResetDialog*
Disallow: /Account-OrderStatus*
Disallow: /swingasan-recall*
Disallow: /*Checkout-CustomerLogin
Disallow: /*Account-*
Disallow: /*Password-Reset*
Disallow: /*Order-*
Disallow: /*Checkout-GetConfirmation
Disallow: /*prefn4=*
Disallow: /*return(false)*
 
Noindex: /swingasan-recall*
Noindex: /Account-OrderStatus*
Noindex: /*prefn4=*
Noindex: /*return(false)*

Sitemap: http://www.pier1.com/sitemap_index.xml