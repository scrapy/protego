User-Agent: *
Disallow: /account/
Disallow: /checkout/
Disallow: /viewCart
Disallow: /printProduct/
Disallow: /quickView
Disallow: /reviewProduct
Disallow: /calculateProductShippingPage
Disallow: /emailProduct
Disallow: /emailProductComparePage
Disallow: /PartsFinder
Disallow: /PrintProductCompare
Disallow: /productFinder
Disallow: /productCompare
Disallow: /searchResult
Disallow: /shopByBrand
Disallow: /sellerListing
Disallow: /printProduct
Disallow: /calculateProductShipping

Allow: /
sitemap:https://www.globalindustrial.com/sitemap_index.xml

#Baiduspider
User-agent: Baiduspider
Disallow: /

# Block Companybook-Crawler
User-agent: Companybook-Crawler
Disallow: /

# Block Companybook-Crawler
User-agent: Companybook Crawler
Disallow: /


