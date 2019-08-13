Sitemap: https://www.sfgate.com/sitemap.xml
Sitemap: https://www.sfgate.com/sitemap_news.xml

User-agent: *
Disallow: /style/beauty/hearstmagazines/
Disallow: /style/fashion/hearstmagazines/
Disallow: /living/relationships/hearstmagazines/
Disallow: /homeandgarden/home/hearstmagazines/
Disallow: /living/wellness/hearstmagazines/
Disallow: /search/
Disallow: /?action=search
Disallow: /?%3Fcontrollername=search
Disallow: /?%3Faction=search
Disallow: /?controllerName=search
Disallow: /sponsored
Disallow: /sponsoredarticles/
Disallow: /business/press-releases/
Disallow: /events/
Disallow: /movies/templates/listings
Disallow: /food/dbapps/restaurants
Disallow: /sso/action/logout
Disallow: /general/dbapps/404

User-agent: Googlebot-News
Disallow: /business/prweb/
Disallow: /horoscopes/
Disallow: /entertainment/article/Minerva-s-horoscope
