# Robots.txt file for http://www.salesforce.com
# All robots will spider the domain
#
Sitemap: https://www.salesforce.com/sitemap.xml
Sitemap: https://www.salesforce.com/ap/sitemap.xml
Sitemap: https://www.salesforce.com/au/sitemap.xml
Sitemap: https://www.salesforce.com/br/sitemap.xml
Sitemap: https://www.salesforce.com/ca/sitemap.xml
Sitemap: https://www.salesforce.com/cn/sitemap.xml
Sitemap: https://www.salesforce.com/de/sitemap.xml
Sitemap: https://www.salesforce.com/dk/sitemap.xml
Sitemap: https://www.salesforce.com/es/sitemap.xml
Sitemap: https://www.salesforce.com/fi/sitemap.xml
Sitemap: https://www.salesforce.com/fr/sitemap.xml
Sitemap: https://www.salesforce.com/fr-ca/sitemap.xml
Sitemap: https://www.salesforce.com/in/sitemap.xml
Sitemap: https://www.salesforce.com/it/sitemap.xml
Sitemap: https://www.salesforce.com/jp/sitemap.xml
Sitemap: https://www.salesforce.com/kr/sitemap.xml
Sitemap: https://www.salesforce.com/mx/sitemap.xml
Sitemap: https://www.salesforce.com/nl/sitemap.xml
Sitemap: https://www.salesforce.com/no/sitemap.xml
Sitemap: https://www.salesforce.com/se/sitemap.xml
Sitemap: https://www.salesforce.com/th/sitemap.xml
Sitemap: https://www.salesforce.com/tw/sitemap.xml
Sitemap: https://www.salesforce.com/uk/sitemap.xml
Sitemap: https://www.salesforce.com/eu/sitemap.xml
Sitemap: https://www.salesforce.com/sa/sitemap.xml
Sitemap: https://www.salesforce.com/blog/sitemap_index.xml
Sitemap: https://www.salesforce.com/au/blog/sitemap_index.xml
Sitemap: https://www.salesforce.com/br/blog/post-sitemap.xml
Sitemap: https://www.salesforce.com/ca/blog/post-sitemap.xml
Sitemap: https://www.salesforce.com/de/blog/post-sitemap.xml
Sitemap: https://www.salesforce.com/es/blog/post-sitemap.xml
Sitemap: https://www.salesforce.com/fi/blog/sitemap.xml
Sitemap: https://www.salesforce.com/fr/blog/post-sitemap.xml
Sitemap: https://www.salesforce.com/it/blog/post-sitemap.xml
Sitemap: https://www.salesforce.com/jp/blog/post-sitemap.xml
Sitemap: https://www.salesforce.com/mx/blog/post-sitemap.xml
Sitemap: https://www.salesforce.com/nl/blog/post-sitemap.xml
Sitemap: https://www.salesforce.com/eu/blog/post-sitemap.xml
Sitemap: https://www.salesforce.com/sitemap-forms.xml
Sitemap: https://www.salesforce.com/plus-sitemap.xml
Sitemap: https://www.salesforce.com/plus/api/sitemap.xml
Sitemap: https://www.salesforce.com/nl/blog/sitemap_index.xml
Sitemap: https://www.salesforce.com/sitemap-events.xml
Sitemap: https://www.salesforce.com/au/blog/sf_topic-sitemap.xml
Sitemap: https://www.salesforce.com/au/blog/page-sitemap.xml
Sitemap: https://www.salesforce.com/au/blog/post-sitemap.xml
Sitemap: https://www.salesforce.com/uk/news/sitemap_index.xml
Sitemap: https://www.salesforce.com/news/page-sitemap.xml
Sitemap: https://www.salesforce.com/news/post-sitemap.xml
Sitemap: https://www.salesforce.com/news/sitemap_index.xml
Sitemap: https://www.salesforce.com/in/blog/post-sitemap.xml
Sitemap: https://www.salesforce.com/ap/blog/post-sitemap.xml

# Keep mis-configured Microsoft SharePoint servers from hammering us
# This is not MSN Search (msnbot), but privately owned SharePoint installations
User-agent: MS Search 4.0 Robot
Disallow: /

User-agent: Mozilla/4.0 (compatible; MSIE 4.01; Windows NT; MS Search 4.0 Robot)
Disallow: /

User-agent: Mozilla/4.0 (compatible; MSIE 6.0; Windows NT; MS Search 4.0 Robot)
Disallow: /

User-agent: Mozilla/4.0 (compatible; MSIE 4.01; Windows NT; MS Search 5.0 Robot)
Disallow: /

User-agent: Mozilla/4.0 (compatible; MSIE 6.0; Windows NT; MS Search 5.0 Robot)
Disallow: /

User-agent: *
Disallow: /products/home-perf/
Disallow: /form/conf/
Disallow: */conf/
Disallow: /content/dam/web/en_us/www/documents/
Disallow: /content/dam/web/en_us/www/assets/pdf/
Disallow: /login-messages/
Disallow: /au/login-messages/
Disallow: /ap/login-messages/
Disallow: /in/login-messages/
Disallow: /cn/login-messages/
Disallow: /tw/login-messages/
Disallow: /th/login-messages/
Disallow: /uk/login-messages/
Disallow: /de/login-messages/
Disallow: /ca/login-messages/
Disallow: /eu/login-messages/
Disallow: /fr/login-messages/
Disallow: /es/login-messages/
Disallow: /it/login-messages/
Disallow: /nl/login-messages/
Disallow: /fi/login-messages/
Disallow: /dk/login-messages/
Disallow: /se/login-messages/
Disallow: /fr-ca/login-messages/
Disallow: /competitive/gated-content-for-agents/
Allow: /plus/experience/*/series/
Disallow: /plus/experience/*/
Disallow: /plus/experience/dreamforce_2025_x_test
# DPAUT-166: keep gated PDFs under /documents out of search crawlers (all locales/sites)
Disallow: */wp-content/uploads/sites/*/documents/

#Disallow DAMs
Disallow: /content/dam/web/pt_br/www/
Disallow: /content/dam/web/es_mx/www/
Disallow: /content/dam/web/de_de/www/
Disallow: /content/dam/web/fr_fr/www/
Disallow: /content/dam/web/nl_nl/www/
Disallow: /content/dam/web/es_es/www/
Disallow: /content/dam/web/it_it/www/
Disallow: /content/dam/web/sv_se/www/
Disallow: /content/dam/web/fr_ca/www/
Disallow: /content/dam/web/fi_fi/www/
Disallow: /content/dam/web/da_dk/www/
Disallow: /content/dam/web/en_is/www/
Disallow: /content/dam/web/en_gb/www/
Disallow: /content/dam/web/en_ie/www/
Disallow: /content/dam/web/en_ca/www/
Disallow: /content/dam/web/en_dk/www/
Disallow: /content/dam/web/no_no/www/
Disallow: /content/dam/web/de_ch/www/
Disallow: /content/dam/web/fr_ch/www/
Disallow: /content/dam/web/it_ch/www/
Disallow: /content/dam/web/en_au/www/
Disallow: /content/dam/web/en_sg/www/
Disallow: /opencms/
Disallow: /promos/
Disallow: /styleguide/
Disallow: /landing/
Disallow: /modules/
Disallow: /uk/promos/
Disallow: /eu/promos/
Disallow: /de/promos/
Disallow: /es/promos/
Disallow: /fr/promos/
Disallow: /it/promos/
Disallow: /jp/promos/

# Company pages duped across locales
Disallow: /us/developer/docs/ajaxpre
Disallow: /us/developer/docs/ajax80
Disallow: /us/developer/docs/ajax90
Disallow: /us/developer/docs/ajax1*
Disallow: /us/developer/docs/ajax2*
Disallow: /us/developer/docs/ajax3*
Disallow: /us/developer/docs/ajax4*
Disallow: /us/developer/docs/apexcodepre
Disallow: /us/developer/docs/apexcode1*
Disallow: /us/developer/docs/apexcode2*
Disallow: /us/developer/docs/apexcode3*
Disallow: /us/developer/docs/apexcode4*
Disallow: /us/developer/docs/api_asynchpre
Disallow: /us/developer/docs/api_asynch1*
Disallow: /us/developer/docs/api_asynch2*
Disallow: /us/developer/docs/api_asynch3*
Disallow: /us/developer/docs/api_asynch4*
Disallow: /us/developer/docs/api_consolepre
Disallow: /us/developer/docs/api_console2*
Disallow: /us/developer/docs/api_console3*
Disallow: /us/developer/docs/api_console4*
Disallow: /us/developer/docs/api_metapre
Disallow: /us/developer/docs/api_meta1*
Disallow: /us/developer/docs/api_meta2*
Disallow: /us/developer/docs/api_meta3*
Disallow: /us/developer/docs/api_meta4*
Disallow: /us/developer/docs/api_restpre
Disallow: /us/developer/docs/api_rest2*
Disallow: /us/developer/docs/api_rest3*
Disallow: /us/developer/docs/api_rest4*
Disallow: /us/developer/docs/api_streamingpre
Disallow: /us/developer/docs/api_streaming2*
Disallow: /us/developer/docs/api_streaming3*
Disallow: /us/developer/docs/api_streaming4*
Disallow: /us/developer/docs/apipre
Disallow: /us/developer/docs/api80
Disallow: /us/developer/docs/api90
Disallow: /us/developer/docs/api1*
Disallow: /us/developer/docs/api2*
Disallow: /us/developer/docs/api3*
Disallow: /us/developer/docs/api4*
Disallow: /us/developer/docs/chatterapipre
Disallow: /us/developer/docs/chatterapi2*
Disallow: /us/developer/docs/chatterapi3*
Disallow: /us/developer/docs/chatterapi4*
Disallow: /us/developer/docs/dbcom_apipre
Disallow: /us/developer/docs/dbcom_api2*
Disallow: /us/developer/docs/dbcom_api3*
Disallow: /us/developer/docs/dbcom_api4*
Disallow: /us/developer/docs/dbcom_objectspre
Disallow: /us/developer/docs/dbcom_objects2*
Disallow: /us/developer/docs/dbcom_objects3*
Disallow: /us/developer/docs/dbcom_objects4*
Disallow: /us/developer/docs/dbcom_soql_soslpre
Disallow: /us/developer/docs/dbcom_soql_sosl2*
Disallow: /us/developer/docs/dbcom_soql_sosl3*
Disallow: /us/developer/docs/dbcom_soql_sosl4*
Disallow: /us/developer/docs/daaspre
Disallow: /us/developer/docs/daas140
Disallow: /us/developer/docs/fundamentalspre
Disallow: /us/developer/docs/knowledge_devpre
Disallow: /us/developer/docs/object_referencepre
Disallow: /us/developer/docs/object_reference2*
Disallow: /us/developer/docs/object_reference3*
Disallow: /us/developer/docs/object_reference4*
Disallow: /us/developer/docs/officetoolkit30
Disallow: /us/developer/docs/pagespre
Disallow: /us/developer/docs/pages1*
Disallow: /us/developer/docs/pages2*
Disallow: /us/developer/docs/pages3*
Disallow: /us/developer/docs/pages4*
Disallow: /us/developer/docs/sforce20
Disallow: /us/developer/docs/sforce30
Disallow: /us/developer/docs/sforce40
Disallow: /us/developer/docs/sforce50
Disallow: /us/developer/docs/sforce60
Disallow: /us/developer/docs/sforce70


Disallow: /search.jsp
Disallow: /assets/pdf/company/private/
Disallow: /jp/assets/pdf/
Disallow: /content/dam/web/ja_jp/www/documents/ 
Disallow: /content/dam/web/ja_jp/www/assets/pdf/
Disallow: /content/blogs/au/en/*
Disallow: /content/blogs/us/en/*
Disallow: /content/blogs/nl/nl/*
Disallow: /content/blogs/eu/en/*
Disallow: /content/blogs/in/en/*
Disallow: /content/blogs/fi/fi/*
Disallow: /content/blogs/sg/en/*
Disallow: /content/blogs/jp/ja/*
Disallow: /content/blogs/mx/es/*
Disallow: /content/blogs/es/es/*
Disallow: /content/blogs/br/pt/*
Disallow: /content/blogs/il/he/*
Disallow: /content/blogs/it/it/*

User-agent: AdsBot-Google
Allow: /
Disallow: /de/assets/
Disallow: /fr/assets/
Disallow: /se/assets/
Disallow: /es/assets/
Disallow: /it/assets/
Disallow: /nl/assets/
Disallow: /uk/assets/
Disallow: /eu/assets/
Disallow: /content/dam/web/en_us/www/documents/legal/misc/456456.pdf
Disallow: /content/dam/web/en_us/www/documents/legal/misc/usla-excluded-services.pdf
Disallow: /content/dam/web/en_us/www/documents/legal/supplier/salesforce-vendor-privacy-exhibit-emea_psa_subcontractors-archived-121118.pdf
Disallow: /content/dam/web/en_us/www/documents/legal/Agreements/product-specific-terms/premier-priority-terms.pdf
Disallow: /dig-perf-test/
Disallow: /content/dam/web/en_us/www/documents/legal/no-index/
Disallow: /content/dam/web/en_us/www/documents/legal/work-unit-catalog/
Disallow: /*/wp-content/uploads/sites/*/documents/legal/no-index/*.pdf$
Disallow: /*/wp-content/uploads/sites/*/partners/*.pdf$

# STARTS
# Block crawl of ._filter.alphaSort which is duplicate of /customer-success-stories/
# Note the $ delimiter so that this doesnt impact other URLs based on this stem:
Disallow: */customer-success-stories._filter.alphaSort$
Disallow: */customer-success-stories/._filter.alphaSort$

# Block all access to URLs using popularSort:
Disallow: */customer-success-stories._filter.popularSort
Disallow: */customer-success-stories/._filter.popularSort

# Block all access to URLs using newestSort:
Disallow: */customer-success-stories._filter.newestSort
Disallow: */customer-success-stories/._filter.newestSort

# Block crawl where 2 or more categories are used with services filter. The final . surrounded by * should match any multi-category filter URL:
# Uncomment next line to apply to all locales
Disallow: */customer-success-stories._filter.alphaSort.S*.*
Disallow: */customer-success-stories/._filter.alphaSort.S*.*
#added new Deny rules to block bots to crawl missed filter URLs.
user-agent: *
Disallow: */customer-success-stories/*.*._filter
Disallow: */customer-success-stories.*._filter
Disallow: */customer-success-stories.[a-z]*Sort.*
Disallow: */customer-success-stories._filter.[a-z]*Sort.*

# Block crawl where 2 or more categories are used with products filter. The final . surrounded by * should match any multi-category filter URL:
Disallow: */customer-success-stories._filter.alphaSort.P*.*
Disallow: */customer-success-stories/._filter.alphaSort.P*.*

# Block crawl where 2 or more categories are used with industries filter. The final . surrounded by * should match any multi-category filter URL:
Disallow: */customer-success-stories._filter.alphaSort.I*.*
Disallow: */customer-success-stories/._filter.alphaSort.I*.*

# Block crawl where 2 or more categories are used with business size filter. The final . surrounded by * should match any multi-category filter URL:
Disallow: */customer-success-stories._filter.alphaSort.BS*.*
Disallow: */customer-success-stories/._filter.alphaSort.BS*.*

# Block crawl where 2 or more categories are used with business type filter. The final . surrounded by * should match any multi-category filter URL:
Disallow: */customer-success-stories._filter.alphaSort.BT*.*
Disallow: */customer-success-stories/._filter.alphaSort.BT*.*
# ENDS

# Rules will block when 2 or more facets are activated, but allow single facets to be crawled:
Disallow: *services/success-plans/accelerators._filter.S*.*
Disallow: */services/success-plans/accelerators._filter.RG*.*
Disallow: */services/success-plans/accelerators._filter.P*.*
Disallow: *services/success-plans/accelerators/._filter.S*.*
Disallow: */services/success-plans/accelerators/._filter.RG*.*
Disallow: */services/success-plans/accelerators/._filter.P*.*

# First 2 rules blocks the duplicate index, $ delimiter avoids picking up valid pagination URLs:
Disallow: */services/learn/classes/._filter.alphaSort/$
Disallow: */services/learn/classes._filter.alphaSort/$

# Next rules will fire when more than one facet is activated, or when a subpage of facet is requested, but allow individual facets to be crawled:
Disallow: */services/learn/classes._filter.alphaSort.re*.*
Disallow: */services/learn/classes._filter.alphaSort.P*.*/
Disallow: */services/learn/classes/._filter.alphaSort.re*.*
Disallow: */services/learn/classes/._filter.alphaSort.P*.*/

# Blocking Acunetix
User-agent: Acunetix Web Vulnerability Scanner
User-agent: Acunetix Security Scanner
Disallow: /products/commerce-cloud/partner-marketplace/.*
Disallow: /products/einstein/ai-research.*
Disallow: /blog/.*
Disallow: /search/.*
Disallow: /*.pdf$
# Block crawl of .shtml pages
Disallow: /*.shtml$
Disallow: /conf/
Disallow: /search/
Disallow: /content/dam/
Disallow: /*._filter.*
Disallow: /is/
Disallow: /form/pdf/*
Disallow: /speed-test-parent/
Disallow: /blog/.html.*