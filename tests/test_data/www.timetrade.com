User-Agent: *
Disallow: *.pdf # Block pdf files
Disallow: /s=*  # Block search results
Disallow: /token/
Disallow: /subscription-center/  # Block email subscription center
Disallow: /thanks-for-setting-your-preferences/
Sitemap: https://www.timetrade.com/sitemap_index.xml
