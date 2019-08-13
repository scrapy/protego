

# For all robots

User-agent: *
Allow: /en-uk/*?page=1&pageSize=24
Allow: /en-uk/*?page=2&pageSize=24
Allow: /en-uk/*?page=3&pageSize=24
Allow: /en-uk/*?page=4&pageSize=24
Allow: /en-uk/*?page=5&pageSize=24
Allow: /en-uk/*?page=6&pageSize=24
Disallow: /en-uk/*?page
Disallow: /en-uk/search
Disallow: /en-uk/cart
Disallow: /en-uk/my-account
Disallow: /en-uk/checkout
# Next few disallow filters and facets URLs
Disallow: /en-uk/*q=*brand
Disallow: /en-uk/*q=*type
Disallow: /en-uk/*q=*colour
Disallow: /en-uk/*q=*priceValue
Disallow: /en-uk/*q=*relevance*
# New Facet Rules
Allow: /en-uk/*/c/496?colour*
Disallow: /en-uk/*?brand
Disallow: /en-uk/*?type
Disallow: /en-uk/*?colour
Disallow: /en-uk/*?priceValue
Disallow: /en-uk/*?AbvAvgRating
Disallow: /en-uk/*?size

# Below specifically allows default pagination
Allow: /en-uk/*q=*relevance*pageSize=

# Block CazoodleBot as it does not present correct accept content headers
User-agent: CazoodleBot
Disallow: /

# Block dotbot as it cannot parse base urls properly
User-agent: dotbot/1.0
Disallow: /

# Block Gigabot
User-agent: Gigabot
Disallow: /

Sitemap: https://www.wilko.com/en-uk/sitemap.xml
