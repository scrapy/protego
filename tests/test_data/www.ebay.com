### BEGIN FILE ###
#
# allow-all
# DR 2.0
#
# The use of robots or other automated means to access the eBay site
# without the express permission of eBay is strictly prohibited.
# Notwithstanding the foregoing, eBay may permit automated access to
# access certain eBay pages but soley for the limited purpose of
# including content in publicly available search engines. Any other
# use of robots or failure to obey the robots exclusion standards set
# forth at <http://www.robotstxt.org/ wc/ exclusion.html> is strictly
# prohibited.
# v3
#

User-agent: *
Disallow: /*rt=nc
Disallow: /b/*LH_
Disallow: /brw/
Disallow: /clp/
Disallow: /clt/store/
Disallow: /csc/
Disallow: /ctg/
Disallow: /ctm/
Disallow: /dsc/
Disallow: /edc/
Disallow: /feed/
Disallow: /gsr/
Disallow: /gwc/
Disallow: /hcp/
Disallow: /itc/
Disallow: /lit/
Disallow: /lst/ng/
Disallow: /lvx/
Disallow: /mbf/
Disallow: /mla/
Disallow: /mlt/
Disallow: /myb/
Disallow: /mys/
Disallow: /prp/
Disallow: /rcm/
Disallow: /sch/*%7C
Disallow: /sch/*LH_
Disallow: /sch/aop/
Disallow: /sch/ctg/
Disallow: /sl/node
Disallow: /sme/
Disallow: /soc/
Disallow: /talk/
Disallow: /tickets/
Disallow: /today/
Disallow: /trylater/
Disallow: /urw/write-review/
Disallow: /vsp/
Disallow: /ws/
Disallow: /sch/*modules=SEARCH_REFINEMENTS_MODEL_V2
Disallow: /b/*modules=SEARCH_REFINEMENTS_MODEL_V2
Disallow: /itm/*_nkw
Disallow: /itm/*?fits
Disallow: /itm/*&fits
Disallow: /cta/

# STORES Sitemaps
Sitemap: http://www.ebay.com/lst/STORES-0-index.xml

# RPP Sitemaps
Sitemap: http://www.ebay.com/lst/RPP-0-index.xml

### END FILE ###