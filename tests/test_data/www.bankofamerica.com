User-agent: *             # applies to all robots
Disallow: /global         # disallow indexing of restricted areas
Disallow: /cfdocs
Disallow: /thirdparty
Disallow: /directbenefits
Disallow: /groupbanking
Disallow: /incubator
Disallow: /signin
Disallow: /associatebanking
Disallow: /cgi-bin
Disallow: /deposits/*.pdf$
Disallow: /deposits/*.swf$
Disallow: /deposits/*.txt$
Disallow: /products/deposits/
Disallow: /banking-information/associatebanking/
Disallow: /banking-information/employeebanking/
Disallow: /products/employeebanking/
Disallow: /employeebanking
Disallow: /employeebankingandinvestments
Disallow: /*slider-module.go
Disallow: */hp-assets/
Disallow: /financial-wellness/    

# Disallow URLs with tracking parameters
Disallow: /adtrack/
Disallow: /*adlink
Disallow: /*cm_mmc
Disallow: /weblinking/
Disallow: /mortgage_network/
Disallow: /*cm_sp
Disallow: /*reason=QKN
Disallow: /*msg=OnlineIdEmpty
Disallow: /*SOURCE_URL

# Disallow mobile content
Disallow: /promos/jump/package/iPhone/
Disallow: /promos/jump/package/mobile/

User-agent: gsa-crawler  # Special rule just for Google Search Appliance
Disallow: /global
Disallow: /cfdocs
Disallow: /thirdparty
Disallow: /directbenefits
Disallow: /groupbanking
Disallow: /incubator
Disallow: /signin
Disallow: /cgi-bin
Disallow: /deposits/*.pdf$
Disallow: /deposits/*.swf$
Disallow: /deposits/*.txt$
Disallow: /products/deposits/
Disallow: /banking-information/associatebanking/
Disallow: /banking-information/employeebanking/
Disallow: /products/employeebanking/
Disallow: /employeebanking
Disallow: /employeebankingandinvestments
Disallow: /*slider-module.go
Disallow: */hp-assets/
Disallow: /financial-wellness/  

# Disallow URLs with tracking parameters
Disallow: /adtrack/
Disallow: /*adlink
Disallow: /*cm_mmc
Disallow: /weblinking/
Disallow: /mortgage_network/
Disallow: /*cm_sp
Disallow: /*reason=QKN
Disallow: /*msg=OnlineIdEmpty
Disallow: /*SOURCE_URL

# Disallow mobile content
Disallow: /promos/jump/package/iPhone/
Disallow: /promos/jump/package/mobile/

User-agent: OmniExplorer_Bot
Disallow: /

# Allow mobile content for primary mobile bots

User-agent: Googlebot-Mobile
User-agent: msnbot-mobile
User-agent: YahooSeeker/M1A1-R2D2
Disallow: /global
Disallow: /cfdocs
Disallow: /thirdparty
Disallow: /directbenefits
Disallow: /groupbanking
Disallow: /incubator
Disallow: /signin
Disallow: /associatebanking
Disallow: /cgi-bin
Disallow: /deposits/*.pdf$
Disallow: /deposits/*.swf$
Disallow: /deposits/*.txt$
Disallow: /products/deposits/
Disallow: /banking-information/associatebanking/
Disallow: /banking-information/employeebanking/
Disallow: /products/employeebanking/
Disallow: /employeebanking
Disallow: /employeebankingandinvestments
Disallow: /*slider-module.go
Disallow: */hp-assets/
Disallow: /financial-wellness/  

# Disallow URLs with tracking parameters
Disallow: /adtrack/
Disallow: /*adlink
Disallow: /*cm_mmc
Disallow: /weblinking/
Disallow: /mortgage_network/
Disallow: /*cm_sp
Disallow: /*reason=QKN
Disallow: /*msg=OnlineIdEmpty
Disallow: /*SOURCE_URL

sitemap: https://www.bankofamerica.com/content/sitemap_index.xml

#Deployed from SPARTA
#CAST ID for this deployment #78658
#www robots.txt
