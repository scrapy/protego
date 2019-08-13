#Block the following known bots
user-agent: Slurp
disallow: /

user-agent: BLEXBot
disallow: /

user-agent: spbot
disallow: /

user-agent: CCBot
disallow: /

user-agent: rogerbot
disallow: /

user-agent: *
Allow: /

# Block Subfolders
disallow: /netvolution/ 
disallow: /Themes/ 
disallow: /Temp/ 
disallow: /z_ # prevent indexing of the search catalog! 

# Block Cross-Domain Tracking
disallow: *?_ga

# Block Campaign Parameter
disallow: *?utm

# Block Internal Banners
disallow: *?icn

# Block Paid Campaigns
disallow: *?cid
disallow: *?CID
disallow: *gclid
disallow: *?yclid

# Block query strings
disallow: /?*

# Sitemaps
sitemap: http://flights.aegeanair.com/sitemap_index.xml
sitemap: http://www.aegeanair.com/sitemap_aegeanair_en.xml
sitemap: http://www.aegeanair.com/sitemap_aegeanair_el.xml
sitemap: http://www.aegeanair.com/sitemap_aegeanair_de.xml
sitemap: http://www.aegeanair.com/sitemap_aegeanair_it.xml
sitemap: http://www.aegeanair.com/sitemap_aegeanair_fr.xml
sitemap: http://www.aegeanair.com/sitemap_aegeanair_es.xml
sitemap: http://www.aegeanair.com/sitemap_aegeanair_ru.xml
sitemap: http://www.aegeanair.com/sitemap_milesandbonus_en.xml
sitemap: http://www.aegeanair.com/sitemap_milesandbonus_el.xml
sitemap: http://www.aegeanair.com/sitemap_milesandbonus_de.xml
sitemap: http://www.aegeanair.com/sitemap_milesandbonus_it.xml
sitemap: http://www.aegeanair.com/sitemap_milesandbonus_fr.xml
sitemap: http://www.aegeanair.com/sitemap_milesandbonus_es.xml
sitemap: http://www.aegeanair.com/sitemap_milesandbonus_ru.xml
sitemap: http://www.aegeanair.com/sitemap_aboutaegean_en.xml
sitemap: http://www.aegeanair.com/sitemap_aboutaegean_el.xml