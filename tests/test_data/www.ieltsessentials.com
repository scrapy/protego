User-agent: *

# Block access to specific groups of pages
Disallow: /*/cart
Disallow: /*/checkout
Disallow: /*/my-account
Disallow: /*/enquiry-form

# Ignore search query parameters
Disallow: */search/courses/*?*
Disallow: */search*?*q*

# Disallow Category pages
Disallow: /*/Categories

# Disallow directory listing
Disallow: /*/~/

# Disallow campaign pages
Disallow: /*/campaigns

# Disallow individual events pages
Allow: /australia/events/adelaide/$
Disallow: /australia/events/adelaide/*
Allow: /australia/events/brisbane/$
Disallow: /australia/events/brisbane/*
Allow: /australia/events/melbourne/$
Disallow: /australia/events/melbourne/*
Allow: /australia/events/perth/$
Disallow: /australia/events/perth/*
Allow: /australia/events/sydney/$
Disallow: /australia/events/sydney/*
Allow: /australia/events/parramatta/$
Disallow: /australia/events/parramatta/*

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

# Sitemap of Australasia
# Australia
Sitemap: https://www.idp.com/australia/sitemap/universities.xml
Sitemap: https://www.idp.com/australia/sitemap/courses-sitemap.xml
Sitemap: https://www.idp.com/australia/sitemap/content-sitemap.xml

# New Zealand
Sitemap: https://www.idp.com/newzealand/sitemap/universities.xml
Sitemap: https://www.idp.com/newzealand/sitemap/courses-sitemap.xml
Sitemap: https://www.idp.com/newzealand/sitemap/content-sitemap.xml

# List of Sitemaps of SA Region
# Bangladesh
Sitemap: https://www.idp.com/bangladesh/sitemap/universities.xml
Sitemap: https://www.idp.com/bangladesh/sitemap/courses-sitemap.xml
Sitemap: https://www.idp.com/bangladesh/sitemap/content-sitemap.xml

# India
Sitemap: https://www.idp.com/india/sitemap/universities.xml
Sitemap: https://www.idp.com/india/sitemap/courses-sitemap.xml
Sitemap: https://www.idp.com/india/sitemap/content-sitemap.xml

# Mauritius
Sitemap: https://www.idp.com/mauritius/sitemap/universities.xml
Sitemap: https://www.idp.com/mauritius/sitemap/courses-sitemap.xml
Sitemap: https://www.idp.com/mauritius/sitemap/content-sitemap.xml

# Nepal
Sitemap: https://www.idp.com/nepal/sitemap/universities.xml
Sitemap: https://www.idp.com/nepal/sitemap/courses-sitemap.xml
Sitemap: https://www.idp.com/nepal/sitemap/content-sitemap.xml

# South Korea
Sitemap: https://www.idp.com/korea/sitemap/universities.xml
Sitemap: https://www.idp.com/korea/sitemap/courses-sitemap.xml
Sitemap: https://www.idp.com/korea/sitemap/content-sitemap.xml

# Sri Lanka
Sitemap: https://www.idp.com/srilanka/sitemap/universities.xml
Sitemap: https://www.idp.com/srilanka/sitemap/courses-sitemap.xml
Sitemap: https://www.idp.com/srilanka/sitemap/content-sitemap.xml

# List of Sitemaps of SEA Region
# Cambodia
Sitemap: https://www.idp.com/cambodia/sitemap/universities.xml
Sitemap: https://www.idp.com/cambodia/sitemap/courses-sitemap.xml
Sitemap: https://www.idp.com/cambodia/sitemap/content-sitemap.xml

# Indonesia
Sitemap: https://www.idp.com/indonesia/sitemap/universities.xml
Sitemap: https://www.idp.com/indonesia/sitemap/courses-sitemap.xml
Sitemap: https://www.idp.com/indonesia/sitemap/content-sitemap.xml

# Malaysia
Sitemap: https://www.idp.com/malaysia/sitemap/universities.xml
Sitemap: https://www.idp.com/malaysia/sitemap/courses-sitemap.xml
Sitemap: https://www.idp.com/malaysia/sitemap/content-sitemap.xml

# Philippines
Sitemap: https://www.idp.com/philippines/sitemap/universities.xml
Sitemap: https://www.idp.com/philippines/sitemap/courses-sitemap.xml
Sitemap: https://www.idp.com/philippines/sitemap/content-sitemap.xml

# Singapore
Sitemap: https://www.idp.com/singapore/sitemap/universities.xml
Sitemap: https://www.idp.com/singapore/sitemap/courses-sitemap.xml
Sitemap: https://www.idp.com/singapore/sitemap/content-sitemap.xml

# Thailand
Sitemap: https://www.idp.com/thailand/sitemap/universities.xml
Sitemap: https://www.idp.com/thailand/sitemap/courses-sitemap.xml
Sitemap: https://www.idp.com/thailand/sitemap/content-sitemap.xml

# Vietnam
Sitemap: https://www.idp.com/vietnam/sitemap/universities.xml
Sitemap: https://www.idp.com/vietnam/sitemap/courses-sitemap.xml
Sitemap: https://www.idp.com/vietnam/sitemap/content-sitemap.xml

# List of Sitemaps of ME Region
# Egypt
Sitemap: https://www.idp.com/egypt/sitemap/universities.xml
Sitemap: https://www.idp.com/egypt/sitemap/courses-sitemap.xml
Sitemap: https://www.idp.com/egypt/sitemap/content-sitemap.xml

# Iran
Sitemap: https://www.idp.com/iran/sitemap/universities.xml
Sitemap: https://www.idp.com/iran/sitemap/courses-sitemap.xml
Sitemap: https://www.idp.com/iran/sitemap/content-sitemap.xml

# Middle East (idp.com/ME)
Sitemap: https://www.idp.com/middleeast/sitemap/universities.xml
Sitemap: https://www.idp.com/middleeast/sitemap/courses-sitemap.xml
Sitemap: https://www.idp.com/middleeast/sitemap/content-sitemap.xml

# Oman
Sitemap: https://www.idp.com/oman/sitemap/universities.xml
Sitemap: https://www.idp.com/oman/sitemap/courses-sitemap.xml
Sitemap: https://www.idp.com/oman/sitemap/content-sitemap.xml

# Saudi Arabia
Sitemap: https://www.idp.com/saudiarabia/sitemap/universities.xml
Sitemap: https://www.idp.com/saudiarabia/sitemap/courses-sitemap.xml
Sitemap: https://www.idp.com/saudiarabia/sitemap/content-sitemap.xml

# Turkey
Sitemap: https://www.idp.com/turkey/sitemap/universities.xml
Sitemap: https://www.idp.com/turkey/sitemap/courses-sitemap.xml
Sitemap: https://www.idp.com/turkey/sitemap/content-sitemap.xml

# UAE
Sitemap: https://www.idp.com/uae/sitemap/universities.xml
Sitemap: https://www.idp.com/uae/sitemap/courses-sitemap.xml
Sitemap: https://www.idp.com/uae/sitemap/content-sitemap.xml

# List of Sitemaps of GC Region
# Hong Kong
Sitemap: https://www.idp.com/hongkong/sitemap/universities.xml
Sitemap: https://www.idp.com/hongkong/sitemap/courses-sitemap.xml
Sitemap: https://www.idp.com/hongkong/sitemap/content-sitemap.xml

# Taiwan
Sitemap: https://www.idp.com/taiwan/sitemap/universities.xml
Sitemap: https://www.idp.com/taiwan/sitemap/courses-sitemap.xml
Sitemap: https://www.idp.com/taiwan/sitemap/content-sitemap.xml

# List of Sitemaps for onshore countries
# Canada
Sitemap: https://www.idp.com/canada/sitemap/universities.xml
Sitemap: https://www.idp.com/canada/sitemap/courses-sitemap.xml
Sitemap: https://www.idp.com/canada/sitemap/content-sitemap.xml

# The UK
Sitemap: https://www.idp.com/sitemap_uk.xml

#The USA
Sitemap: https://www.idp.com/sitemap_usa.xml
Sitemap: https://www.idp.com/sitemap-index.xml
Sitemap: http://www.english.idp.co.th/sitemap_elt_thailand.xml
Sitemap: https://www.ieltsessentials.com/sitemap_ielts_global.xml
Sitemap: https://coursesearch.idp.com/sitemap_coursesearch.xml
