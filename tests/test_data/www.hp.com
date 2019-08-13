# robots.txt v 6.19.1 June 2019
#
# Comments & revision requests should be sent to HP SEO Forum hp-seo-forum [at] hp.com
# robots.txt file for www8.hp.com & www.hp.com
#
# Format is:
#       User-agent: <name of bot>
#       Disallow: <nothing> | <path>
# ------------------------------------------------------------------------------


User-agent:   *
Allow: /


Disallow: */search-results
Disallow: */find.do
Disallow: */video-gallery/
Disallow: /media/
Disallow: */filter.do
Disallow: */search.do
Disallow: */index.do
Disallow: */details.do
Disallow: */assets/*
Disallow: */mpc/*
Disallow: */upp/*


# Sitemaps
Sitemap:   https://www8.hp.com/sitemap.xml
Sitemap:   https://www8.hp.com/sitemap-product-catalog.xml
Sitemap:   https://www8.hp.com/sitemap-hreflang-global-10k-1.xml
Sitemap:   https://www8.hp.com/sitemap-hreflang-global-10k-2.xml
Sitemap:   https://www8.hp.com/sitemap-hreflang-global-10k-3.xml
Sitemap:   https://www8.hp.com/sitemap-hreflang-global-10k-4.xml

