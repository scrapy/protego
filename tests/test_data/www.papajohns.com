###############################
#
#
User-agent: *
#
# list specific files robots are not allowed to index
#
Disallow: /order/
Allow: /order/menu
Allow: /order/papa-rewards
Allow: /order/stores-near-me
#
Disallow: /technical-difficulties
Disallow: /papa-track
Disallow: /locations/store-detail
Disallow: /locations/store-list
Disallow: /404.html
#
Sitemap: https://www.papajohns.com/sitemap-index.xml
#
###############################