#
# robots.txt
#
# This file is to prevent the crawling and indexing of certain parts
# of your site by web crawlers and spiders run by sites like Yahoo!
# and Google. By telling these "robots" where not to go on your site,
# you save bandwidth and server resources.
#
# This file will be ignored unless it is at the root of your host:
# Used:    http://example.com/robots.txt
# Ignored: http://example.com/site/robots.txt
#
# For more information about the robots.txt standard, see:
# http://www.robotstxt.org/robotstxt.html
#
# For syntax checking, see:
# http://www.frobee.com/robots-txt-check

User-agent: *
Crawl-delay: 10
# Directories
Disallow: /includes/
Disallow: /modules/
Disallow: /profiles/
Disallow: /themes/
# Files
Disallow: /CHANGELOG.txt
Disallow: /cron.php
Disallow: /INSTALL.mysql.txt
Disallow: /INSTALL.pgsql.txt
Disallow: /INSTALL.sqlite.txt
Disallow: /install.php
Disallow: /INSTALL.txt
Disallow: /LICENSE.txt
Disallow: /MAINTAINERS.txt
Disallow: /update.php
Disallow: /UPGRADE.txt
Disallow: /xmlrpc.php
# Paths (clean URLs)
Disallow: /admin/
Disallow: /comment/reply/
Disallow: /filter/tips/
Disallow: /node/add/
Disallow: /search/
Disallow: /user/register/
Disallow: /user/password/
Disallow: /user/login/
Disallow: /user/logout/
# Paths (no clean URLs)
Disallow: /?q=admin/
Disallow: /?q=comment/reply/
Disallow: /?q=filter/tips/
Disallow: /?q=node/add/
Disallow: /?q=search/
Disallow: /?q=user/password/
Disallow: /?q=user/register/
Disallow: /?q=user/login/
Disallow: /?q=user/logout/



# Worlspay Specific Additions
Disallow: /node
Disallow: /node/*
Disallow: /taxonomy
Disallow: /taxonomy/term
Disallow: /taxonomy/term/*
Disallow: /file
Disallow: /file/*
Disallow: /file/*/*
Disallow: /file/*/*/*
Disallow: /file/*/*/*/*
Disallow: /file/*/*/*/*/*
# Partner section: integration guides
Disallow: /sites/default/files/Global-OPJ-Interactive-PDF-Airlines.pdf
Disallow: /sites/default/files/WPUK-Interchange-and-scheme-fees.pdf
Disallow: /sites/default/files/partners/products/
Disallow: /sites/default/files/Fraud-trends-2016.pdf
Disallow: /sites/default/files/EN_MPJ_OPTIMISE_AIRLINES&TRAVEL.pdf
Disallow: /sites/default/files/EN_MPJ_OPTIMISE_AIRLINES_TRAVEL.pdf
Disallow: /sites/default/files/EN_MPJ_OPTIMISE_RETAIL.pdf
Disallow: /sites/default/files/EN_MPJ_OPTIMISE_DIGITAL.pdf
Disallow: /sites/default/files/EN_MPJ_OPTIMISE_GAMING.pdf
Disallow: /sites/default/files/PT_MPJ_OPTIMISE_AIRLINES_TRAVEL.pdf
Disallow: /sites/default/files/PT_MPJ_OPTIMISE_RETAIL.pdf
Disallow: /sites/default/files/PT_MPJ_OPTIMISE_DIGITAL.pdf
Disallow: /sites/default/files/PT_MPJ_OPTIMISE_GAMING.pdf
Disallow: /sites/default/files/ZH_MPJ_OPTIMISE_AIRLINES_TRAVEL.pdf
Disallow: /sites/default/files/ZH_MPJ_OPTIMISE_RETAIL.pdf
Disallow: /sites/default/files/ZH_MPJ_OPTIMISE_DIGITAL.pdf
Disallow: /sites/default/files/ZH_MPJ_OPTIMISE_GAMING.pdf
Disallow: /sites/default/files/JA_MPJ_OPTIMISE_AIRLINES_TRAVEL.pdf
Disallow: /sites/default/files/JA_MPJ_OPTIMISE_RETAIL.pdf
Disallow: /sites/default/files/JA_MPJ_OPTIMISE_DIGITAL.pdf
Disallow: /sites/default/files/JA_MPJ_OPTIMISE_GAMING.pdf
Disallow: /sites/default/files/ES_MPJ_OPTIMISE_AIRLINES_TRAVEL.pdf
Disallow: /sites/default/files/ES_MPJ_OPTIMISE_RETAIL.pdf
Disallow: /sites/default/files/ES_MPJ_OPTIMISE_DIGITAL.pdf
Disallow: /sites/default/files/ES_MPJ_OPTIMISE_GAMING.pdf
Disallow: /sites/default/files/EN_MPJ_MARKETGUIDE_AIRLINES_TRAVEL.pdf 
Disallow: /sites/default/files/EN_MPJ_MARKETGUIDE_DIGITAL.pdf 
Disallow: /sites/default/files/EN_MPJ_MARKETGUIDE_RETAIL.pdf 
Disallow: /sites/default/files/EN_MPJ_MARKETGUIDE_GAMING_UK.pdf 
Disallow: /sites/default/files/EN_MPJ_MARKETGUIDE_GAMING_AUS.pdf
Disallow: /sites/default/files/JA_MPJ_MARKETGUIDE_AIRLINES_TRAVEL.pdf 
Disallow: /sites/default/files/JA_MPJ_MARKETGUIDE_DIGITAL.pdf 
Disallow: /sites/default/files/JA_MPJ_MARKETGUIDE_RETAIL.pdf 
Disallow: /sites/default/files/JA_MPJ_MARKETGUIDE_GAMING_UK.pdf 
Disallow: /sites/default/files/JA_MPJ_MARKETGUIDE_GAMING_AUS.pdf
Disallow: /sites/default/files/ES_MPJ_MARKETGUIDE_AIRLINES_TRAVEL.pdf 
Disallow: /sites/default/files/ES_MPJ_MARKETGUIDE_DIGITAL.pdf 
Disallow: /sites/default/files/ES_MPJ_MARKETGUIDE_RETAIL.pdf 
Disallow: /sites/default/files/ES_MPJ_MARKETGUIDE_GAMING_UK.pdf 
Disallow: /sites/default/files/ES_MPJ_MARKETGUIDE_GAMING_AUS.pdf
Disallow: /sites/default/files/PT_MPJ_MARKETGUIDE_AIRLINES_TRAVEL.pdf 
Disallow: /sites/default/files/PT_MPJ_MARKETGUIDE_DIGITAL.pdf 
Disallow: /sites/default/files/PT_MPJ_MARKETGUIDE_RETAIL.pdf 
Disallow: /sites/default/files/PT_MPJ_MARKETGUIDE_GAMING_UK.pdf 
Disallow: /sites/default/files/PT_MPJ_MARKETGUIDE_GAMING_AUS.pdf
Disallow: /sites/default/files/ZH_MPJ_MARKETGUIDE_AIRLINES_TRAVEL.pdf 
Disallow: /sites/default/files/ZH_MPJ_MARKETGUIDE_DIGITAL.pdf 
Disallow: /sites/default/files/ZH_MPJ_MARKETGUIDE_RETAIL.pdf 
Disallow: /sites/default/files/ZH_MPJ_MARKETGUIDE_GAMING_UK.pdf 
Disallow: /sites/default/files/ZH_MPJ_MARKETGUIDE_GAMING_AUS.pdf
Disallow: /sites/default/files/Consumer%20Behaviour%20Report%202018_Spreads.pdf 
Disallow: /sites/default/files/attached/WPUK-Consumer-Behaviour-and-Payments-Report-2017.pdf
Disallow: /sites/default/files/WPUK-Consumer-behaviour-report-2016.pdf
Disallow: /sites/default/files/FINAL-ENG-The-Global-Payments-Report-Ieuan-Owen.pdf
Disallow: /sites/default/files/WPUK_Worldpay_Total_brochure.pdf
Disallow: /sites/default/files/Worldpay_PaymentReports_Final.pdf
Disallow: /sites/default/files/EN_MPJ_COUNTRY_RETAIL_AUS.pdf
Disallow: /sites/default/files/EN_MPJ_COUNTRY_RETAIL_BRAZIL.pdf
Disallow: /sites/default/files/EN_MPJ_COUNTRY_RETAIL_CHINA.pdf
Disallow: /sites/default/files/EN_MPJ_COUNTRY_RETAIL_GERMANY.pdf
Disallow: /sites/default/files/EN_MPJ_COUNTRY_RETAIL_JAPAN.pdf
Disallow: /sites/default/files/EN_MPJ_COUNTRY_RETAIL_US.pdf
Disallow: /sites/default/files/EN_MPJ_SOLUTIONS_AIRLINES_TRAVEL.pdf
Disallow: /sites/default/files/EN_MPJ_SOLUTIONS_DIGITAL.pdf
Disallow: /sites/default/files/EN_MPJ_SOLUTIONS_RETAIL.pdf
Disallow: /sites/default/files/EN_MPJ_SOLUTIONS_GAMING_UK.pdf
Disallow: /sites/default/files/EN_MPJ_SOLUTIONS_GAMING_AUS.pdf
Disallow: /sites/default/files/SaferPaymentsPlus-benefits-for-your-business.pdf
Disallow: /sites/default/files/SaferPaymentsPlus-WP-FAQ-SHEET.pdf
Sitemap: https://www.worldpay.com/sitemap.xml