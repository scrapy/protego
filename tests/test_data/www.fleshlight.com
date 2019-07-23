# we use Shopify as our ecommerce platform

User-agent: *
Disallow: /admin
Disallow: /cart
Disallow: /orders
Disallow: /checkout
Disallow: /9927780/checkouts
Disallow: /9927780/orders
Disallow: /carts
Disallow: /account
Disallow: /collections/*+*
Disallow: /collections/*%2B*
Disallow: /collections/*%2b*
Disallow: /blogs/*+*
Disallow: /blogs/*%2B*
Disallow: /blogs/*%2b*
Disallow: /*design_theme_id*
Disallow: /*preview_theme_id*
Disallow: /*preview_script_id*
Disallow: /policies/
Disallow: /search
Disallow: /apple-app-site-association
Sitemap: https://www.fleshlight.com/sitemap.xml

# Google adsbot ignores robots.txt unless specifically named!
User-agent: adsbot-google
Disallow: /checkout
Disallow: /carts
Disallow: /orders
Disallow: /9927780/checkouts
Disallow: /9927780/orders
Disallow: /*design_theme_id*
Disallow: /*preview_theme_id*
Disallow: /*preview_script_id*

User-agent: Nutch
Disallow: /

User-agent: AhrefsBot
Crawl-delay: 10
Disallow: /admin
Disallow: /cart
Disallow: /orders
Disallow: /checkout
Disallow: /9927780/checkouts
Disallow: /9927780/orders
Disallow: /carts
Disallow: /account
Disallow: /collections/*+*
Disallow: /collections/*%2B*
Disallow: /collections/*%2b*
Disallow: /blogs/*+*
Disallow: /blogs/*%2B*
Disallow: /blogs/*%2b*
Disallow: /*design_theme_id*
Disallow: /*preview_theme_id*
Disallow: /*preview_script_id*
Disallow: /policies/
Disallow: /search
Disallow: /apple-app-site-association
Sitemap: https://www.fleshlight.com/sitemap.xml

User-agent: AhrefsSiteAudit
Crawl-delay: 10
Disallow: /admin
Disallow: /cart
Disallow: /orders
Disallow: /checkout
Disallow: /9927780/checkouts
Disallow: /9927780/orders
Disallow: /carts
Disallow: /account
Disallow: /collections/*+*
Disallow: /collections/*%2B*
Disallow: /collections/*%2b*
Disallow: /blogs/*+*
Disallow: /blogs/*%2B*
Disallow: /blogs/*%2b*
Disallow: /*design_theme_id*
Disallow: /*preview_theme_id*
Disallow: /*preview_script_id*
Disallow: /policies/
Disallow: /search
Disallow: /apple-app-site-association
Sitemap: https://www.fleshlight.com/sitemap.xml

User-agent: MJ12bot
Crawl-Delay: 10

User-agent: Pinterest
Crawl-delay: 1
