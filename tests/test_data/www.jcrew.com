# robots.txt 2016/05/16 jhunt-pmg $
#
# Site: J.Crew.com WWW
#
# This file is retrieved automatically by crawlers conforming to
# the Robots.txt standard. It defines what URLs should/shouldn't
# be indexed.
# See <URL:http://www.robotstxt.org/wc/exclusion.html#robotstxt>
#
# Format:
#       User-agent: <agent-string>
#       Disallow: <nothing> | <path>
# -----------------------------------------------------------------------------

User-agent: AdsBot-Google
Allow: /

User-agent: AdsBot-Google-Mobile
Allow: /

User-agent: *
Disallow: */AST/filterAsst/
Disallow: */account/
Disallow: */checkout/
Disallow: */checkout2/
Allow: */checkout2/shoppingbag.jsp$
Disallow: */help/include/inc_storelocator_right.jsp
Disallow: */index2.jsp
Allow: */sizecharts/main.jsp$
Disallow: */sizecharts/
Allow: */flatpages/social_res_april0.jsp$
Disallow: */flatpages/social_res_april0.jsp
Allow: */help/international_orders.jsp$
Allow: */help/international_orders.jsp?sidecar=true
Disallow: */help/international_orders.jsp
Allow: */intl/context_chooser.jsp$
Disallow: */intl/context_chooser.jsp
Allow: */wishlist$
Disallow: */wishlist

Disallow: /api/
Allow: */login$
Disallow: */login
Disallow: */register/
Disallow: */embed/
Disallow: */clienterror/
Disallow: */feature-page/
Disallow: */size-charts/
Disallow: */sizecharts-module/
Disallow: */web-tracking/
Disallow: */search/
Disallow: */search2/
Allow: /s7-img-facade/*
Allow: /ajax/*
Disallow: /*?*&*&*&*
Disallow: *bmUID*
Noindex: *PRDOVR*

Sitemap: https://www.jcrew.com/sitemap/sitemap-index.xml