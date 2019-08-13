User-agent: rogerbot
Disallow: /Search
Crawl-delay: 10

User-agent: *

Disallow: /sitecore
Disallow: /Sitecore
Disallow: /sitecore_files/
Disallow: /sitecore modules/
Disallow: /App_Browsers/
Disallow: /App_config/
Disallow: /App_Data/
Disallow: /temp/
Disallow: /upload/
Disallow: /xsl/
Disallow: /*?*
Allow: /*?page=*&searchStr

Sitemap: https://www.mba.com/sitemap.xml