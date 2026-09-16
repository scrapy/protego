# robots.txt v 9.2026.1
# MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
# MMMMMMMMMMMMMMMMMMWWWMMMWKdooodxkOKNWMMMMMMMMMMMMMMMMMM
# MMMMMMMMMMMMMMWKxl:oXMMMK;        .';lxKWMMMMMMMMMMMMMM
# MMMMMMMMMMMN0o,.  .kWMMNl              .,o0NMMMMMMMMMMM
# MMMMMMMMMXx;.     oNMMWx.                 .;xXMMMMMMMMM
# MMMMMMMNx'       :XMMMO'                     'xNMMMMMMM
# MMMMMWO;        'OMMMX:                        ;0WMMMMM
# MMMMNx.        .xWMMNo                          .xWMMMM
# MMMNd.         lNMMMXxcccc;,.     .:ccccccccc:,. .dWMMM
# MMWx.         ;KMMMWWWWWMMWWK:   .dWMMMWNWWWMMNd. .kWMM
# MM0,         .OMMMXo,':0MMMMNl   lNMMWO;',dNMMMO.  ,KMM
# MWo         .dWMMWd.  cNMMWWk.  ;KMMM0,  .OMMMX:   .dWM
# MX:         cXMMMk.  ,KMMMKd,  .kMMMXc  .dWMMWo.    :XM
# MK,        ,0MMMK;  .kWMMXc.  .dWMMWd.  cXMMWk.     ,KM
# MK,       .kWMMNl  .oNMMWd.   cXMMMO.  ,0MMMK,      ,KM
# MX:       oNMMWx.  :XMMMO'   ,0MMMK;  .kWMMNc       :NM
# MWd.     :XMMMO'  '0MMMK;   .xWMMNl  .oNMMWd.      .dWM
# MMK,    'OMMMX:  .xWMMNl   .oNMMM0c',oXMMMO'       ,KMM
# MMWx.  .xWMMNo   lNMMWx.  ;kXMMMMWWWWWMMWO,       .kWMM
# MMMWd. .:ccc;.   ;ccc:.  'OWMMMXdccccccc;.       .dWMMM
# MMMMWx.                 .xWMMMNo                .xWMMMM
# MMMMMW0;                lNMMMWk.               ;0WMMMMM
# MMMMMMMNx,             ;KMMMM0,              ,xNMMMMMMM
# MMMMMMMMMXx;.         .kMMMMXc            .;xNMMMMMMMMM
# MMMMMMMMMMMN0o,.     .dWMMWNd.         .;o0WMMMMMMMMMMM
# MMMMMMMMMMMMMMWKxl;'.lXMMMkc.     .';lkKWMMMMMMMMMMMMMM
# MMMMMMMMMMMMMMMMMMWNXNMMMW0ddodxk0KNWMMMMMMMMMMMMMMMMMM
# MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
# 
# Keep Reinventing

# ------------------------------------------------------------------------------

# Store "/shop/" Disallow Statements ------------------------------------------- 

User-agent: * 

Disallow: /shop/*ProductConfirmationView 

Disallow: /*epp/ 

Disallow: /*LogonForm 

Disallow: /*api/ 

Disallow: /us-en/shop/*orderstatusfinalresultview*?* 

Disallow: /us-en/shop/SearchDisplay* 

Disallow: /us-en/shop/sitesearch* 

Disallow: /us-en/shop/MyAccountOrderStatusView* 

Disallow: /us-en/shop/PDPStdView* 

Disallow: /us-en/shop/*/OrderShippingBillingView* 

Disallow: /us-en/shop/*rderCalculate* 

Disallow: /us-en/shop/*/private-stores* 

Disallow: /us-en/shop/accessoryattachview/ 

Disallow: /us-en/shop/*jax*rder*tem*isplay*iew* 

Disallow: /us-en/shop/myaccountformview 

Disallow: /us-en/shop/managemydevicesview 

Disallow: /us-en/shop/myordersview 

Disallow: /us-en/shop/ordervalidatecmd 

Disallow: /us-en/shop/paypalgetexpresscheckout 

Disallow: /us-en/shop/privateregister 

Disallow: /us-en/shop/sendemailview 

Disallow: /us-en/shop/topcategoriesdisplay 

Disallow: /us-en/shop/userregistrationform 

Disallow: /us-en/shop/userregistrationadd 

Disallow: /webapp/wcs/stores/servlet/OrderStatusFinalResultView 

Disallow: /us-en/shop/OrderStatusFinalResultView?* 

Disallow: /*-prodlive*/us-en/shop* 

Disallow: /*-prod-drlive*/us-en/shop* 

Disallow: /*?bvstate=* 

Disallow: /*bvroute* 

Disallow: /*tab=vao 

Disallow: /pdp/*Offer_id 

Disallow: /us-en/shop/*matchtype 

Disallow: /*urlRequestType 

Disallow: /us-en/shop/*ups-sku 

Disallow: /*=Other* 

Disallow: /*rating=* 

Disallow: /*availability=Out-of-Stock  

Disallow: /*newprod 

Disallow: /bundles?override 

Disallow: /ProductListingBatteryView? 

Disallow: /*proxydirectory* 

Disallow: /hpols_catalog/ 

# Disallow: /*orderBy 

# Disallow: /*jumpid 

# Disallow: /us-en/shop/*?*p*toreID=* 

# Disallow: /*storeId= 

# Disallow: /*StoreId= 

# Disallow: /*storeID= 

# Disallow: /*StoreID= 

# Disallow: /*STOREID= 

Allow: /*rating=5-9733-9733-9733-9733-9733- 

Allow: /*rating=4-9733-9733-9733-9733-9734-Up,5-9733-9733-9733-9733-9733- 

 

# General Disallow Statements ---------------------------------------------- 

Disallow: /search-results 

Disallow: /find.do 

Disallow: /video-gallery/ 

Disallow: /media/ 

Disallow: /filter.do 

Disallow: /search.do 

Disallow: /index.do 

Disallow: /details.do 

Disallow: /assets/ 

Disallow: /mpc/ 

Disallow: /upp/ 

 

# US Store Facet Controls -------------------------------------------------- 

# Disallow: /us-en/shop/*;*;*;* 

# Disallow: /us-en/shop/*=*,* 

 

# APej & LATAM Store Facet Controls ---------------------------------------- 

Disallow: /hk-en/shop/*?*&*&*&* 

Disallow: /hk-zh/shop/*?*&*&*&* 

Disallow: /au-en/shop/*?*&*&*&* 

Disallow: /my-en/shop/*?*&*&*&* 

Disallow: /in-en/shop/*?*&*&*&* 

Disallow: /id-en/shop/*?*&*&*&* 

Disallow: /id-id/shop/*?*&*&*&* 

Disallow: /th-en/shop/*?*&*&*&* 

Disallow: /th-th/shop/*?*&*&*&* 

Disallow: /kr-ko/shop/*?*&*&*&* 

Disallow: /nz-en/shop/*?*&*&*&* 

Disallow: /sg-en/shop/*?*&*&*&* 

Disallow: /ar-es/shop/*?*&*&*&* 

Disallow: /br-pt/shop/*?*&*&*&* 

Disallow: /cl-es/shop/*?*&*&*&* 

Disallow: /co-es/shop/*?*&*&*&* 

Disallow: /mx-es/shop/*?*&*&*&* 

Disallow: /pe-es/shop/*?*&*&*&* 

Disallow: /sa-ar/shop/*?*&*&*&* 

Disallow: /sa-en/shop/*?*&*&*&* 

Disallow: /cl-es/shop/hpols_catalog/product/upsell/ 

Disallow: /mx-es/shop/hpols_catalog/product/upsell/ 

Disallow: /co-es/shop/hpols_catalog/product/upsell/ 

Disallow: /pe-es/shop/hpols_catalog/product/upsell/ 

Disallow: /ar-es/shop/hpols_catalog/product/upsell/ 

Disallow: /br-pt/shop/hpols_catalog/product/upsell/ 

Disallow: /au-en/shop/hpols_catalog/product/upsell/ 

Disallow: /hk-en/shop/hpols_catalog/product/upsell/ 

Disallow: /kr-ko/shop/hpols_catalog/product/upsell/ 

Disallow: /hk-zh/shop/hpols_catalog/product/upsell/ 

Disallow: /id-en/shop/hpols_catalog/product/upsell/ 

Disallow: /id-id/shop/hpols_catalog/product/upsell/ 

Disallow: /th-en/shop/hpols_catalog/product/upsell/ 

Disallow: /th-th/shop/hpols_catalog/product/upsell/ 

Disallow: /nz-en/shop/hpols_catalog/product/upsell/ 

Disallow: /sg-en/shop/hpols_catalog/product/upsell/ 

Disallow: /in-en/shop/hpols_catalog/product/upsell/ 

Disallow: /my-en/shop/hpols_catalog/product/upsell/ 

Disallow: /sa-en/shop/hpols_catalog/product/upsell/ 

Disallow: /sa-ar/shop/hpols_catalog/product/upsell/ 

Disallow: /kr-ko/shop/banner/ajax/load/ 

Disallow: /kr-ko/shop/hpols_catalog/ 

Disallow: /in-en/shop/banner/ajax/load/ 

Disallow: /in-en/shop/hpols_catalog/ 

Disallow: /id-en/shop/banner/ajax/load/ 

Disallow: /id-en/shop/hpols_catalog/ 

Disallow: /id-id/shop/banner/ajax/load/ 

Disallow: /id-id/shop/hpols_catalog/ 

Disallow: /th-en/shop/banner/ajax/load/ 

Disallow: /th-en/shop/hpols_catalog/ 

Disallow: /th-th/shop/banner/ajax/load/ 

Disallow: /th-th/shop/hpols_catalog/ 

Disallow: /hk-en/shop/banner/ajax/load/ 

Disallow: /hk-en/shop/hpols_catalog/ 

Disallow: /hk-zh/shop/banner/ajax/load/ 

Disallow: /hk-zh/shop/hpols_catalog/ 

Disallow: /my-en/shop/banner/ajax/load/ 

Disallow: /my-en/shop/hpols_catalog/ 

Disallow: /sg-en/shop/banner/ajax/load/ 

Disallow: /sg-en/shop/hpols_catalog/ 

Disallow: /au-en/shop/banner/ajax/load/ 

Disallow: /au-en/shop/hpols_catalog/ 

Disallow: /nz-en/shop/banner/ajax/load/ 

Disallow: /nz-en/shop/hpols_catalog/ 

Disallow: /sa-en/shop/banner/ajax/load/ 

Disallow: /sa-en/shop/hpols_catalog/ 

Disallow: /sa-ar/shop/banner/ajax/load/ 

Disallow: /sa-ar/shop/hpols_catalog/ 

Disallow: /mx-es/shop/banner/ajax/load/ 

Disallow: /mx-es/shop/hpols_catalog/ 

Disallow: /co-es/shop/banner/ajax/load/ 

Disallow: /co-es/shop/hpols_catalog/ 

Disallow: /cl-es/shop/banner/ajax/load/ 

Disallow: /cl-es/shop/hpols_catalog/ 

Disallow: /pe-es/shop/banner/ajax/load/ 

Disallow: /pe-es/shop/hpols_catalog/ 

Disallow: /ar-es/shop/banner/ajax/load/ 

Disallow: /ar-es/shop/hpols_catalog/ 

Disallow: /br-pt/shop/banner/ajax/load/ 

Disallow: /br-pt/shop/hpols_catalog/ 

 

 

 

# Query parameter rules 

 

# Disallow: */shop/? 

Allow: /shop/?page= 

Allow: /shop/?p= 

Allow: /shop/?utm_source= 

Allow: /shop/?utm_medium= 

Allow: /shop/?utm_campaign= 

Allow: /shop/?utm_content= 

Allow: /*/shop/graphql? 

Allow: /*/shop/*?jumpid 

 

# Protected directories and features 

 

Disallow: */shop/catalog/product_compare/ 

Disallow: */shop/catalog/category/view/ 

Disallow: */shop/catalog/product/view/ 

Disallow: */shop/catalog/seo_sitemap/ 

Disallow: */shop/catalogsearch/ 

Disallow: */shop/checkout/ 

Disallow: */shop/control/ 

Disallow: */shop/customer/ 

Disallow: */shop/sendfriend/ 

Disallow: */shop/ajaxcart/ 

Disallow: */shop/ajax/ 

Disallow: */shop/quickview/ 

Disallow: */shop/productalert/ 

Disallow: */shop/review/ 

Disallow: */shop/downloadable/ 

Disallow: */shop/newsletter 

Disallow: */shop/push_notification 

Disallow: */shop/rest/ 

 

# System and configuration files 

 

Disallow: */shop/index.php 

Disallow: */shop/cron.php 

Disallow: */shop/cron.sh 

Disallow: */shop/error_log 

Disallow: */shop/install.php 

Disallow: */shop/LICENSE.html 

Disallow: */shop/LICENSE.txt 

Disallow: */shop/LICENSE_AFL.txt 

Disallow: */shop/STATUS.txt 

Disallow: */shop/get.php 

Disallow: */shop/app/ 

Disallow: */shop/lib/ 

Disallow: */shop/.php$ 

Disallow: */shop/pkginfo/ 

Disallow: */shop/report/ 

Disallow: /*/shop/var/ 

 

# Other pages 

 

Disallow: */shop/no-route 

Disallow: */shop/enable-cookies 

# Disallow: /*/shop/home 

 

# Other Bot Controls ------------------------------------------------------- 

User-agent: AdsBot-Google 

Allow: / 

Disallow: /epp/ 

 

User-Agent: Googlebot-Image 

Disallow: 

 

User-Agent: AdIdxBot 

Allow: / 

 

User-agent: MSNBot-Media 

Crawl-delay: 0 

# -------------------------------------------------------------------------- 

#  AI Search & LLM Crawlers. Explicit allow rules for AI discovery, search retrieval, and model training 

User-agent: GPTBot 

Allow: / 

User-agent: OAI-SearchBot 

Allow: / 

User-agent: ChatGPT-User 

Allow: / 

User-agent: OAI-AdsBot 

Allow: / 

User-agent: ClaudeBot 

Allow: / 

User-agent: Claude-SearchBot 

Allow: / 

User-agent: Claude-User 

Allow: / 

User-agent: Google-Extended 

Allow: / 

User-agent: PerplexityBot 

Allow: / 

User-agent: Perplexity-User 

Allow: / 

 

# ------------------------------------------------------------------------------ 

 

# EMEA Sitemaps 
Sitemap: https://www.hp.com/sitemap-gb-en-mag.xml 

Sitemap: https://www.hp.com/gb-en/shop/media/facets_url/products_url_gb_en.txt 

Sitemap: https://www.hp.com/gb-en/shop/media/facets_url/facets_url_gb_en.txt 

Sitemap: https://www.hp.com/gb-en/shop/media/facets_url/sitemap-gb-en-legacy.txt 

Sitemap:  https://www.hp.com/sitemap-ca-en-mag.xml 

Sitemap:  https://www.hp.com/sitemap-ca-fr-mag.xml 

Sitemap:  https://www.hp.com/sitemap-de-de-isc.xml 

Sitemap:  https://www.hp.com/sitemap-es-es-isc.xml 

Sitemap:  https://www.hp.com/fr-fr/shop/media/facets_url/products_url_fr_fr.txt 

Sitemap:  https://www.hp.com/fr-fr/shop/media/facets_url/facets_url_fr_fr.txt 

Sitemap:  https://www.hp.com/fr-fr/shop/media/facets_url/sitemap-fr-fr-legacy.txt 

Sitemap:  https://www.hp.com/sitemap-fr-fr-mag.xml 

Sitemap:  https://www.hp.com/sitemap-ch-de-mag.xml 

Sitemap:  https://www.hp.com/ch-de/shop/media/facets_url/products_url_ch_fr.txt 

Sitemap:  https://www.hp.com/ch-de/shop/media/facets_url/facets_url_ch_fr.txt 

Sitemap:  https://www.hp.com/ch-de/shop/media/facets_url/sitemap-ch-fr-legacy.txt 

Sitemap:  https://www.hp.com/sitemap-ch-en-mag.xml 

Sitemap:  https://www.hp.com/ch-en/shop/media/facets_url/products_url_ch_fr.txt 

Sitemap:  https://www.hp.com/ch-en/shop/media/facets_url/facets_url_ch_fr.txt 

Sitemap:  https://www.hp.com/ch-en/shop/media/facets_url/sitemap-ch-fr-legacy.txt 

Sitemap:  https://www.hp.com/sitemap-ch-fr-mag.xml 

Sitemap:  https://www.hp.com/ch-fr/shop/media/facets_url/products_url_ch_fr.txt 

Sitemap:  https://www.hp.com/ch-fr/shop/media/facets_url/facets_url_ch_fr.txt 

Sitemap:  https://www.hp.com/ch-fr/shop/media/facets_url/sitemap-ch-fr-legacy.txt 

Sitemap:  https://www.hp.com/sitemap-it-it-mag.xml 

Sitemap:  https://www.hp.com/it-it/shop/media/facets_url/product_url_it_it.txt 

Sitemap:  https://www.hp.com/it-it/shop/media/facets_url/facets_url_it_it.txt 

Sitemap:  https://www.hp.com/it-it/shop/media/facets_url/sitemap-it-it-legacy.txt 

Sitemap:  https://www.hp.com/sitemap-pl-pl-mag.xml  

Sitemap:  https://www.hp.com/sitemap-nl-nl-mag.xml  

Sitemap:  https://www.hp.com/nl-nl/shop/media/sitemap-nl-nl.xml 

Sitemap:  https://www.hp.com/nl-nl/shop/media/sitemap-nl-nl-4-2.xml 

Sitemap:  https://www.hp.com/nl-nl/shop/media/facets_url/facets_url_nl_nl.txt 

Sitemap:  https://www.hp.com/sitemap-be-nl-mag.xml  

Sitemap:  https://www.hp.com/sitemap-be-fr-mag.xml  

Sitemap:  https://www.hp.com/sitemap-se-sv-mag.xml 

Sitemap:  https://www.hp.com/se-sv/shop/media/sitemap-se-sv.xml 

Sitemap:  https://www.hp.com/se-sv/shop/media/facets_url/sitemap-se-sv-legacy.txt 

Sitemap:  https://www.hp.com/se-sv/shop/media/facets_url/facets_url_se_sv.txt 

Sitemap:  https://www.hp.com/es-es/shop/media/facets_url/products_url_es_es.txt 

Sitemap:  https://www.hp.com/es-es/shop/media/facets_url/products_url_es_es.txt 

Sitemap:  https://www.hp.com/es-es/shop/media/facets_url/facets_url_es_es.txt 

Sitemap:  https://www.hp.com/es-es/shop/media/facets_url/sitemap-es-es-legacy.txt 

Sitemap: https://www.hp.com/sitemap-es-es-mag.xml  

 

# EMEA Tech-Takes Sitemaps 

Sitemap:  https://www.hp.com/sitemap-gb-app-tech-takes-article-archives.xml 

Sitemap:  https://www.hp.com/sitemap-gb-app-tech-takes-article-categories.xml 

Sitemap:  https://www.hp.com/sitemap-gb-app-tech-takes-article-months.xml 

Sitemap:  https://www.hp.com/sitemap-gb-app-tech-takes-article-tags.xml 

Sitemap:  https://www.hp.com/sitemap-gb-app-tech-takes-article-years.xml 

Sitemap:  https://www.hp.com/sitemap-gb-app-tech-takes-articles.xml 

Sitemap:  https://www.hp.com/sitemap-gb-app-tech-takes-home.xml 

 

# CA Sitemaps 

Sitemap:  https://www.hp.com/sitemap-ca-en-mag.xml 

Sitemap:  https://www.hp.com/ca-en/shop/media/facets_url/sitemap-ca-en-legacy.txt 

Sitemap:  https://www.hp.com/ca-en/shop/media/facets_url/facets_url_ca_en.txt 

Sitemap:  https://www.hp.com/ca-en/shop/media/facets_url/products_url_ca_en.txt 

Sitemap:  https://www.hp.com/sitemap-ca-fr-mag.xml 
Sitemap:  https://www.hp.com/ca-fr/shop/media/facets_url/sitemap-ca-fr-legacy.txt 

Sitemap:  https://www.hp.com/ca-fr/shop/media/facets_url/facets_url_ca_fr.txt 

Sitemap:  https://www.hp.com/ca-fr/shop/media/facets_url/products_url_ca_fr.txt 

 

# APJ Sitemaps 

Sitemap:  https://www.hp.com/sitemap-sg-en-mag.xml 

Sitemap:  https://www.hp.com/sitemap-my-en-mag.xml 

Sitemap:  https://www.hp.com/sitemap-in-en-mag.xml 

Sitemap:  https://www.hp.com/in-en/shop/media/facets_url/products_url_in_en.txt 

Sitemap:  https://www.hp.com/in-en/shop/media/facets_url/facets_url_in_en.txt 

Sitemap:  https://www.hp.com/in-en/shop/media/facets_url/ink_url_in_en.txt 

Sitemap:  https://www.hp.com/sitemap-th-th-mag.xml 

Sitemap:  https://www.hp.com/sitemap-th-en-mag.xml 

Sitemap:  https://www.hp.com/sitemap-id-en-mag.xml 

Sitemap:  https://www.hp.com/sitemap-id-id-mag.xml 

Sitemap:  https://www.hp.com/sitemap-hk-zh-mag.xml 

Sitemap:  https://www.hp.com/sitemap-hk-en-mag.xml 

Sitemap:  https://www.hp.com/sitemap-kr-ko-mag.xml 

Sitemap:  https://www.hp.com/sitemap-au-en-mag.xml 

Sitemap:  https://www.hp.com/sitemap-nz-en-mag.xml 

Sitemap:  https://www.hp.com/sa-ar/shop/sitemap.xml 

Sitemap:  https://www.hp.com/sa-en/shop/sitemap.xml 

 

# LATAM Sitemaps 

Sitemap:  https://www.hp.com/sitemap-br-pt-mag.xml 

Sitemap:  https://www.hp.com/sitemap-co-es-mag.xml 

Sitemap:  https://www.hp.com/sitemap-cl-es-mag.xml 

Sitemap:  https://www.hp.com/sitemap-mx-es-mag.xml 

Sitemap:  https://www.hp.com/sitemap-pe-es-mag.xml 

Sitemap:  https://www.hp.com/sitemap-ar-es-mag.xml 

 

# ------------------------------------------------------------------------------ 

 

# Marketing Sitemaps 

Sitemap:   https://www.hp.com/sitemap_index.xml 

 

# Parts Store Sitemaps 

Sitemap: https://www.hp.com/us-en/parts-store/media/sitemap/sitemap-us.xml 

 

# US Index Sitemaps 

Sitemap: https://www.hp.com/sitemap 

Sitemap: https://www.hp.com/sitemap-index-store-global-hreflang-non-pdp.xml 

Sitemap: https://www.hp.com/sitemap-index-store-global-hreflang-pdp.xml 

Sitemap: https://www.hp.com/sitemap-index-store-global-hreflang-tech-takes.xml 

Sitemap: https://www.hp.com/sitemap-index-store-us-en.xml 

 