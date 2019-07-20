# Welcome to robots.txt on USBank.com -- sit down, relax, and have a cup of coffee while you look around. Have a nice day.
#
#
User-agent: *
Disallow: /exclusive/
Disallow: /hr/employeePerk/evpIM.asp 
Disallow: /hr/employeePerk/evpOOM.asp
Disallow: /inc/
Disallow: /RIB_pdf/*.pdf
Disallow: /RIB_pdf/*.xls
Disallow: /test/
Disallow: /templatedata/
Disallow: /content/mortgage_brokers/docs/pdfs/Prime_Plus_Pricing_Sheet.pdf
Disallow: /content/mortgage_brokers/docs/pdfs/Prime_Plus_Pricing_Sheet.xls
Disallow: /content/mortgage_brokers/docs/pdfs/WPP_Conforming_Pricing.pdf
Disallow: /content/mortgage_brokers/docs/pdfs/WPP_Conforming_HELOC_Pricing.pdf
Disallow: /content/mortgage_brokers/docs/pdfs/USB_WPP_Conforming_Pricing.xls
Disallow: /content/mortgage_brokers/docs/pdfs/USB_WPP_Conforming_HELOC_Rate_Sheet.xls
Disallow: /dam/documents/pdf/commercial-banking/USB_Services_Terms_and_Conditions_06302016_1.pdf
Disallow: /dam/documents/pdf/commercial-banking/USB-Cash-Management-Services-Terms-and-Conditions-2016_020619.pdf
Disallow: *?ecid

User-agent: Googlebot
Disallow: /search*
Disallow: *?ecid

User-agent: Bingbot
Disallow: /search*
Disallow: *?ecid

User-agent: Googlebot-Mobile
Disallow: /search*
Disallow: *?ecid

User-agent: Slurp
Disallow: /search*

User-agent: gsa-crawler
Disallow:






