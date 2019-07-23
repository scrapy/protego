# robots.txt for www.yell.com
# Updated on 08/05/2019

User-agent: *
Disallow: *&printable=true
Disallow: *?cam=
Disallow: *?layout=
Disallow: *?media=
Disallow: *allsubcategories
Disallow: *amp;broaderLocation
Disallow: *bigmap*
Disallow: *blogid
Disallow: *reviews?city=
Disallow: *claim_place=
Disallow: *dialog=
Disallow: *highcost=
Disallow: *layout=classic_printer
Disallow: /*female+escorts
Disallow: /*pic=
Disallow: /*placelogo=
Disallow: /autocomplete/
Disallow: /editbusiness/
Disallow: /js/omniture*
Disallow: /maps/MoveBusinessAction.do
Disallow: /mel/
Disallow: /prices/
Disallow: /qrcoder/
Disallow: /reviews/inbox/write?to=
Disallow: /reviews/member/reportreview/
Disallow: /reviews/places/addreview/id/
Disallow: /reviews/*/*_popup
Disallow: /reviews/places/review?step=*&placeid=
Disallow: /reviews/my
Disallow: /rd/
Disallow: /search/
Disallow: /super/
Disallow: /ucs/HomePageAction.do*
Disallow: /ukmaps/
Disallow: /video/VideoPlayCount
Disallow: /yell/ipblock.php
Disallow: /yellow-pages-uk/
Disallow: /free-listing/thankYou
Disallow: /free-listing/classifications
Disallow: /free-listing/duplicates
Disallow: /customerneeds/
Disallow: /contactus/form
Disallow: /identity
Disallow: /reviewmybusiness/

User-agent: 008
Disallow: /

User-agent: Baiduspider
Disallow: /

Sitemap: https://www.yell.com/sitemap/sitemapidx.xml
Sitemap: https://www.yell.com/sitemaps.xml
Sitemap: https://www.yell.com/topPagesSitemap.xml
