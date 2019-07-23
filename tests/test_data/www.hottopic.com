User-agent: *

Disallow: /OOBO/
Disallow: /mkt/

#Disallow Nodes with price ranges or multiple refinement values
Disallow: /*prefv*|*
Disallow: /*pmax=*
Disallow: /*pmin=*

#Prevent indexing of common SFCC variables
Disallow: /*dwcont=*
Disallow: /*pid=*

#Prevent indexing of multiple pages of Bazaarvoice reviews
Disallow: /*bvstate*

Disallow: /*MobileOptOut=*
Disallow: /*bmUID=*

#Disallow access to cart/checkout
Disallow: /cart*

Sitemap: https://www.hottopic.com/sitemap_index.xml