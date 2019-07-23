User-agent: *
Disallow: /wp-admin/
Allow: /wp-admin/admin-ajax.php
Disallow: /4817/
Disallow: /176986657/
Disallow: /styleguide/
Disallow: /author/mrben
Disallow: /members/
Disallow: /account/
Disallow: /search/
Disallow: */?rows

Disallow: */1598
Disallow: */1278
Disallow: */119
Disallow: */150
Disallow: */213
Disallow: */226
Disallow: */236
Disallow: */239
Disallow: */273
Disallow: */300
Disallow: */383
Disallow: */384
Disallow: */453
Disallow: */479
Disallow: */480
Disallow: */485
Disallow: */626
Disallow: */639
Disallow: */799
Disallow: */959
Allow: */page/

# News Sitemap
Sitemap: https://www.bikeradar.com/google-news.xml/

# Sitemap
Sitemap: https://www.bikeradar.com/sitemap.xml/
# Sitemap archive
Sitemap: https://www.bikeradar.com/sitemap.xml

