Sitemap: https://www.virginmedia.com/sitemap-index.xml

User-agent: *
Disallow: /files/
Noindex: /files/
Disallow: /partners/
Noindex: /partners/
Disallow: /sitesearch/
Noindex: /sitesearch/
Disallow: /results/
Noindex: /results/
Disallow: /tvanywhere/
Noindex: /tvanywhere/
Disallow: /htmlads/
Noindex: /htmlads/
Disallow: /apps/
Noindex: /apps/
Disallow: /checkout
Noindex: /checkout
Disallow: /error-pages
NOindex: /error-pages
Disallow: /*productCodes
Noindex: /*productCodes


Allow: /shop/broadband/vivid.html?intcmpid=*
Allow: /shop/bundles.html?intcmpid=*
Allow: /shop/broadband/broadband-only.html?intcmpid=*
Allow: /*GOOGLESHOPPING
Disallow: /add-to-basket
Noindex: /add-to-basket
Disallow: /build-your-bundle
Noindex: /build-your-bundle
Disallow: /check-your-postcode
Noindex: /check-your-postcode
Disallow: /review-basket
Noindex: /review-basket
Disallow: /*en_gb
Noindex: /*en_gb
Disallow: /*tel_
Noindex: /*tel_
Disallow: /corona/
Noindex: /corona/
Disallow: /shop/lightning/offers/lightning-hpp-offer.html
Noindex: /shop/lightning/offers/lightning-hpp-offer.html
Disallow: /shop/lightning/offers/lightning-tablet-offer.html
Noindex: /shop/lightning/offers/lightning-tablet-offer.html
Disallow: /shop/lightning/offers/lightning-tv-offer.html
Noindex: /shop/lightning/offers/lightning-tv-offer.html
Disallow: /cablemystreet/manual-address
Noindex: /cablemystreet/manual-address
Disallow: /cablemystreet/results
Noindex: /cablemystreet/results
Disallow: /cablemystreet/register
Noindex: /cablemystreet/register
Disallow: /cablemystreet/thank-you
Noindex: /cablemystreet/thank-you
Disallow: /virgin-tv-edit/vm-presents-configuration/
Noindex: /virgin-tv-edit/vm-presents-configuration/
Disallow: /shop/personalise/
Noindex: /shop/personalise/


User-agent: AdsBot-Google
User-agent: Mediapartners-Google*
User-agent: AdsBot-Google-Mobile-Apps
Disallow:

User-agent: MGOMD-Feeds-Scraper
Allow: /*?


#This message has been scanned for viruses