## 2018-11-15

User-agent: *

Disallow: /menu/

## Account
Disallow: /myjohnlewis/
Disallow: /basket/
Disallow: /checkout/
Disallow: /sign-in/
Disallow: /create-account/
Disallow: /register$

## Browse
Disallow: /browse/_/
Disallow: /browse/*/N-1z*

## 1JL
Disallow: /1jl/
Allow: /1jl/john-lewis-for-business$

## Sort By
Disallow: *sortBy=

## Sort Option
Disallow: *sortOption=

## Delivery Options
Disallow: */next-or-named-day/
Disallow: */click-collect/
Disallow: */collect+/
Disallow: */express-delivery/
Disallow: */by-approved-supplier/
Disallow: */standard-uk-delivery/
Disallow: */international/
Allow: /browse/home-garden/carpets-flooring/rugs/next-or-named-day/_/N-6vh2Z1z0ktrf
Allow: /browse/home-garden/diy/wallpaper/next-or-named-day/_/N-d0eZ1z0ktrf
Allow: /browse/women/occasion-hats-fascinators/next-or-named-day/_/N-7hm4Z1z0ktrf
Allow: /browse/women/maternity-clothes/view-all-maternity/next-or-named-day/_/N-8fsZ1z0ktrf
Allow: /browse/home-garden/mirrors/next-or-named-day/_/N-cjyZ1z0ktrf
Allow: /browse/furniture-lights/ceiling-lamp-shades/next-or-named-day/_/N-cj9Z1z0ktrf
Allow: /browse/furniture-lights/floor-lamps/next-or-named-day/_/N-cjdZ1z0ktrf
Allow: /browse/home-garden/cushions-bean-bags/cushions/next-or-named-day/_/N-cr9Z1z0ktrf

## Average Review Rating
Disallow: */4+/
Disallow: */3-4/
Disallow: */1-2/
Disallow: */2-3/

## In Stock
Disallow: */show-in-stock-items-only/
Disallow: *showInStockOnly=true

## New In
Disallow: */new-in/
Allow: /browse/baby-child/girlswear/new-in/_/N-1cu9
Allow: /browse/women/womens-dresses/new-in/_/N-flwZ7lhg

## On Offer
Disallow: */reduced-to-clear/

## Seconds
Disallow: */seconds/

## Price Match
Disallow: */price-match/
Allow: /special-offers/price-match/c6000070034
Allow: /customer-services/prices-and-payment/conditions-for-price-matching
Allow: /content/price-match*
Allow: /browse/special-offers/price-match/make-up/_/N-7aqk
Allow: /browse/special-offers/price-match/mens-watches/_/N-7fkd
Allow: /inspiration-and-advice/price-match*

## Discount Percentage
Disallow: */discount=

## Department
Disallow: *departmentSelected=

## Price
Disallow: */price=

## Facet
Disallow: *facet=
Disallow: */facets/
Disallow: *facetSearchRequest=

## Guarantees
Disallow: *-year-guarantee-included/
Disallow: *-year-frame-guarantee/
Disallow: */by-approved-supplier/

## Internal Search
Disallow: /search

## Category
Disallow: *20000450150

## International
Disallow: /ie/
Disallow: /ae/
Disallow: /au/
Disallow: /at/
Disallow: /be/
Disallow: /bg/
Disallow: /bh/
Disallow: /ca/
Disallow: /ch/
Disallow: /cl/
Disallow: /cy/
Disallow: /cz/
Disallow: /de/
Disallow: /dk/
Disallow: /ee/
Disallow: /es/
Disallow: /fi/
Disallow: /fr/
Disallow: /gr/
Disallow: /hk/
Disallow: /hu/
Disallow: /it/
Disallow: /kr/
Disallow: /lt/
Disallow: /lu/
Disallow: /lv/
Disallow: /mt/
Disallow: /my/
Disallow: /nl/
Disallow: /no/
Disallow: /nz/
Disallow: /ph/
Disallow: /qa/
Disallow: /pl/
Disallow: /pt/
Disallow: /ro/
Disallow: /sa/
Disallow: /se/
Disallow: /sg/
Disallow: /sk/
Disallow: /si/
Disallow: /tr/
Disallow: /us/
Disallow: /za/
Allow: /ie/

User-agent: AdsBot-Google-Mobile
Allow: *sortBy=
Allow: *sortOption=
Allow: */next-or-named-day/
Allow: */click-collect/
Allow: */collect+/
Allow: */express-delivery/
Allow: */by-approved-supplier/
Allow: */standard-uk-delivery/
Allow: */international/
Allow: */4+/
Allow: */3-4/
Allow: */1-2/
Allow: */2-3/
Allow: */show-in-stock-items-only/
Allow: *showInStockOnly=true
Allow: */new-in/
Allow: */reduced-to-clear/
Allow: */price-match/
Allow: */discount=
Allow: *departmentSelected=
Allow: */price=
Allow: *-year-guarantee-included/
Allow: *-year-frame-guarantee/
Allow: */by-approved-supplier/
Allow: /search
Allow: *facetSearchRequest=

User-agent: AdsBot-Google
Allow: *sortBy=
Allow: *sortOption=
Allow: */next-or-named-day/
Allow: */click-collect/
Allow: */collect+/
Allow: */express-delivery/
Allow: */by-approved-supplier/
Allow: */standard-uk-delivery/
Allow: */international/
Allow: */4+/
Allow: */3-4/
Allow: */1-2/
Allow: */2-3/
Allow: */show-in-stock-items-only/
Allow: *showInStockOnly=true
Allow: */new-in/
Allow: */reduced-to-clear/
Allow: */price-match/
Allow: */discount=
Allow: *departmentSelected=
Allow: */price=
Allow: *-year-guarantee-included/
Allow: *-year-frame-guarantee/
Allow: */by-approved-supplier/
Allow: /search
Allow: *facetSearchRequest=

User-agent: AdIdxBot
Allow: *sortBy=
Allow: *sortOption=
Allow: */next-or-named-day/
Allow: */click-collect/
Allow: */collect+/
Allow: */express-delivery/
Allow: */by-approved-supplier/
Allow: */standard-uk-delivery/
Allow: */international/
Allow: */4+/
Allow: */3-4/
Allow: */1-2/
Allow: */2-3/
Allow: */show-in-stock-items-only/
Allow: *showInStockOnly=true
Allow: */new-in/
Allow: */reduced-to-clear/
Allow: */price-match/
Allow: */discount=
Allow: *departmentSelected=
Allow: */price=
Allow: *-year-guarantee-included/
Allow: *-year-frame-guarantee/
Allow: */by-approved-supplier/
Allow: /search
Allow: *facetSearchRequest=

Sitemap: https://www.johnlewis.com/siteindex.xml
