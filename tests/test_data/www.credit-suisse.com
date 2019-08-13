# /robots.txt file for www.credit-suisse.com

User-agent: *
Disallow: /media/production/hong-kong-structured-products/
Disallow: /content/dam/formsanddocuments/cs-forms-common/
Disallow: /*.zoom.html$
Disallow: */tabcontent-*.html$
Disallow: */sources/bp-sources/
Disallow: */sources/lc/
Disallow: */pwp/www-root/
Disallow: */pwp/www-ux/
Disallow: /sites/mobile-feeds/
Disallow: /newsletter/
Disallow: /sites/multimedia/
Disallow: /sites/article-feeds/
Disallow: /sites/hidden-feed-list-pages/
Disallow: /content/articles/pwp/
Disallow: /content/dam/pwp/
Disallow: /*.p-*.html$

# Sitemap file
Sitemap: https://www.credit-suisse.com/sitemap.xml