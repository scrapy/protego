# robots.txt for http://www.mapsofworld.com/
User-agent: Mediapartners-Google
User-agent: *
Disallow: /cgi-bin/ # This is an infinite virtual URL space
Disallow: /stats/ # these will soon disappear
Disallow: /search_admin/
Disallow: /stats_report/
Disallow: /olympics/updates/getdate/
Disallow: /test.html
Disallow: /banners/
Disallow: /kamal-data/
Disallow: /cart/
Disallow: /cart1/
Disallow: /test/
Disallow: /whitepages/
Disallow: /index1.html
Disallow: /index2.html
Disallow: /index-test.html
Disallow: /test-page.htm
Disallow: /index-res.html
Disallow: /navigation-for-the-visually-impaired.html
Disallow: /~mapsofwo/
Disallow: /infographics/info.html
Disallow: /temporary/
Disallow: /eyeblaster/addineyev2.html 
Disallow: /banners/link-default.html
Disallow: /banners/obama-vs-romney.html
Disallow: /my-world/
Disallow: /country-profile/cuba-test.html
Disallow: /usa/test.html
Disallow: /usa/test1.html
Disallow: /world-political-map-test.htm
Disallow: /world-news/wp-admin/
Disallow: /live-blog/
Disallow: /travel-admin/
Disallow: /admin/
Disallow: /160-600.html
Disallow: /728-90.html
Disallow: /300-250.html
Disallow: /international-airports/test.html
Disallow: /test-url.html
Disallow: /widgets/
Disallow: /2012-newsmakers/index1.php
Disallow: /2014-newsmakers/addnominations.php
Disallow: /2014-newsmakers/addfbnominations.php
Disallow: /travel/uncategorized/test
Disallow: /archive/
Disallow: /around-the-world-web/
Disallow: /around-the-world-new/
Disallow: /around-the-world/backup/
Disallow: /newsurl-test/
Disallow: /search-engine/
Disallow: /list-of/category/list/page/
Disallow: /index-old.html
Disallow: /answers/author/
Disallow: /index_2019.html



# For MOW List 
Disallow: /list/admin/
Disallow: /list/node/
Disallow: /list/user/
Disallow: /list/users/admin/

# For MOW Travel
Disallow: /travel/wp-admin/
Disallow: /travel/blog/wp-admin/

#for atw test
Disallow: /atw_test/

#for feedvback form
Disallow: /form/
Disallow: /index3_new.html
Disallow: /index2.html

#for usa separate pages
Disallow: /usa/index2.html
Disallow: /usa/index3.html
Disallow: /usa/index4.html
Disallow: /usa/index5.html
Disallow: /usa/index6.html
Disallow: /usa/index7.html
Disallow: /usa/test/
Disallow: /custom-maps/index_new_one.html
Disallow: /elections/canada/candidates.html
Disallow: /united-kingdom/new.html
Disallow: /sports/olympics/index2.html
Disallow: /pagespeed/
Disallow: /elections/usa/elections-test.html
Disallow: /australia/index-test.html
Disallow: /sudan/maps/sudan-map-thumb-420px.jpg
Disallow: /europe/test.html
Disallow: /europe/test2.html
Disallow: /amp-f.html
Disallow: /amp-code.htm
Disallow: /amp-code1.html
Disallow: /amp-new.html
Disallow: /amp.html
Disallow: /newzealand1/
Disallow: /south-sudan1/
Disallow: /europe1/
Disallow: /index_new.html
Disallow: /index_24_10_2016.html
Disallow: /usa/zipcodes/california/index2.html
Disallow: /canada/index2.html
Disallow: /united-kingdom/index2.html
Disallow: /florida/florida-map2.html
Disallow: /index-ads.html
Disallow: /germany/index-sekindo.html
Disallow: /germany/index-dfp.html
Disallow: /usa/states/washington/test.html
Disallow: /posters/new-layout
Disallow: /index01.html
Disallow: /index-update.html
Disallow: /print_image.php
Disallow: /index-1-3-17.html
Disallow: /usa/florida/inner-test.html
Disallow: /headlinesworld/author
Disallow: /headlinesworld/author/
Disallow: /headlinesworld/author/adminheadlinesworld/
Disallow: /education/
Disallow: /store/store1.html
Disallow: /world-map-image-test.html
Disallow: /index01-test.html
Disallow: /index_test.html
Disallow: /index_test2.html
Disallow: /world-information-test.html
Disallow: /mapmyworld-test/
Disallow: /amp/test.html
Disallow: /amp/mowcms/
Disallow: /amp/admin/
Disallow: /kapil/mapsworld/amp/
Disallow: /mowwordpress/
Disallow: /brazil/cities/salvador-map-test.html
Disallow: /messages/
Disallow: /worldmapped/

Sitemap: https://www.mapsofworld.com/sitemap.xml
