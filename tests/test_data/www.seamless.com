User-agent: *
Disallow:
Disallow: /*items.m
Disallow: /user-profile/
Disallow: /food/
Disallow: /search
Disallow: /checkout/
Disallow: /discover/
Disallow: /account/
Disallow: /oauth2/
Disallow: /rds/
Disallow: /menu/*/menu-item/*
Disallow: /menu/*?proof
Disallow: /program/
Disallow: /business/
Sitemap: https://www.seamless.com/sitemap-index.xml
