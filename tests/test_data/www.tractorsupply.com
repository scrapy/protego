User-agent: *

Crawl-delay: 1

Disallow: /StoreLocator/
Disallow: /AjaxCheckoutDisplayView/
Disallow: /CheckoutGuestView/
Disallow: /OrderShippingBillingView/
Disallow: /OrderShippingBillingConfirmationView/
Disallow: /OrderLookUpView/
Disallow: /OrderLookUpResultsView/
Disallow: /RememberMeLogonFormView/
Disallow: /UserRegistrationAddFormView/
Disallow: /TrackOrderStatus/
Disallow: /OrderDetail/
Disallow: /AddressBookForm/
Disallow: /ResetPasswordForm/
Disallow: /ResetPasswordErrorView/
Disallow: /ChangePassword/
Disallow: /WishListDisplayView/
Disallow: /AjaxAccountWishListDisplayView/
Disallow: /WishListResultDisplayView/
Disallow: /OpenIdLogin/
Disallow: /OrderLookUpForm/
Disallow: /ValidatePasswordAndSignUpForm/
Disallow: /AjaxUserRegistrationAddressForm/
Disallow: /AjaxAddressVerificationService/
Disallow: /TopCategoriesDisplay/
Disallow: /CategoryDisplay/
Disallow: /ProductDisplay/
Disallow: /SearchDisplay/
Disallow: /UserRegistrationForm/
#Changes on 21/03 for HTTPS & BOPIS
Disallow: /AjaxOrderItemDisplayView/
Disallow: /QuickInfoDetailsView/
Disallow: /TSCOrderItemDetailsDisplay/
Disallow: /current-ads/
Disallow: /SearchComponentCachedSuggestionsView/
Disallow: /SearchComponentAutoSuggestView/
Disallow: /IntelligentOfferResultsView/
Disallow: /TSCFetchItemDetails/
Disallow: /AjaxContentRecommendationView/
Disallow: /AjaxTSCFetchStores/
Disallow: /TSCBOPISCheckAvailability/
Disallow: /AjaxTSCUpdateStore/
Disallow: /AjaxTSCFetchZipCode/
Disallow: /AjaxTSCGetInventory/
Disallow: /AjaxEstimateChargeView/
Disallow: /AjaxUpdateLTLInfo/
Disallow: /MiniShopCartDisplayView/
Disallow: /AjaxOrderChangeServiceItemAdd/
Disallow: /AjaxOrderChangeServiceItemUpdate/
Disallow: /TSCCheckoutDisplayShippingCmd/
Disallow: /AjaxPersonChangeServiceAddressAdd/
Disallow: /AjaxNewAddressVerificationService/
Disallow: /AjaxSaveAddressUpdateShipInfo/
Disallow: /TSCCheckoutDisplayPickupDetailsCmd/
Disallow: /AjaxSavePickupPersonDetails/
Disallow: /TSCCheckoutDisplayShippingMethodCmd/
Disallow: /AjaxUpdateShippingSpeedForAnItem/
Disallow: /TSCCheckoutDisplayBillingAndPaymentDetailsCmd/
Disallow: /AjaxTSCPIAdd/
Disallow: /TSCCheckoutDisplayReviewPageDetailsCmd/
Disallow: /OrderShippingBillingConfirmationView/
Disallow: /AjaxOrderProcessServiceOrderPrepare/
Disallow: /AjaxOrderProcessServiceOrderSubmit/
Disallow: /AjaxUpdateShippingAddress/
Disallow: /AjaxPromotionCodeManage/
Disallow: /AjaxLogonForm/
Disallow: /AjaxStoreLocatorOverlayView/
Disallow: /AjaxSubCategoryDesktopDisplayView/
Disallow: /AjaxGiftListServiceAddItem/
Disallow: /AjaxSaveAlternativePickupPerson/
Disallow: /AjaxKnowHowDisplayView/
Disallow: /AjaxContactUsService/
Disallow: /AjaxGiftListServiceCreate/
Disallow: /AjaxSSFSOrderCopy/
Disallow: /AjaxSubCategoryMobileDisplayView/
Disallow: /AjaxTSCFetchInStoreDetails/
Disallow: /AjaxOrderChangeServiceItemDelete/
Disallow: /AjaxFooterDisplayView/
Disallow: /webapp/wcs/stores/servlet/SearchDisplay/
Disallow: /webapp/wcs/stores/servlet/ProductDisplay/
Disallow: /webapp/wcs/stores/servlet/CategoryDisplay/
Disallow: /webapp/wcs/stores/servlet/ClickInfo/
Disallow: /Logoff/
Disallow: /en/store/
Disallow: /en/store/search/
Disallow: /detail.asp/

#Changes on 10/01
Disallow: /en/store/UserRegistrationForm/
Disallow: /en/store/search/UserRegistrationForm/
Disallow: /en/store/ClickInfo/

#TSC XML Sitemap location
Sitemap: http://www.tractorsupply.com/sitemap.xml
#Sitemap: http://www.tractorsupply.com/TSCStructuredContent.xml
#Sitemap: http://www.tractorsupply.com/TSCUnStructuredContent.xml

#ECOM-8303 ECOM-6587
Disallow: /QuickInfoDetailsView*?*
Disallow: /ReLogonFormView/
Disallow: /LogoffView/
Disallow: /ProductListingView/

#ECOM-14354
Disallow: /ReturnProcessView/
Disallow: /AjaxCreateReturnOrder/
Disallow: /TSCAjaxReturnCmd/

#ECOM-21238
Disallow: /OrderLookUpView/
Disallow: /ResetPasswordGuestErrorView/
Disallow: /TSCOrderItemDetailsDisplay/
Disallow: /webapp/wcs/stores/servlet/LogonForm/
Disallow: /tsc/search/
Disallow: /TSCCheckGiftCardView/
Disallow: /tsc/current-ads/

