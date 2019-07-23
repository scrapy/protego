User-agent: *
Allow: /
Disallow: /admin/*
Disallow: /cart/*
Disallow: /profile/*
Disallow: /checkout/*
Disallow: /boutique/workingProducts
Disallow: /boutique/workingProducts/*
Disallow: /boutique/miscAccessorySKUs
Disallow: /medialibrary/pdf/rules/PurchasingTermsAndConditions-TCS.pdf
Disallow: /elfa/instructions/*
Allow: /boutique/inspirationalSpaces
Allow: Sitemap: https://www.containerstore.com/site-map.xml
Allow: Sitemap:
                https://www.containerstore.com/shopping/th-sitemap-0.xml
