User-agent: *
Disallow: /GuidedSearch.jsp
Disallow: /support/getPDF.do
Disallow: /b2b/en/search/
Disallow: /b2b/fr/search/
Disallow: /en/search/
Disallow: /fr/search/
Disallow: /*print*.cfm
Disallow: /basket/
Disallow: /english/
Disallow: /extranets/
Disallow: /go/
Disallow: /resource/component/
Disallow: /resource/include/hitbox/
Disallow: /resource/module/
Disallow: /test/
Disallow: /template/
Disallow: /tools/myTools/
Disallow: /jp/ja/download/p=*
Disallow: /solutions/resource/tmpPDFFiles/
Disallow: /products/resource/
Disallow: /documents/premium-documents/
Disallow: /en/product-comparator*
Disallow: /en/product-wishlist*
Disallow: /en/product-range*N=*
Disallow: /en/download/resources/

Disallow: /*/faqs/answers/
Disallow: /*/faqs/index
Disallow: /*/faqs/answeropen/
Disallow: /*/faqs/mailpage/

User-agent: bingbot
Crawl-delay: 10
Disallow: /GuidedSearch.jsp
Disallow: /support/getPDF.do
Disallow: /b2b/en/search/
Disallow: /b2b/fr/search/
Disallow: /en/search/
Disallow: /fr/search/
Disallow: /*print*.cfm
Disallow: /basket/
Disallow: /english/
Disallow: /extranets/
Disallow: /go/
Disallow: /resource/component/
Disallow: /resource/include/hitbox/
Disallow: /resource/module/
Disallow: /test/
Disallow: /template/
Disallow: /tools/myTools/
Disallow: /jp/ja/download/p=*
Disallow: /solutions/resource/tmpPDFFiles/
Disallow: /products/resource/
Disallow: /documents/premium-documents/
Disallow: /en/product-comparator*
Disallow: /en/product-wishlist*
Disallow: /en/product-range*N=*
Disallow: /en/download/resources/



User-Agent: http://www.almaden.ibm.com/cs/crawler
Disallow: /

User-agent: MJ12bot
Disallow: /

#
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# This excludes "Roverbot," an SE made to find email addresses:
#
User-agent: Roverbot
Disallow: /

#Sitemap files
Sitemap: https://www.schneider-electric.com/b2b/en/sitemap_work_b2b.xml
Sitemap: https://www.schneider-electric.com/b2b/fr/sitemap_work_b2b.xml
Sitemap: https://www.schneider-electric.com/google_map_en.xml
Sitemap: https://www.schneider-electric.com/google_map_fr.xml

#Sitemap: https://www.schneider-electric.com/library/sitemaps/WW.en_US.xml
#Sitemap: https://www.schneider-electric.com/library/sitemaps/WW.en_US.xml.gz
Sitemap: https://www.schneider-electric.com/en/faqs/sitemap.xml


Sitemap: https://www.schneider-electric.com/en/product/google-product-sitemapindex-WW-en.xml
Sitemap: https://www.schneider-electric.com/en/product-range/google-range-sitemapindex-WW-en.xml
Sitemap: https://www.schneider-electric.com/en/product-range-presentation/google-range-presentation-sitemapindex-WW-en.xml
Sitemap: https://www.schneider-electric.com/en/product-range-download/google-range-download-sitemapindex-WW-en.xml
Sitemap: https://www.schneider-electric.com/en/product-category/google-category-sitemapindex-WW-en.xml
Sitemap: https://www.schneider-electric.com/en/product-subcategory/google-subcategory-sitemapindex-WW-en.xml
Sitemap: https://www.schneider-electric.com/en/download/sitemapindex