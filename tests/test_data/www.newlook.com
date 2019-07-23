User-agent: *

Disallow: /?_DARGS=/global/shared/emailCampaign.jsp
Disallow: /secure/*

# Pop up windows and folder
Disallow: /furniture/sizeguides/popups/*

# Quick buy details linked from product pages
Disallow: /cart/quickBuyDetail*

# No results internal search pages
Disallow: /shop/no-results*

# Template URLS
Disallow: /templates/*

# Old search function
Disallow: /search/search*

# Application folder
Disallow: /application/

Disallow: /*_escaped_fragment_

# Hybris 1.0
Disallow: /search/
Disallow: /search*
Disallow: /fr/search/
Disallow: /row/search/
Disallow: /de/search/
Disallow: /uk/search/
Disallow: /*?*text=
Allow: *LocationContext=
Disallow: /my-account/
Disallow: /login/
Disallow: /login*
Disallow: /checkout/
Disallow: /cart*
Disallow: /cart/

Sitemap: https://www.newlook.com/siteindex.xml