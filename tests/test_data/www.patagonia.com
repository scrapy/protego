#  patagonia.com robots.txt
#  
#  
#  
# 
#   __       _______ .___________.     ______    __    __  .______         .______        ______   .______     ______   .___________.    _______.
#  |  |     |   ____||           |    /  __  \  |  |  |  | |   _  \        |   _  \      /  __  \  |   _  \   /  __  \  |           |   /       |
#  |  |     |  |__   `---|  |----`   |  |  |  | |  |  |  | |  |_)  |       |  |_)  |    |  |  |  | |  |_)  | |  |  |  | `---|  |----`  |   (----`
#  |  |     |   __|      |  |        |  |  |  | |  |  |  | |      /        |      /     |  |  |  | |   _  <  |  |  |  |     |  |        \   \    
#  |  `----.|  |____     |  |        |  `--'  | |  `--'  | |  |\  \----.   |  |\  \----.|  `--'  | |  |_)  | |  `--'  |     |  |    .----)   |   
#  |_______||_______|    |__|         \______/   \______/  | _| `._____|   | _| `._____| \______/  |______/   \______/      |__|    |_______/    
#     _______   ______           _______. __    __  .______       _______  __  .__   __.   _______                                                
#    /  _____| /  __  \         /       ||  |  |  | |   _  \     |   ____||  | |  \ |  |  /  _____|                                               
#   |  |  __  |  |  |  |       |   (----`|  |  |  | |  |_)  |    |  |__   |  | |   \|  | |  |  __                                                 
#   |  | |_ | |  |  |  |        \   \    |  |  |  | |      /     |   __|  |  | |  . `  | |  | |_ |                                                
#   |  |__| | |  `--'  |    .----)   |   |  `--'  | |  |\  \----.|  |     |  | |  |\   | |  |__| |                                                
#    \______|  \______/     |_______/     \______/  | _| `._____||__|     |__| |__| \__|  \______|                                                
# 
# 
# 
# 
# 

User-agent: dotbot
Disallow: /

User-agent: Baiduspider
Disallow: /

User-agent: SpringBot
Disallow: /

User-agent: *
Disallow: /?dwcont=*
Disallow: /?dwvar_*
Disallow: /*?q=*
Disallow: /*pid=*
Disallow: /*prefv1=*
Disallow: /*prefn1=*
Disallow: /*productId=*
Disallow: /*start=*
Disallow: /*sz=*
Disallow: /404/
Disallow: /Page-Show*
Disallow: /bvreviews/
Disallow: /compare/
Disallow: /account/*
Disallow: /cart/
Disallow: /checkout/
Disallow: /chaseaccountcallback/
Disallow: /chasebillingcallback/
Disallow: /contentsearch/
Disallow: /giftregistry/
Disallow: /giftregistrysearch/
Disallow: /giftregistryshow/
Disallow: /error/
Disallow: /help/
Disallow: /international/
Disallow: /offline/
Disallow: /orders/
Disallow: /procallback/
Disallow: /proaccountcallback/
Disallow: /proreferral/
Disallow: /rma/
Disallow: /rma-repair/
Disallow: /rma-return/
Disallow: /search/
Disallow: /searchwishlists/
Disallow: /wallet/
Disallow: /wishlist/
Disallow: /wishlist/add/
Disallow: /es
Disallow: /es/*
Disallow: /es_US
Disallow: /es_US/*
Disallow: /on/demandware.store/Sites-patagonia-us-Site/en_US/*
Disallow: /on/demandware.static/Sites-patagonia-us-Site/-/en_US/*
Disallow: /static/on/demandware.store/Sites-patagonia-us-Site/es_US/*
Disallow: /static/on/demandware.store/Sites-patagonia-us-Site/es/*
Disallow: /default/
Disallow: /blog/wp-admin/
Disallow: /blog/order/
Disallow: /blog/tag/
Disallow: /blog/*/feed/*
Disallow: /blog/*/tag/*
Disallow: /blog/*/tags/*
Disallow: /blog/*/order/*
Disallow: /blog/wp-content/plugins/
Disallow: /blog/readme.html
Disallow: /actionworks/wp/wp-admin/
Disallow: /actionworks/wp-content/plugins/
Allow: /on/demandware.store/Sites-patagonia-us-Site/en_US/WhereToGetIt-GetFactories?*
Allow: /blog/wp-admin/admin-ajax.php
Allow: /actionworks/wp/wp-admin/admin-ajax.php

Sitemap: https://www.patagonia.com/sitemap_0.xml
Sitemap: https://www.patagonia.com/actionworks/sitemap_index.xml
Sitemap: https://www.patagonia.com/blog/sitemap_index.xml