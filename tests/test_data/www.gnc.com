User-agent: *
Disallow: /search*
Disallow: /account*
Disallow: /register*
Disallow: /regimen*
Disallow: /cart*
Disallow: /payment*
Disallow: /order*
Disallow: /stores-*
Disallow:/?sz*
Disallow: /on/demandware.store/Sites-GNC-Site/default/Product-Variation*
Disallow: /performance-supplements/pre-workout-supplements-1/?*
Disallow: /sexual-health/mens-sexual-health/?*
Disallow: /*?pref*
Disallow: /*&pref*
Disallow: /*?pmax*
Disallow: /*?pmin*
Disallow: /*&pmax*
Disallow: /*&pmin*

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

User-agent: Googlebot
Disallow: /on/demandware.store/Sites-GNC-Site/default/Product-Variation*
Disallow: /performance-supplements/pre-workout-supplements-1/?*
Disallow: /sexual-health/mens-sexual-health/?*
Disallow: /*?pref*
Disallow: /*&pref*
Disallow: /*?pmax*
Disallow: /*?pmin*
Disallow: /*&pmax*
Disallow: /*&pmin*

User-agent: Googlebot-image
Disallow: /on/demandware.store/Sites-GNC-Site/default/Product-Variation*
Disallow: /performance-supplements/pre-workout-supplements-1/?*
Disallow: /sexual-health/mens-sexual-health/?*
Disallow: /*?pref*
Disallow: /*&pref*
Disallow: /*?pmax*
Disallow: /*?pmin*
Disallow: /*&pmax*
Disallow: /*&pmin*

Sitemap: https://www.gnc.com/sitemap_index.xml