User-Agent: *
Disallow: /index/*
Disallow: /vdccollections/*
Disallow: /componentgrouplibrary/*
Disallow: /reference-partial-library/*
Disallow: /common-disclousres-library/*
Disallow: /global-footer/*
Disallow: /GarrettScript/*
Disallow: /Applications/*
Disallow: /content/dam/chevrolet/na/us/english/index/owners/certified-service/service-offers/*
Disallow: /vqr/landing.html
Disallow: /certified-service/oil-change-coupons/pandora
Disallow: /raq-pop-in
Disallow: /*gmc
Allow: /content/dam/chevrolet/na/us/english/index/owners/certified-service/shared-assets/5-1-18/02-pdfs/GMC_Uniroyal_May_online_form.pdf
Allow: /content/dam/chevrolet/na/us/english/index/shopping-tools/certified-pre-owned/02-pdf/gmc1-12-02414checklist-fixed-v2-10-28-16.pdf
Disallow: /*buick
Disallow: /*cadillac
Disallow: /*fr/CA
Disallow: /*en/CA
Disallow: /*styleOne
Disallow: /*styleId
Disallow: /*q-sourcepath
Disallow: /*lnv.html
Disallow: /*Detail.html
Disallow: /*option
Disallow: /*zipcode
Disallow: /fnrr-ddcx
Disallow: /fnrr-ddcx/
Disallow: /bypass/
Disallow: /byo-vc/


User-Agent: AdIdxBot
Allow: /

User-Agent: gsa-crawler
Disallow: /content/dam/*

User-Agent: GMbot
Disallow: /navigation/*
Disallow: /NavigationPartials/*
Disallow: /content/dam/*
Disallow: /*?*


Sitemap: https://www.chevrolet.com/sitemap.xml
Sitemap: https://www.chevrolet.com/image-sitemap.xml
Sitemap: https://www.chevrolet.com/hreflang-sitemap.xml