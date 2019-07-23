User-agent: *
Disallow:
Disallow: /*gulp.action*
Disallow: /search
Disallow: /checkout/
Disallow: /discover/
Disallow: /account/
Disallow: /oauth2/
Disallow: /rds/
Disallow: /restaurant/*/menu/item/*/choice/*
Disallow: /restaurant/*/menu-item/*
Disallow: /restaurant/*?proof
Disallow: /program/
Sitemap: https://www.grubhub.com/sitemap-index.xml
