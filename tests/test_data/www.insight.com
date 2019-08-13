##################################################
# Robots Exclusion Protocol file for Insight.com #
##################################################
# v6
# Reference (de-facto protocol)
# http://www.robotstxt.org/norobots-rfc.txt

User-agent: *
Disallow: /*?*
Disallow: /en_US/search*.html
Disallow: /insightweb/
Disallow: /us/en/why-insight/sales-engagement.html
Disallow: /flytrap/
Disallow: /content/dam/insight-web/*/solutions/service-provider/microsite/assets/
Disallow: /content/dam/insight-web/*/pdfs/
Allow: /insightweb/*.css$
Allow: /*?qtype=
Allow: /*?pq=

Sitemap: https://www.insight.com/sitemap.xml
