User-agent: *
Allow: /
Sitemap: https://www.qvc.com/sitemap-us-index.xml

# Throttle bingbot
User-agent: bingbot 
Crawl-delay: 1 

# HTML Pages
Disallow: /FAQPrivacy.content.html
Disallow: /GeneralTermsandConditions.content.html
Disallow: /legalinfo.content.html
Disallow: /pagenotfound.content.html
Disallow: /ProductRecall.content.html
Disallow: /QVCCommunity.content.html
Disallow: /SafeHarborStatement.content.html
Disallow: /InsideQECatalog.content.html
Disallow: /InQMembershipDetails.content.html

# Affiliates
Disallow: /scripts/
Allow: /scripts/reference.pl*ref=GBA*

# Internal Pages
Disallow: /AddressBookForm
Disallow: /ChangePassword
Disallow: /CreditCardDisplay
Disallow: /EditPermanentShippingAddressView
Disallow: /EmailServicesForm
Disallow: /Logoff
Disallow: /OrderStatus
Disallow: /UserRegistrationUpdateFormView
Disallow: /webapp/wcs/stores/servlet/OrderReceiptView
Disallow: /webapp/wcs/stores/servlet/OrderStatus
Disallow: /webapp/wcs/stores/servlet/ProdNotFoundView
Disallow: /CatalogSearch
Disallow: /webapp/wcs/stores/servlet/AddToCart
Disallow: /webapp/wcs/stores/servlet/OrderItemDisplay
Disallow: /LogonForm
Disallow: /webapp/wcs/stores/servlet/EmailServiceOptOutView
Disallow: /webapp/wcs/stores/servlet/EmailUnsubscribeView
Disallow: /webapp/wcs/stores/servlet/EmailUnsubscribeConfirmView
Disallow: /webapp/wcs/stores/servlet/EmailServiceOptOutConfirmView

# HTML and PDF Includes
Disallow: /cd/*.html
Disallow: /cl/*.html
Disallow: /el/*.html
Disallow: /fa/*.html
Disallow: /footers/*.html
Disallow: /fth/*.html
Disallow: /hb/*.html
Disallow: /jw/*.html
Disallow: /ws/*.html
Disallow: /wcsstore/US/content/html/cd/*.html
Disallow: /wcsstore/US/content/html/cl/*.html
Disallow: /wcsstore/US/content/html/el/*.html
Disallow: /wcsstore/US/content/html/fa/*.html
Disallow: /wcsstore/US/content/html/footers/*.html
Disallow: /wcsstore/US/content/html/fth/*html
Disallow: /wcsstore/US/content/html/hb/*.html
Disallow: /wcsstore/US/content/html/jw/*.html
Disallow: /wcsstore/US/content/html/moreinfo/
Disallow: /wcsstore/US/content/html/ws/*.html
Disallow: /err/
Disallow: /mail_*
Disallow: /Mail_*
Disallow: /em_*
Disallow: /Em_*
Disallow: /email_*
Disallow: /Email_*
Disallow: /*APTSV*
Disallow: /*aptsv*
Disallow: /BESErrorView*
Disallow: /*overlay=true*

#Legacy
Disallow: /cgen/
Disallow: /qic/

#AEM CHECKOUT

Disallow: /myaccount/my-account.html
Disallow: /myaccount/create-account.html
Disallow: /myaccount/password/reset.html
Disallow: /myaccount/password/reset-success.html
Disallow: /myaccount/password/forgot.html
Disallow: /myaccount/pin/reset-success.html
Disallow: /myaccount/pin/forgot.html
Disallow: /myaccount/pin/reset.html
Disallow: /myaccount/overlay/add-shipping-address-overlay.html
Disallow: /myaccount/overlay/edit-shipping-address-overlay.html
Disallow: /myaccount/overlay/edit-payment-method-overlay.html
Disallow: /myaccount/overlay/add-payment-method-overlay.html
Disallow: /myaccount/overlay/login-overlay.html
Disallow: /myaccount/overlay/create-password-overlay.html
Disallow: /myaccount/overlay/add-payment-method.html
Disallow: /myaccount/overlay/login-overlay.html
Disallow: /myaccount/reg/shipping-addresses.html
Disallow: /myaccount/reg/payment-methods.html
Disallow: /content/qvc-commerce-us/en/info/popups/checkout/*
Disallow: /content/qvc-commerce-us/en/info/popups/cart/*
Disallow: /content/qvc-commerce-us/en/checkout/reg/*
Disallow: /content/qvc-commerce-us/en/checkout/new/*
Disallow: /content/qvc-commerce-us/en/checkout/npo/*
Disallow: /content/qvc-commerce-us/en/checkout/overlay/*
Disallow: /checkout/*
Disallow: /api/*
