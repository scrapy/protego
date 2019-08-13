#
# robots.txt - Cost Plus World Market https://www.worldmarket.com
#

User-agent: *
Allow: /images/
Allow: /text/inc/*.js
Allow: /text/inc/*.css
Disallow: /util/
Disallow: /account/*
Disallow: /text/
Disallow: /source/
Disallow: /cms_widgets/
Disallow: /assets/
Disallow: /lev/
Disallow: /pwr/
Disallow: /Y/
Disallow: /g/
Disallow: /category/customer-service/mobile-privacy.do
Disallow: /basket.do*
Disallow: /brancillary.do
Disallow: /WMQuickViewEnhancements.do
Disallow: /thankyou.do
Disallow: /*/TellAFriendSubmit.do*
Disallow: /tellafriend.do*
Disallow: /addToBasket.do*
Disallow: /checkout/*
Disallow: /stockAvailability.do*
Disallow: /product/reviewsubmit.do*
Disallow: /cache/*
Disallow: /mystore.do*
Disallow: /recommendation/rti.do*

#Sitemaps
Sitemap: https://www.worldmarket.com/sitemap.xml
Sitemap: https://www.worldmarket.com/blog/post-sitemap.xml
