Sitemap: https://www.moneysupermarket.com/sitemap-index.xml
 
# Exclude Files From All Robots:
User-agent: *
 
Disallow: /3rdparty/
Disallow: /income-protection/quote/
Disallow: /bin/
Disallow: /breakdown-cover/enquiry/
Disallow: /breakdown-cover/more-info-new/
Disallow: /breakdown-cover/results/
Disallow: /broadband/goto/
Disallow: /etc/segmentation/
Disallow: /health-insurance/search/
Disallow: /shop/
Disallow: /store/
Disallow: /van-insurance/quote/
Disallow: /content/moneysupermarket/en_gb/insurance/caravan-insurance/*.html$
Disallow: /content/moneysupermarket/en_gb/insurance/asu/*.html$
Disallow: /content/moneysupermarket/en_gb/insurance/business-insurance/*.html$
 
Allow: /shop/car-insurance/
Allow: /shop/home-insurance/
Allow: /store/app/
Allow: /store/broadband/
Allow: /store/gas-and-electricity/
Allow: /store/help-centre/
Allow: /store/how-moneysupermarket-works/
Allow: /store/modern-slavery-act
Allow: /store/page-not-found/
Allow: /store/supers/
Allow: /bin/services/products
Allow: /bin/services/money/results

 
# End robots.txt file