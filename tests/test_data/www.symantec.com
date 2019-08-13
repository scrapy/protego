
# Standard List
User-agent: Twitterbot
Allow: /connect/sites/

User-agent: *
Disallow: /common/
Disallow: /content/
Allow: /content/symantec/
Allow: /content/dam/symantec/docs/partnernet/
Allow: /content/dam/symantec/xml/sitemaps/
Allow: /content/*.js$
Allow: /content/*.css$
Allow: /content/*.pdf$
Allow: /content/*.jpg$
Allow: /content/*.png$
Allow: /content/*.gif$
Disallow: /corp/
Disallow: /css/
Disallow: /ssi/
Disallow: /lib/
Disallow: /errors/
Disallow: /region/
Disallow: /feedback/
Disallow: /media/
Disallow: /script/
Disallow: /netstorage/
Disallow: /threatcon/
Disallow: /partners/tools/compass
Disallow: /zh/sg/
Disallow: /de/dk/
Disallow: /en/us/
Disallow: /es/br/
Disallow: /en/nz/
Disallow: /en/ie/
Disallow: /business/products/endpoint-encryption
Disallow: /business/products/endpoint-protection-14
Disallow: /products/*productcategories.jsp
Disallow: /services/*servicecategories.jsp
Disallow: /xml/navigation/navigation.jsp
Disallow: /about/news/resources/press_kits/bios/bio.jsp?bioid=marian_merritt
Disallow: /flash/
Disallow: /avcenter/venc/data/2008-041720-4651-99
Disallow: /specprog/maintenance/
Disallow: /s/
Disallow: /avcenter/venc/auto/index
Disallow: /community/event/
Disallow: /community/user/
Disallow: /stage-connect/
Disallow: /connect/calendar/ical/
Disallow: /connect/*search/
Disallow: /connect/user/
Disallow: /connect/blog/
Disallow: /connect/zh-hans/
Disallow: /connect/zh-hant/
Disallow: /connect/fr/
Disallow: /connect/de/
Disallow: /connect/ja/
Disallow: /connect/ko/
Disallow: /connect/pt-br/
Disallow: /connect/es/
Disallow: /connect/it/
Disallow: /connect/*language-select
Disallow: /connect/*to-mobile
Disallow: /*device=desktop$
Disallow: /connect/search*
Disallow: /connect/sites/
Allow: /connect/sites/default/files/advagg_css/
Allow: /connect/sites/default/files/advagg_js/
Allow: /connect/sites/default/themes/
Allow: /connect/sites/default/modules/
Disallow: /connect/item-feed
Disallow: /connect/item-feeds/
Disallow: /connect/comments-rss
Disallow: /connect/*/rss-feed
Disallow: /connect/*/feeds/
# Disallow: /connect/*/*/*feed
Disallow: /connect/blog-tags
Disallow: /connect/group/*tracker
Disallow: /connect/tracker*
Disallow: /connect/*connect-items
Disallow: /connect/*oguser
Disallow: /connect/communities/
Disallow: /connect/*/forums/
Disallow: /connect/*/downloads
Disallow: /connect/*/articles
# Disallow: /connect/*/blogs/
Disallow: /connect/*/events
Disallow: /connect/*/videos
Disallow: /connect/*/groups
Disallow: /connect/*/ideas
Disallow: /connect/forward
# Disallow: /*feed
# Disallow: /*feeds
Disallow: /m/
Disallow: /en/*/security_response/
Disallow: /security_response/*print_writeup
Disallow: /resellers/
Disallow: /apps
Disallow: /libs
Disallow: /etc
Disallow: /xml/
Allow: /xml/rss/listings

# robots for Inquira throttling
User-agent: IQ-WWW
Request-rate: 5/1  #maximum rate is 5 pages per second

# robots for Connect engagement
User-agent: R6_FeedFetcher
User-agent: R6_CommentReader
Disallow: /
Allow: /connect/

# Sitemap listing
https://www.symantec.com/content/dam/symantec/xml/sitemaps/site-map-global.xml
https://www.symantec.com/content/dam/symantec/xml/sitemaps/us-products-sitemap.xml
https://www.symantec.com/content/dam/symantec/xml/sitemaps/business-sitemap.xml

# 20190130