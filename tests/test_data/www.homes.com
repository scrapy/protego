# /robots.txt file for http://www.homes.com
# @@ROBOTS-PROD@@
# e-mail web@homes.com for issues

User-agent: *
Disallow: /*/static/css/
Disallow: /Content/RefiRequest.cfm
Disallow: /mortgage-lenders/
Disallow: /home-builders/
Disallow: /property-managers/
Disallow: /all-professionals/
Disallow: /myhomes/
Disallow: /Content/MortgageRequestConnect.cfm
Disallow: /widget/commute-time/frame/
Disallow: /Mortgage-Rates/
Crawl-delay: 5

User-agent: 008
Disallow: /

User-agent: Crawlera
Disallow: /

User-agent: voltron
Disallow: /

User-agent: Googlebot
Disallow: /*/static/css/
Disallow: /Content/RefiRequest.cfm
Disallow: /mortgage-lenders/
Disallow: /home-builders/
Disallow: /property-managers/
Disallow: /all-professionals/
Disallow: /myhomes/
Disallow: /Content/MortgageRequestConnect.cfm
Disallow: /widget/commute-time/frame/
Disallow: /Mortgage-Rates/
Crawl-delay: 0

User-agent: bingbot
Disallow: /*/static/css/
Disallow: /Content/RefiRequest.cfm
Disallow: /mortgage-lenders/
Disallow: /home-builders/
Disallow: /property-managers/
Disallow: /all-professionals/
Disallow: /myhomes/
Disallow: /Content/MortgageRequestConnect.cfm
Disallow: /widget/commute-time/frame/
Disallow: /Mortgage-Rates/
Crawl-delay: 0

User-agent: slurp
Disallow: /*/static/css/
Disallow: /Content/RefiRequest.cfm
Disallow: /mortgage-lenders/
Disallow: /home-builders/
Disallow: /property-managers/
Disallow: /all-professionals/
Disallow: /myhomes/
Disallow: /Content/MortgageRequestConnect.cfm
Disallow: /widget/commute-time/frame/
Disallow: /Mortgage-Rates/
Crawl-delay: 0

User-agent: Applebot
Disallow: /*/static/css/
Disallow: /Content/RefiRequest.cfm
Disallow: /mortgage-lenders/
Disallow: /home-builders/
Disallow: /property-managers/
Disallow: /all-professionals/
Disallow: /myhomes/
Disallow: /Content/MortgageRequestConnect.cfm
Disallow: /widget/commute-time/frame/
Disallow: /Mortgage-Rates/
Crawl-delay: 0


Sitemap: https://www.homes.com/f/sitemap_f.xml
Sitemap: https://www.homes.com/f/omdsitemaps/sitemaphomevaluesIndex.xml

