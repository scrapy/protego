#Disallow the following URLs

User-agent: *
Disallow: /image-server/
Disallow: /ulta/cart/
Disallow: /ulta/checkout/
Disallow: /ulta/myaccount/login.jsp
Disallow: /ulta/myaccount/register.jsp
Disallow: /ulta/myaccount/pages/order_status_anonymous.jsp
Disallow: /ulta/myaccount/template.jsp
Disallow: /ulta/myaccount/rewards_template.jsp
Disallow: /ulta/myaccount/addressbook.jsp
Disallow: /ulta/myaccount/rewards.jsp
Disallow: /ulta/myaccount/preferences.jsp
Disallow: /ulta/myaccount/reset_password.jsp
Disallow: /ulta/myaccount/order.jsp
Disallow: /ulta/common/affiliate.jsp
Disallow: /ulta/common/sms-text.jsp
Disallow: /ulta/common/sms-help.jsp
Disallow: /ulta/common/merchandising.jsp
Disallow: /ulta/common/privacyPolicy.jsp
Disallow: /ulta/common/user_agreement.jsp
Disallow: /ulta/common/inc/productDetail_price.jsp
Disallow: /ulta/common/supply_chain_transparency.jsp
Disallow: /ulta/common/charitablegiving.jsp
Disallow: /common/affiliate.jsp
Disallow: /common/sms-text.jsp
Disallow: /common/sms-help.jsp
Disallow: /common/merchandising.jsp
Disallow: /common/privacyPolicy.jsp
Disallow: /common/user_agreement.jsp
Disallow: /common/inc/productDetail_price.jsp
Disallow: /common/supply_chain_transparency.jsp
Disallow: /common/charitablegiving.jsp
Disallow: /ulta/external/
Disallow: /ulta/reminder/
Disallow: /ulta/integrations/
Disallow: /browse/inc/addToFavorites.jsp
Disallow: /browse/inc/productDetail_crossSell.jsp
Disallow: /ulta/review
Disallow: /review
Disallow: /ui/pdp/review
Disallow: /creditcards/c
Disallow: /bag
Disallow: /checkout
Disallow: /featured
Disallow: /vba

Noindex: /bag
Noindex: /checkout
Noindex: /vba

User-agent: AdsBot-Google-Mobile
User-agent: AdsBot-Google
Allow: /featured

#Sitemaps
Sitemap: https://www.ulta.com/index.xml