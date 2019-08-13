User-agent: *

# Directory Excludes: Domestic - Alphabetically order
Disallow: /park-hours/20*
Disallow: /*?date=*
Disallow: */chrome.visitLink.ur
Disallow: /*/error/*
Disallow: /maps/thumbnail/
Disallow: /*/price/*
Disallow: /*?*price*
Disallow: /*/search-results/

# Announce Sitemap Locations
Sitemap: https://www.disneylandparis.com/sitemapindex.xml