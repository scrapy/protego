########################################################
#
#  Welcome to Jo-Ann's Robots File
#  Last Updated 10/23/2018
#
########################################################

User-agent: *

Disallow: /shopping/hidden/
Disallow: /*prefn*
Disallow: /*prefv*
Disallow: /*demandware.store*
Disallow: /*Wishlist-Add*
Disallow: /*?q=*
Disallow: /*my-account*
Disallow: /*Cart*


Sitemap: http://www.joann.com/sitemap_index.xml