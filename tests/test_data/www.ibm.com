# $Id: robots.txt,v 1.81 2018/12/13 19:15:03 jliao Exp $
#
# This is a file retrieved by webwalkers a.k.a. spiders that 
# conform to a defacto standard.
# See <URL:http://www.robotstxt.org/wc/exclusion.html#robotstxt>
#
# Comments to the webmaster should be posted at <URL:http://www.ibm.com/contact>
#
# Format is:
#       User-agent: <name of spider>
#       Disallow: <nothing> | <path>
# ------------------------------------------------------------------------------

User-agent: *
Disallow: //
Disallow: /account/registration
Disallow: /account/mypro
Disallow: /account/myint
Disallow: /Admin
Disallow: /cgi-
Disallow: /contact/employees/servlets
Disallow: /data
Disallow: /db2s
Disallow: /developerworks/*-pdf.pdf$
Disallow: /developerworks/forums/servlet
Disallow: /developerworks/forums/abuse
Disallow: /developerworks/forums/post
Disallow: /fcgi-
Disallow: /fscripts
# Disallow: /homepage
Disallow: /image
Disallow: /mashupmaker
Disallow: /partnerworld/portal
Disallow: /portal/home
Disallow: /products/finder
Disallow: /profiles
Disallow: /scripts
Disallow: /Scripts
Disallow: /search/?
Disallow: /Search
Disallow: /smartmarket/*/productListInitial.action?
Disallow: /standards
Disallow: /support/knowledgecenter/api
Disallow: /support/knowledgecenter/v1
Disallow: /survey
Disallow: /tmp
Disallow: /vrm/bin/sendThisPage
Disallow: /webmaster
Disallow: /zx
Disallow: /zz
Disallow: /*.ssi$
Disallow: /account/myibm/InterestsEdit.do
Disallow: /wcs
Disallow: /wcsstore
Disallow: /webapp
Disallow: /web/portal/software/websphere
Disallow: /common/austin-summit
Disallow: /link
Disallow: /links
Disallow: /blog/
Disallow: /web/portal/commerce 
Disallow: /industries/clients
Disallow: /standards
Disallow: /internal
Disallow: /test
Disallow: /test-kick-tires
Disallow: /product-detail
Allow:    /common/ssi
Allow:    /data-responsibility
sitemap: https://www.ibm.com/homepage_sitemap.xml
sitemap: https://www.ibm.com/sitemap-cms.xml
sitemap: https://www.ibm.com/connect/ibm/sitemap.xml
sitemap: https://www.ibm.com/marketplace/storefront-sitemap-index.xml
sitemap: https://www.ibm.com/downloads/cas/sitemap/sitemap.xml

User-agent: Fast corporate crawler
Disallow: //
Disallow: /account/registration
Disallow: /account/mypro
Disallow: /account/myint
Disallow: /Admin
Disallow: /cgi-
Disallow: /common
Disallow: /contact/employees/servlets
Disallow: /data
Disallow: /db2s
Disallow: /developerworks
Disallow: /fcgi-
Disallow: /fscripts
Disallow: /homepage
Disallow: /i/
Disallow: /image
Disallow: /investor
Disallow: /link
Disallow: /mashupmaker
Disallow: /portal/home
Disallow: /products/finder
Disallow: /profiles
Disallow: /SametimeWebApp
Disallow: /scripts
Disallow: /Scripts
Disallow: /search/?
Disallow: /Search
Disallow: /survey
Disallow: /tmp
Disallow: /vrm/bin/sendThisPage
Disallow: /webmaster
Disallow: /zx
Disallow: /zz

User-agent: 008
Disallow: /smartmarket

# Added for IN4173782 on 7Aug2013
User-agent: magpie-crawler
Disallow: /connections/

# Added for IN4177562 on 8Aug2013
User-agent: magpie-crawler/1.1
Disallow: /connections/

# Added for IN4177562 on 8Aug2013
User-agent: MagpieRSS
Disallow: /connections/   

User-agent: psnsearch
Disallow: /developerworks/wikis/login.action

# Added to block site mirroring
User-agent: HTTrack
Disallow: /
#

