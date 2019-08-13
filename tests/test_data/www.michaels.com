##############################
# Welcome to Michaels Robots.txt File #
# Last Updated 11/08/2018 #
##############################

User-agent: *
Disallow: /*crefv1=*
Disallow: /*crefn1=*
Disallow: /*csortd1=*
Disallow: /*csortb1=*
Disallow: /*prefv2=*
Disallow: /*prefn3=*
Disallow: /*prefv3=*
Disallow: /*prefn4=*
Disallow: /*prefv4=*
Disallow: /*sz=*

Sitemap: https://www.michaels.com/sitemap_index.xml