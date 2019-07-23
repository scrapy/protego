# Robot Exclusion Document for https://www.apcc.com and https://www.apc.com
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
#
#
#     (c) 2019 American Power Conversion Corporation
#
#                                                     160
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# This excludes all search engines that respect the standard:
#

User-agent: *
Disallow: /*print*.cfm
Disallow: /basket/
Disallow: /english/
Disallow: /extranets/
Disallow: /go/
Disallow: /resource/component/
Disallow: /resource/include/hitbox/
Disallow: /resource/module/
#Disallow: /resource/scripts/
#Disallow: /resource/styles/
Disallow: /test/
#Disallow: /template/
Disallow: /tools/myTools/
Disallow: /support/getPDF.do
#Disallow: /tools/ups_selector/pso
Disallow: /site/
Disallow: /products/family/
Disallow: /products/configure/
Disallow: /products/resource/

User-Agent: https://www.almaden.ibm.com/cs/crawler
Disallow: /

User-agent: Yandex
Crawl-delay: 10 # specifies a 10 second timeout

#
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# This excludes "Roverbot," an SE made to find email addresses:
#
#
User-agent: Roverbot
Disallow: /

#----- SITEMAP SECTION ---------
#
Sitemap: https://www.apc.com/sitemaps/sitemap_store/shop_sitemap.xml
Sitemap: https://www.apc.com/sitemaps/sitemap_store/sdl_sitemap.xml
Sitemap: https://www.apc.com/sitemaps/sitemap_store/faq_sitemap.xml

#
#---- This is a Table of Contents of our Sitemaps - Not for crawl ----
#Sitemap: https://www.apc.com/sitemap.xml