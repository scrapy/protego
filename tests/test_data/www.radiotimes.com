User-agent: *
Disallow: /wp-admin/
Allow: /wp-admin/admin-ajax.php
Disallow: /4817/
Disallow: /176986657/
Disallow: /styleguide/
Disallow: /author/mrben
Disallow: /tag/tv/
Disallow: /tag/TV/
Disallow: /tag/film/
Disallow: /tag/radio/
Disallow: /members/
Disallow: /search/
Disallow: /account/

# News Sitemap
Sitemap: https://www.radiotimes.com/google-news.xml/
# Sitemap archive
Sitemap: https://www.radiotimes.com/sitemap.xml

