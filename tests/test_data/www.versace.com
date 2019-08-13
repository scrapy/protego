User-agent: *

#Filter parameters
Disallow: /*?siteid
Disallow: /*?start
Disallow: /*?sz
Disallow: /*?prefn1
Disallow: /*?prefn2
Disallow: /*?prefn3
Disallow: /*?dwvar
Disallow: /*?prefv1
Disallow: /*?prefv2
Disallow: /*?prefv3
Disallow: /*?srule
Disallow: /*?pid
Disallow: /*?source
Disallow: /*?q
Disallow: /*?productsearch
Disallow: /*?viewall

#System directory
Disallow: /on/demandware.store/*

#Search directory
Disallow: /*/*/search/
Disallow: /*/*/suche/
Disallow: /*/*/cerca/
Disallow: /*/*/recherche/
Disallow: /*/*/buscar/

#Cart directory
Disallow: /*/*/bag/
Disallow: /*/*/cart/
Disallow: /*/*/warenkorb/
Disallow: /*/*/carrello/
Disallow: /*/*/panier/
Disallow: /*/*/cesta/

#Account directory
Disallow: /*/*/my-account/
Disallow: /*/*/mein-konto/
Disallow: /*/*/il-mio-conto/
Disallow: /*/*/mon-compte/
Disallow: /*/*/mi-cuenta/

#Wishlist directory
Disallow: /*/*/wishlist/
Disallow: /*add-wishlist
Disallow: /*anadir-lista-de-deseos
Disallow: /*wishlist
Disallow: /*wunschliste

#Size guide
Disallow: /*size-guide

#XML Sitemaps
Sitemap: https://www.versace.com/de/de-de/sitemap_index.xml
Sitemap: https://www.versace.com/eu/en/sitemap_index.xml
Sitemap: https://www.versace.com/fr/fr-fr/sitemap_index.xml
Sitemap: https://www.versace.com/gb/en-gb/sitemap_index.xml
Sitemap: https://www.versace.com/it/it-it/sitemap_index.xml
Sitemap: https://www.versace.com/us/en-us/sitemap_index.xml
Sitemap: https://www.versace.com/international/en/sitemap_index.xml