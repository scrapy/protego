User-agent: *
Disallow: /search*
Disallow: /account*
Disallow: /register*
Disallow: /wishlist*
Disallow: /cart*
Disallow: /payment*
Disallow: /billing*
Disallow: /shipping*
Disallow: /order*
Disallow: /product-print*
Disallow: /create-your-own/09272017-cyo-lp.html*
Disallow: */Product-Variation
Disallow: */Search-Show
Disallow: /on/demandware.store/*


User-agent: Robozilla
Disallow: /
User-agent: yahoo-mmcrawler
Disallow: /
User-agent: psbot
Disallow: /
User-agent: asterias
Disallow: /
User-agent: yahoo-blogs/v3.9
Disallow: /

Sitemap: https://www.ralphlauren.com/sitemap_index.xml