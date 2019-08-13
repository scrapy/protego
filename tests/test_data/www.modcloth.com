User-Agent: *
Allow: */account
Allow: /account/wishlist
Allow: /account/lovelist
Disallow: /on/demandware.store/
Disallow: /productvariation
Disallow: /account*
Disallow: /search*
Disallow: /cart*
Disallow: /style-gallery/outfits/*
Noindex: /on/demandware.store/
Noindex: /productvariation*
Noindex: /search*
Noindex: /cart*

Sitemap: https://www.modcloth.com/sitemap.xml