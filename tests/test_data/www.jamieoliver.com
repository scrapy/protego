User-agent: *
Disallow: /_beta
Disallow: /_int
Disallow: /core
Disallow: /brandbible
Disallow: /home/wp-content/cache
Allow:  /core/images/magazine/*.pdf$
Sitemap: https://www.jamieoliver.com/sitemap.xml

