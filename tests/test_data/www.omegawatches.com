# Crawling directives for Deepcrawl
User-agent: deepcrawl
Disallow: /

# Crawling directives for GoogleBot
User-agent: *

# Paths and folders
Disallow: /*wishlist/ 
Disallow: /*catalog/product_compare/
Disallow: /*checkout/cart
Disallow: /*customer/account
Disallow: /*contactstore/
Disallow: /22258000

# Store specifications en-us
Allow: /*en-us/store/country/united-states
Disallow: /*en-us/store/country/

# Store specifications en-gb
Allow: /*en-gb/store/country/united-kingdom
Disallow: /*en-gb/store/country/

# Filters
Disallow: /*?search=*
Disallow: /*?price=*
Disallow: /*?v_*
Disallow: /*?amp*
Disallow: /*?watch_*
Disallow: /*?watchHubRef*
Disallow: /*watchHubRef*
Disallow: /*watchfinder?*
Disallow: /*?jewellery_*
Disallow: /*jewellery_*
Disallow: /*?accessory_*
Disallow: /*accessory_*
Disallow: /*?leather_*
Disallow: /*leather_*
Disallow: /*?product_*
Disallow: /*product_*
Disallow: /*?parent_*
Disallow: /*parent_*
Disallow: /*?strap_*
Disallow: /*strap_*

# Files
Disallow: /*.pdf$
Disallow: /*cron.php
Disallow: /*localization/ajax/country*
Disallow: /*messageall*
Disallow: /*?%7b%7d*
Disallow: /*load/?_*

# Crawling directives for BaiduBot

User-agent: Baiduspider
Crawl-delay: 2

# Other Languages
Disallow: /de*
Disallow: /en-us*
Disallow: /en-gb*
Disallow: /es*
Disallow: /fr*
Disallow: /it*
Disallow: /ru*
Disallow: /it*
Disallow: /pt*
Disallow: /ja*
Disallow: /ko*

# Filters
Disallow: /*?search=*
Disallow: /*?price=*
Disallow: /*?v_*
Disallow: /*?amp*
Disallow: /*?watch_*
Disallow: /*?watchHubRef*
Disallow: /*watchHubRef*
Disallow: /*watchfinder?*
Disallow: /*?jewellery_*
Disallow: /*jewellery_*
Disallow: /*?accessory_*
Disallow: /*accessory_*
Disallow: /*?leather_*
Disallow: /*leather_*
Disallow: /*?product_*
Disallow: /*product_*
Disallow: /*?parent_*
Disallow: /*parent_*
Disallow: /*?strap_*
Disallow: /*strap_*

# Files
Disallow: /*.pdf$
Disallow: /*cron.php
Disallow: /*localization/ajax/country*
Disallow: /*messageall*
Disallow: /*?%7b%7d*
Disallow: /*load/?_*