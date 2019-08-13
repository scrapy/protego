User-agent: bingbot
Crawl-delay: 10

User-agent: *
Allow: /
Allow: /*+f-*
Allow: /*?_s=gppc*
Allow: /*/browse/featuredproduct/*

Disallow: /*query*
Disallow: /account
Disallow: /track-order
Disallow: /cart
Disallow: /*-other*
Disallow: */city-edition/c-1278727202+z-970722-613556379
Disallow: */winter-classic-gear/c-16292009+z-9895437-3136636318
