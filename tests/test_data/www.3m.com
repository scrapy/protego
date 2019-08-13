User-agent: *
Disallow: /product/product/
Disallow: /3M/en_US/company-us/search/
Disallow: /3MStaticTheme/themes/3MTheme/js/mmm/dynaTraceMonitor
Disallow: /3MTheme/themes/html/assets/dynaTraceMonitor
Disallow: /3M/en_US/company-us/all-3m-products/where-to-buy/
Disallow: /my3M/
Disallow: /wps/myportal/
 
User-agent: Googlebot
Disallow: /product/product/
Disallow: /3M/en_US/company-us/search/
Disallow: /3MStaticTheme/themes/3MTheme/js/mmm/dynaTraceMonitor
Disallow: /3MTheme/themes/html/assets/dynaTraceMonitor
Disallow: /3M/en_CA/
Disallow: /3M/de_DE/
Disallow: /3M/en_GB/
Disallow: /3M/en_US/company-us/all-3m-products/where-to-buy/
Disallow: /my3M/
Disallow: /wps/myportal/

User-agent: bingbot
User-agent: rogerbot
User-agent: AhrefsBot
Disallow: /product/product/
Disallow: /3M/en_US/company-us/search/
Disallow: /3MStaticTheme/themes/3MTheme/js/mmm/dynaTraceMonitor
Disallow: /3MTheme/themes/html/assets/dynaTraceMonitor
Disallow: /3M/en_US/company-us/all-3m-products/where-to-buy/
Disallow: /my3M/
Disallow: /wps/myportal/
Crawl-delay: 10
 
User-agent: YandexBot
User-agent: Baiduspider
Disallow: /product/product/
Disallow: /3M/en_US/company-us/search/
Disallow: /3MStaticTheme/themes/3MTheme/js/mmm/dynaTraceMonitor
Disallow: /3MTheme/themes/html/assets/dynaTraceMonitor
Disallow: /3M/en_US/company-us/all-3m-products/where-to-buy/
Disallow: /my3M/
Disallow: /wps/myportal/
Crawl-delay: 1

Sitemap: https://www.3M.com/sitemap.xml

# Last edited by Rfryar 7 June 2019
