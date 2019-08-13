User-agent: Mediapartners-Google
Disallow:

User-agent: Facebot
Disallow:

User-agent: Twitterbot
Disallow:

User-agent: *
Disallow: /ajax/
Disallow: /dk/ajax/
Disallow: /en/ajax/
Disallow: /es/ajax/
Disallow: /in/ajax/
Disallow: /it/ajax/
Disallow: /jp/ajax/
Disallow: /ng/ajax/
Disallow: /nl/ajax/
Disallow: /no/ajax/
Disallow: /se/ajax/
Disallow: /tw/ajax/
Disallow: /ua/ajax/
Disallow: /uk/ajax/
Disallow: /api/
Disallow: /landing-feed/
Disallow: /oauth/
Disallow: /preview/
Disallow: /dk/preview/
Disallow: /en/preview/
Disallow: /es/preview/
Disallow: /in/preview/
Disallow: /it/preview/
Disallow: /jp/preview/
Disallow: /ng/preview/
Disallow: /nl/preview/
Disallow: /no/preview/
Disallow: /se/preview/
Disallow: /tw/preview/
Disallow: /ua/preview/
Disallow: /uk/preview/
Disallow: /search-fetch/
Disallow: /search/
Disallow: /transporter/
Allow: /ajax/content-product/
Allow: /dk/ajax/content-product/
Allow: /en/ajax/content-product/
Allow: /es/ajax/content-product/
Allow: /in/ajax/content-product/
Allow: /it/ajax/content-product/
Allow: /jp/ajax/content-product/
Allow: /ng/ajax/content-product/
Allow: /nl/ajax/content-product/
Allow: /no/ajax/content-product/
Allow: /se/ajax/content-product/
Allow: /tw/ajax/content-product/
Allow: /ua/ajax/content-product/
Allow: /uk/ajax/content-product/
Allow: /ajax/contentmedia/
Allow: /dk/ajax/contentmedia/
Allow: /en/ajax/contentmedia/
Allow: /es/ajax/contentmedia/
Allow: /in/ajax/contentmedia/
Allow: /it/ajax/contentmedia/
Allow: /jp/ajax/contentmedia/
Allow: /ng/ajax/contentmedia/
Allow: /nl/ajax/contentmedia/
Allow: /no/ajax/contentmedia/
Allow: /se/ajax/contentmedia/
Allow: /tw/ajax/contentmedia/
Allow: /ua/ajax/contentmedia/
Allow: /uk/ajax/contentmedia/
Crawl-Delay: 10

Sitemap: https://www.womansday.com/sitemap_index.xml/
Sitemap: https://www.womansday.com/sitemap_google_news.xml/
