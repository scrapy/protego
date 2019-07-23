### Start ###

# global rules

User-agent: *
Disallow:v6prod.akbank.com*
Disallow:/modules*
Disallow:/genel/icerik*
Disallow:/en-us/content/context*
Disallow:/tr-tr/genel/icerik*
Disallow:/tr-tr/genel/icerik*
Disallow:/Doc*
Disallow:/Documents*
Disallow:/tr-tr/Landing/*
Disallow: /*.pdf$/ 
Disallow: /*.doc$/ 
Disallow: /*.docx$/ 
Disallow: /*.xls$/ 
Disallow: /*.xlsx$/

User-agent: gsa-crawler
Allow: /

# sitemaps
Sitemap: http://www.akbank.com/siteassets/data/sitemap.xml

### Stop ###
