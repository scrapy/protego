#
# robots.txt
#
# This file is to prevent the crawling and indexing of certain parts
# of your site by web crawlers and spiders run by sites like Yahoo!
# and Google. By telling these "robots" where not to go on your site,
# you save bandwidth and server resources.


Sitemap: https://www.cnbc.com/sitemapAll.xml
Sitemap: https://www.cnbc.com/sitemap_news.xml
Sitemap: https://www.cnbc.com/sitemapvideoAll.xml
Sitemap: https://www.cnbc.com/SitemapQuotes.xml

User-agent: googlebot
Disallow: /*native-android-mobile
Disallow: /*native-android-tablet
Disallow: /*mobile-native

User-agent: *
Disallow: /preview/
Disallow: /undefined/
