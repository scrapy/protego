# For all robots
User-agent: *

# Block access to specific groups of pages
Disallow: /shop/en/cart
Disallow: /shop/en/checkout
Disallow: /shop/en/my-account
Disallow: /shop/en/my-company
Disallow: /*search*
Disallow: /*?sort*
Disallow: /*?q=*
Allow: *.xml*

Request-rate: 1/10              # maximum rate is one page every 10 seconds
Crawl-delay: 10                 # 10 seconds between page requests
Visit-time: 0400-0845           # only visit between 04:00 and 08:45 UTC

# Allow search crawlers to discover the sitemap
Sitemap: https://www.meijer.com/sitemap.xml

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