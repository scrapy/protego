User-agent: Mediapartners-Google
Disallow:

User-agent: *
Allow: /*.js*
Allow: /*.css*
Disallow: /includes/
Disallow: /src/
Disallow: /temp/
Disallow: /analytics/
Disallow: /scripts/
Disallow: /min_cache/
Disallow: /ckeditor/
Disallow: /templates/

Sitemap: https://www.drivespark.com/sitemap.xml
Sitemap: https://www.drivespark.com/sitemap-latest.xml
sitemap: https://www.drivespark.com/sitemap_car_search_index.xml
sitemap: https://www.drivespark.com/sitemap_car_dealers_index.xml
sitemap: https://www.drivespark.com/sitemap-images-index.xml
