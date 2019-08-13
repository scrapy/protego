User-agent: *
Disallow: /artworkbycolor.html
Disallow: /displayartwork.html
Disallow: /ecommerceconfigurator/
Disallow: /images/discussionimages/
Disallow: /images-greeting-cards-real-private/
Disallow: /images-medium-private/
Disallow: /images-square-real-private/
Disallow: /images-small-private/
Disallow: /images-stretched-canvas-real-private/
Disallow: /pdfartworkmenu.php
Disallow: /previewhighresolutionimage.php
Disallow: /queries/*
Disallow: /queries/querysocialapis.php

Disallow: /profiles/*/art/*
Disallow: /profiles/*/art/*?
Allow: /profiles/*/art/digital+art$
Allow: /profiles/*/art/drawings$
Allow: /profiles/*/art/mixed+media$
Allow: /profiles/*/art/paintings$
Allow: /profiles/*/art/photographs$

Disallow: /profiles/*/shop/*/*
Disallow: /profiles/*/shop/*?

Disallow: /profiles/*/collections/*/*
Disallow: /profiles/*/collections/*?

Disallow: /profiles/*?tab=blogs
Disallow: /profiles/*?tab=events
Disallow: /profiles/*?tab=favorites
Disallow: /profiles/*?tab=following

Disallow: /art/*artworkid=
Disallow: /art/*searchtype=
Disallow: /art/*searchType=
Disallow: /art/*sort=
Disallow: /art/*shape=
Disallow: /art/*minimumprintwidth=
Disallow: /art/*r1=
Disallow: /art/*b1=
Disallow: /art/*g1=
Disallow: /art/*r2=
Disallow: /art/*b2=
Disallow: /art/*g2=
Disallow: /art/*similarTo=

Disallow: /artists/*/*/*
Disallow: /artists/*artworkid=
Disallow: /artists/*searchtype=
Disallow: /artists/*searchType=
Disallow: /artists/*sort=
Disallow: /artists/*shape=
Disallow: /artists/*minimumprintwidth=
Disallow: /artists/*r1=
Disallow: /artists/*b1=
Disallow: /artists/*g1=
Disallow: /artists/*r2=
Disallow: /artists/*b2=
Disallow: /artists/*g2=
Disallow: /artists/*similarTo=

Disallow: /collections/*/*
Disallow: /collections/*artworkid=
Disallow: /collections/*searchtype=
Disallow: /collections/*searchType=
Disallow: /collections/*sort=
Disallow: /collections/*shape=
Disallow: /collections/*minimumprintwidth=
Disallow: /collections/*r1=
Disallow: /collections/*b1=
Disallow: /collections/*g1=
Disallow: /collections/*r2=
Disallow: /collections/*b2=
Disallow: /collections/*g2=
Disallow: /collections/*similarTo=

Disallow: /collectiongroups/*
Allow: /collectiongroups/animal+lover
Allow: /collectiongroups/bachelor+pad
Allow: /collectiongroups/babys+room
Allow: /collectiongroups/bar
Allow: /collectiongroups/bathroom
Allow: /collectiongroups/boys+room
Allow: /collectiongroups/cabin
Allow: /collectiongroups/family+room
Allow: /collectiongroups/garage
Allow: /collectiongroups/girls+room
Allow: /collectiongroups/home+theater
Allow: /collectiongroups/living+room
Allow: /collectiongroups/master+bedroom 
Allow: /collectiongroups/music+lover

Disallow: /shop/*artworkid=
Disallow: /shop/*searchtype=
Disallow: /shop/*searchType=
Disallow: /shop/*sort=
Disallow: /shop/*shape=
Disallow: /shop/*minimumprintwidth=
Disallow: /shop/*r1=
Disallow: /shop/*b1=
Disallow: /shop/*g1=
Disallow: /shop/*r2=
Disallow: /shop/*b2=
Disallow: /shop/*g2=
Disallow: /shop/*similarTo=

Noindex: /shop/*/paintings
Noindex: /shop/*/drawings
Noindex: /shop/*/digital+art
Noindex: /shop/*/mixed+media
Noindex: /shop/*/photographs

Noindex: /shop/popular+products*
Noindex: /shop/apparel/*
Noindex: /shop/beach/*
Noindex: /shop/home+decor/*
Noindex: /shop/lifestyle/*
Noindex: /shop/stationery/*

Disallow: /upcomingevents.html?*
Disallow: /upcomingeventdetails.html*

Disallow: /rss/*

Disallow: /controlpanel/*
Disallow: /enterzipcode.php*
Disallow: /faqlinks.html*
Disallow: /joincontest.html*
Disallow: /weeklypromotion.html*
Disallow: /weeklyupdates/*
Disallow: /validatepostcommentreply.php*

Disallow: /*currencyid=
Disallow: /*flagwidget=true
Disallow: /*searchtype=true


Sitemap: https://fineartamerica.com/sitemap.xml

Sitemap: https://fineartamerica.com/sitemap-artists-index.xml

Sitemap: https://fineartamerica.com/sitemap-artwork-index.xml

Sitemap: https://fineartamerica.com/sitemap-products-canvas-print-index.xml
Sitemap: https://fineartamerica.com/sitemap-products-framed-print-index.xml
Sitemap: https://fineartamerica.com/sitemap-products-metal-print-index.xml
Sitemap: https://fineartamerica.com/sitemap-products-acrylic-print-index.xml
Sitemap: https://fineartamerica.com/sitemap-products-wood-print-index.xml
Sitemap: https://fineartamerica.com/sitemap-products-art-print-index.xml
Sitemap: https://fineartamerica.com/sitemap-products-poster-index.xml
Sitemap: https://fineartamerica.com/sitemap-products-greeting-card-index.xml
Sitemap: https://fineartamerica.com/sitemap-products-iphone-case-cover-index.xml
Sitemap: https://fineartamerica.com/sitemap-products-galaxy-case-cover-index.xml
Sitemap: https://fineartamerica.com/sitemap-products-throw-pillow-index.xml
Sitemap: https://fineartamerica.com/sitemap-products-duvet-cover-index.xml
Sitemap: https://fineartamerica.com/sitemap-products-shower-curtain-index.xml
Sitemap: https://fineartamerica.com/sitemap-products-tote-bag-index.xml
Sitemap: https://fineartamerica.com/sitemap-products-weekender-totebag-index.xml
Sitemap: https://fineartamerica.com/sitemap-products-portable-battery-charger-index.xml
Sitemap: https://fineartamerica.com/sitemap-products-pouch-index.xml
Sitemap: https://fineartamerica.com/sitemap-products-beach-towel-index.xml
Sitemap: https://fineartamerica.com/sitemap-products-hand-towel-index.xml
Sitemap: https://fineartamerica.com/sitemap-products-round-beach-towel-index.xml
Sitemap: https://fineartamerica.com/sitemap-products-bath-towel-index.xml
Sitemap: https://fineartamerica.com/sitemap-products-coffee-mug-index.xml
Sitemap: https://fineartamerica.com/sitemap-products-tapestry-index.xml
Sitemap: https://fineartamerica.com/sitemap-products-adult-tshirt-index.xml
Sitemap: https://fineartamerica.com/sitemap-products-pull-over-hoodie-sweatshirt-index.xml
Sitemap: https://fineartamerica.com/sitemap-products-tank-top-tshirt-index.xml
Sitemap: https://fineartamerica.com/sitemap-products-juniors-tshirt-index.xml
Sitemap: https://fineartamerica.com/sitemap-products-kids-tshirt-index.xml
Sitemap: https://fineartamerica.com/sitemap-products-onesie-index.xml
