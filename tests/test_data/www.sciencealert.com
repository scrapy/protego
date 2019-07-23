User-agent: *
Allow: /*.js*
Allow: /*.css*
Allow: /*.png*
Allow: /*.jpg*
Allow: /*.gif*
Crawl-delay: 10

Disallow: /administrator/
Disallow: /bin/
#Disallow: /cache/
Disallow: /cdn-cgi/
Disallow: /cli/

Disallow: /includes/
Disallow: /installation/
Disallow: /language/
Disallow: /layouts/
Disallow: /libraries/
Disallow: /logs/
Disallow: /tmp/
Disallow: /staging/

# JSitemap entries
Sitemap: https://www.sciencealert.com/index.php?option=com_jmap&view=sitemap&format=xml
Sitemap: https://www.sciencealert.com/index.php?option=com_jmap&view=sitemap&format=gnews