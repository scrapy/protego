###############################################
##### robots.txt file for www.agilent.com #####
##  All changes to robots.txt need to be approved by Andrea Berberich ###

User-agent: *

# Keysight
Disallow: /about/newsroom/tmnews/
Disallow: /find/
Disallow: /comms/
Disallow: /litweb/
Disallow: /newsroom/china/newsroom/presrel/

Disallow: /search*
Disallow: /jumpstations/
Disallow: /jumpstations/chem.html
Disallow: /about/newsroom/presrel/2005/
Disallow: /about/newsroom/presrel/2006/
Disallow: /about/newsroom/presrel/2007/
Disallow: /about/newsroom/presrel/2008/
Disallow: /about/newsroom/presrel/2009/
Disallow: /about/newsroom/presrel/2010/
Disallow: /about/newsroom/presrel/2011/
Disallow: /about/newsroom/presrel/2012/
Disallow: /about/newsroom/presrel/2013/
Disallow: /about/newsroom/presrel/2014/
Disallow: /about/newsroom/presrel/2015/
Disallow: /cs/library/slidepresentation/Public/MAPs-Solutions_for_Your_Analytical_Business.pdf
Disallow: /cs/library/downloads
Disallow: /*jsessionid*
Disallow: /promotions/tech-support
Disallow: /cs/Satellite*
Disallow: /*?N
Disallow: /find/
Disallow: /html/mindex.html
Disallow: /cgi-bin*
Disallow: /cs/ContentServer*
Allow: /search/en/support/?N=4294967055
Allow: /search/?N=169&Nrpp=667
Disallow: /search?filter=AND
Disallow: /search/en/support/?N=4294967055+
Disallow: /cell-reference-database/
Disallow: /chem/bridgitte_mingear@agilent.com%7C2009-04-03
Disallow: /formassembly/*
Disallow: /home/more-countries
Disallow: /chem/*
Disallow: /services/crosslab-enterprise-services/asset-management/relocation-services?gclid=*
Disallow: /search/suggest/pages/services/searchdropdowns?format=json
Disallow: /publications-database/
Disallow: /en/products/vacuum-technologies/vacuum-products-catalog

Sitemap: https://www.agilent.com/sitemap.xml
