#11/19/18 afk
User-agent: *
#sfcc rules
Disallow: /*/login$
Disallow: /*/login?
Disallow: /*/login/
Disallow: */app/*
Disallow: */shipping/*
Disallow: */billing/*
Disallow: */revieworder/*
Disallow: */orderconfirmation/*
Disallow: */account/*
Disallow: */ordersearch/*
Disallow: */demandware.store/Sites-asics-eu-Site/*
Disallow: */demandware.store/Sites-asics-jp-Site/*
Disallow: */*articleId
#hybris rules
Disallow: /*/*/cart
Disallow: /*/*/checkout
Disallow: /*/*/my-account
Disallow: /*/p/*/subscribe
Disallow: /*?*purchasable*


Sitemap: https://www.asics.com/managed-sitemaps/asics/href-sitemap-index.xml
Sitemap: https://www.asics.com/managed-sitemaps/asics/editorial-hreflang-sitemap.xml
Sitemap: https://www.asics.com/managed-sitemaps/asics/data/JP-sitemap-INDEX.xml