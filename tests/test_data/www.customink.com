User-agent: *
Disallow: /iotw/photo/rate
Disallow: /font/
Disallow: /clipart/
Disallow: /checkout/
Disallow: /track/
Disallow: /cink/checkout/
Disallow: /catalog/swap_item_styles/
Disallow: /catalog
Disallow: /clipart
Disallow: /clipart_categories
Disallow: /javascripts/lab_base_packaged.js
Disallow: /lab/font/
Disallow: /ab/
Disallow: /ab/t/
Disallow: /ab/completed/
Disallow: /ab/templates/
Disallow: /ab/prototypes/
Disallow: /ab/internal/
Disallow: /example/
Disallow: /signalman
Disallow: /photos/chappell-s-hope
Disallow: /signup/
Disallow: /g2/

# fulcrum specific rules
Disallow: /fundraising/organizer/campaigns/
Disallow: /fundraising/users/
Disallow: /fundraising/ug-14177061162842882/
Disallow: /fundraising/merchandising/*/orders/products$
Disallow: /fundraising/merchandising/campaigns/*/contact_organizer
Disallow: /fundraising/merchandising/wistia_debug/

Sitemap: https://www.customink.com/sitemaps/design_ideas.xml
Sitemap: https://www.customink.com/sitemaps/fundraising.xml
Sitemap: https://www.customink.com/sitemaps/main.xml
Sitemap: https://www.customink.com/sitemaps/products.xml
Sitemap: https://www.customink.com/sitemaps/stores.xml
