#robots.txt for https://www.monoprice.com/
User-agent: *
Disallow: /myaccount
Disallow: /sslchkout
Disallow: /Checkout
Disallow: /StaticContent
Disallow: /MyAccount
Disallow: /Cart
Disallow: /cart
Disallow: /twitter.com/
Disallow: /ProductShareOnBlog
Disallow: eform=e
Disallow: /ProductSavedList
Disallow: /chat
Disallow: /ProductSavedListUpdate
User-agent: Googlebot
Disallow:
User-agent: Googlebot-image
Disallow:
User-agent: APIs-Google
Disallow: 
Sitemap: https://www.monoprice.com/sitemap/sitemap.xml

# In the future...
# Disallow: javascript:fb_share(10797,122,12212,1221201)
