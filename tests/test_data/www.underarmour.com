# Whitelist
User-agent: AdsBot-Google
User-agent: AdsBot-Google-Mobile
User-agent: AdsBot-Google-Mobile-Android
Allow: /*/land/

User-agent: *

# swf files
Disallow: /*.swf$
Disallow: /*.swf?
Disallow: /*.swf/

# all api calls
Disallow: /*/api$
Disallow: /*/api?

# no-index pages
Disallow: /*/cart?
Disallow: /*/cart$

Disallow: /*/checkout?
Disallow: /*/checkout$

Disallow: /*/land/

Disallow: /*/login?
Disallow: /*/login/
Disallow: /*/login$

Disallow: /*/my-account?
Disallow: /*/my-account/
Disallow: /*/my-account$

Disallow: /*/ni?
Disallow: /*/ni/
Disallow: /*/ni$

Disallow: /*/order-receipt?
Disallow: /*/order-receipt/
Disallow: /*/order-receipt$

Disallow: /*/promo?
Disallow: /*/promo/
Disallow: /*/promo$

Disallow: /*/search?
Disallow: /*/search/
Disallow: /*/search$

# grid
Disallow: /*/g*?*encodedFacets=

# ArmourBox PDP
Disallow: /*/armourbox-subscription/pidARMOURBOX

# ArmourBox Onboarding
Disallow: /*/armourbox/onboarding

# Healthcheck
Disallow: /up

# Baidu Search Engine
User-agent: Baiduspider
Disallow: /

# site map
Sitemap: https://www.underarmour.com/cdn-sitemaps/sitemap_en-us.xml
Sitemap: https://www.underarmour.com/cdn-sitemaps/sitemap_en-ca.xml
Sitemap: https://www.underarmour.com/cdn-sitemaps/international_sitemap.xml
