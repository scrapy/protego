

# For all robots
User-agent: *

# Block access to specific groups of pages
Disallow: /cart
Disallow: /checkout
Disallow: /my-account
Disallow: */_/N-*
Disallow: /cart
Disallow: /checkout
Disallow: /my-account
Disallow: /check-prod-in-wishlist
Disallow: *Ns=*
Disallow: /search
Disallow: *text=*
Disallow: *size=*
Disallow: /c/
Disallow: /writeReview
Disallow: /outlet/buy/
Disallow: *cid=*
Disallow: *ci_src=*
Disallow: *ci_sku*
Disallow: *pageId=*
Disallow: *sku=*
Disallow: *appName=*

# Allow search crawlers to discover the sitemap
 Sitemap: https://www.westmarine.com/sitemap/wm-sitemap-index.xml


# Block CazoodleBot as it does not present correct accept content headers
User-agent: CazoodleBot
Disallow: /

# Block MJ12bot as it is just noise
User-agent: MJ12bot
Disallow: /

# Block dotbot as it cannot parse base urls properly
User-agent: dotbot/1.0
Disallow: /

# Block Gigabot
User-agent: Gigabot
Disallow: /