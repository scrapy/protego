# Global robots.txt updated 2018-04-13

User-agent: *
Disallow: /bin/
Disallow: /product/review/add/
Disallow: /cart$
Disallow: /cart?*
Disallow: /marty/cart
Disallow: /logout
Disallow: /register
Disallow: /account
Disallow: /marty/account
Disallow: /multiview/
Disallow: /productNotifyMe.do*
Disallow: /tellAFriend.do*
Disallow: /prd/popups/brandNotifyMe.zml
Disallow: /reportBadProductDescription.do*
Disallow: /rss/
Disallow: /filters/
Noindex: /filters/
