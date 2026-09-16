
#                               ,:
#                             ,' |
#                            /   :
#                         --'   /
#                         / />/
#                         / <//_
#                      __/   /
#                      )'-. /
#                      ./  :
#                       /.' '
# No need to shop around. Board the rocketship today - great SEO careers to checkout at shopify.com/careers

# robots.txt file for www.shopify.com
User-agent: GoogleDocs
Disallow: /

User-agent: AdIdxBot
Allow: */ppc/*
Allow: *utm_medium=cpc*

User-agent: Pinterestbot
Allow: */ppc/*
Allow: *utm_medium=cpc*

User-agent: AdsBot-Google-Mobile
Allow: */ppc/*
Allow: *utm_medium=cpc*

User-agent: AdsBot-Google
Allow: */ppc/*
Allow: *utm_medium=cpc*

User-agent: *
Disallow: *.data$
Disallow: */account
Disallow: */auth/callback
Disallow: */authenticate
Disallow: */authentication
Disallow: */editor$
Disallow: */finalize$
Disallow: */loading$
Disallow: */onboarding$
Disallow: */ppc/*
Disallow: */result$
Disallow: */services/sa-appointments/login
Disallow: */services/sa-appointments/redirect
Disallow: */stock-photos/*?*page=*?*page=*
Disallow: */stock-photos/*?link_search=
Disallow: */stock-photos/*?q=
Disallow: */stock-photos/@*
Disallow: */stock-photos/admin
Disallow: */stock-photos/photos/search$
Disallow: */stock-photos/photos/search?
Disallow: */store/account
Disallow: */store/admin
Disallow: */store/cart
Disallow: */store/carts
Disallow: */store/checkout
Disallow: */store/checkouts/
Disallow: */store/orders
Disallow: */tools/*/show*
Disallow: *?flags=*
Disallow: *country=*
Disallow: *itcat=*
Disallow: *itterm=*
Disallow: *lang=*
Disallow: *link_search=*
Disallow: *page=*
Disallow: *prev_msid=*
Disallow: *utm_medium=cpc*
Disallow: /*/*?*shpxid=*
Disallow: /*/*?services*
Disallow: /*/*digital_wallets/dialog
Disallow: /*/admin/
Disallow: /*/apple-app-site-association
Disallow: /*/blog-article-remove-faq-utms-*.js
Disallow: /*/blog.atom
Disallow: /*/blog/search$
Disallow: /*/blog/search?
Disallow: /*/blogs/blog.atom
Disallow: /*/blogs/technology.atom
Disallow: /*/blogsearch$
Disallow: /*/cannabis
Disallow: /*/cdn-cgi/challenge-platform*
Disallow: /*/email-validation
Disallow: /*/enterprise/blog/search$
Disallow: /*/enterprise/blog/search?
Disallow: /*/growth-tools-assets
Disallow: /*/landing/
Disallow: /*/retail/search$
Disallow: /*/retail/search?
Disallow: /*/step/
Disallow: /*/submit
Disallow: /*/submitted
Disallow: /*/technology.atom
Disallow: /*/technology/tagged/*page*
Disallow: /*/tools/business-name-generator/searchbutton*
Disallow: /*/tools/business-name-generator/searchpage*
Disallow: /*/tools/business-name-generator/searchutf8*
Disallow: /*/ventureone
Disallow: /*CampaignId*
Disallow: /*hashid=%subscriber_hash%
Disallow: /*hubs_content*
Disallow: /.s/assets/shopifycloud/collabs-community-widget/widget.js
Disallow: /.well-known/traffic-advice
Disallow: /500
Disallow: /__dux
Disallow: /__manifest
Disallow: /__pb/ce
Disallow: /__pb/mm
Disallow: /__pb/rr
Disallow: /authenticate
Disallow: /blog-article-remove-faq-utms-*.js
Disallow: /blog/search$
Disallow: /blog/search?
Disallow: /blogs/technology.atom
Disallow: /blogsearch
Disallow: /cannabis
Disallow: /careers/portal/*
Disallow: /careers/search?*
Disallow: /cdn-cgi/challenge-platform*
Disallow: /email-validation
Disallow: /enterprise/blog/search$
Disallow: /enterprise/blog/search?
Disallow: /meta.json
Disallow: /oauth
Disallow: /perf/
Disallow: /retail/search$
Disallow: /retail/search?

# Sitemap list for www.shopify.com
Sitemap: https://www.shopify.com/sitemaps_list.xml

