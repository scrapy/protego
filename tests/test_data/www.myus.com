# https://developers.google.com/webmasters/control-crawl-index/docs/robots_txt?hl=en
# allow all crawlers
user-agent: *

# images
disallow: /content/images/
disallow: /content/styles/images/

# search
disallow: /?*Query=
disallow: /?Query=
disallow: /?*query=
disallow: /?query=

# country page tabs
disallow: /*?tab=*
disallow: /?tab=*

# 10-23-2017 Update
disallow: /?ref=*
disallow: /*?ref=*
disallow: /?review-page*
disallow: /*?review-page*

# Meeting On 6/7
disallow: /*?gclid=*
disallow: /?gclid=*

# Meeting On 6/21
disallow: /?ReturnUrl=*

# member reviews by country
disallow: /benefits/myus-reviews/?*countryCode=*
disallow: /benefits/myus-reviews/?countryCode=*
disallow: /benefits/myus-reviews/?*countrycode=*
disallow: /benefits/myus-reviews/?countrycode=*

# Meeting on 3/29
disallow: /benefits/shopping/deals-coupons-f2/
disallow: /pk/?hc_location=ufi*

# blog and news paging
disallow: /blog/?*page=*
disallow: /blog/?page=*
disallow: /about/news/?*page=*
disallow: /about/news/?page=*

# 6524
# Landing pages

# allow - not fully supported, add entries to sitemap.xml
allow: /welcome/amex/
allow: /welcome/mastercard/
allow: /welcome/visa/

# block the rest
disallow: /welcome/adslgate/
disallow: /welcome/aussie/
disallow: /welcome/bankaudi/
disallow: /welcome/burgan/
disallow: /welcome/dinersclub/
disallow: /welcome/friendsandfamily/
disallow: /welcome/jcb/
disallow: /welcome/jcb/jp/
disallow: /welcome/middle-east-ar/
disallow: /welcome/middle-east-en/
disallow: /welcome/landing/
disallow: /welcome/linkshare/
disallow: /welcome/paypal/
disallow: /welcome/middle-east/
disallow: /welcome/sem/
disallow: /welcome/ndani/
disallow: /welcome/icici/
disallow: /welcome/sign-up-with-myus-start-shipping/
disallow: /welcome/sign-up-with-myus-start-shipping-today/
disallow: /welcome/usunlocked/
disallow: /welcome/welcomeback/
# 7230
disallow: /welcome/amexinvita/
disallow: /mastercard/ap/

# block all country-specific landing pages
disallow: /us/get-a-us-address-angola/ 
disallow: /us/get-a-us-address-angola-2/
disallow: /us/get-a-us-address-australia/
disallow: /us/get-a-us-address-canada/
disallow: /us/get-a-us-address-japan/
disallow: /us/get-a-us-address-kuwait/
disallow: /us/get-a-us-address-nigeria/
disallow: /us/get-a-us-address-saudi_arabia/
disallow: /us/get-a-us-address-south_africa/
disallow: /us/get-a-us-address-uae/
disallow: /us/get-a-us-address-uk/
disallow: /us/ship-from-us-to-japan-2/
disallow: /us/myus-angola/
disallow: /us/myus-australia/
disallow: /us/myus-canada/
disallow: /us/myus-india/
disallow: /us/myus-japan/
disallow: /us/ship-from-us-to-kuwait/
disallow: /us/ship-from-us-to-nigeria/
disallow: /us/shop-us-saudi_arabia/
disallow: /us/shop-us-south_africa/
disallow: /us/shop-us-uae/
disallow: /us/shop-us-uk/
disallow: /us/myus-australia-1/
disallow: /us/ab/
disallow: /us/ab-1/
disallow: /us/ship-from-us-to-china/
disallow: /us/get-a-us-address-india/ 

# 7229
disallow: /myus-tutorial-faq/

# 3-15-2016 Meeting
disallow: /cgi-bin/
disallow: /en/

# sitemap - Supported by Google, Ask, Bing, Yahoo; defined on sitemaps.org
sitemap: https://www.myus.com/sitemap.xml

# 8235
disallow: /signup/

# 2957
disallow: /email/

# banners
disallow: /banner/

# Answers
disallow: /faqs/

#Ajax requests
disallow: /_?
disallow: /_/

# AddSearchBot
user-agent: AddSearchBot
allow: /faqs/

user-agent: *
user-agent: rogerbot
user-agent: Googlebot
user-agent: Googlebot-Image
user-agent: Googlebot-Video
user-agent: Googlebot-News
user-agent: Bingbot
user-agent: MSNBot
user-agent: MSNBot-Media
user-agent: BingPreview
user-agent: Slurp
user-agent: DuckDuckBot
user-agent: Baiduspider
user-agent: Baiduspider-mobile
user-agent: YandexBot
user-agent: facebot
user-agent: Teoma
user-agent: AOLBuild
user-agent: NaverBot
user-agent: AppleBot