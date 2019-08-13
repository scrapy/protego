# robots.txt file for https://www.fossil.com  

# Updated 2019-06-06 

User-agent: * 
Disallow: /us/en/search*  
Disallow: /de/de/search*  
Disallow: /fr/fr/search*  
Disallow: /au/en/search* 
Disallow: /uk/en/search*  
Disallow: /jp/ja/search* 
Disallow: /in/en/search* 
Disallow: /ca/en/search* 
Disallow: /ca/fr/search* 

# component files
Disallow: /us/en/account-dashboard/
Disallow: /content/dam/
Disallow: /*/*/sign-in/
Disallow: /*/*/register/
Disallow: /clientfiles/
Disallow: /wait/
Disallow: */.seoExpandableCopy
Disallow: */.tab-*
Disallow: /role/
Disallow: /sdx/
Disallow: /de/de/.tab*

# sitemaps
sitemap: https://www.fossil.com/us/en/sitemap/sitemap.xml
sitemap: https://www.fossil.com/de/de/sitemap/sitemap.xml
sitemap: https://www.fossil.com/fr/fr/sitemap/sitemap.xml
sitemap: https://www.fossil.com/au/en/sitemap/sitemap.xml
sitemap: https://www.fossil.com/uk/en/sitemap/sitemap.xml
sitemap: https://www.fossil.com/jp/ja/sitemap/sitemap.xml
sitemap: https://www.fossil.com/in/en/sitemap/sitemap.xml
sitemap: https://www.fossil.com/ca/en/sitemap/sitemap.xml
sitemap: https://www.fossil.com/ca/fr/sitemap/sitemap.xml
sitemap: http://stores.fossil.com/local/sitemap.xml.gz

