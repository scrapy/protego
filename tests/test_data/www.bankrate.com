# directed to all spiders
User-agent: *  
Disallow: /system/swf/
Disallow: /acc_random*
Disallow: /ads/
Disallow: /affiliates/
Disallow: /applets/
Disallow: /budget/
Disallow: /calc-pop-up/
Disallow: /cgi-bin/
Disallow: /doubleclick/
Disallow: /hlink_redirects/
Disallow: /include/
Disallow: /java/
Disallow: /javacalcs/
Disallow: /jsfeeds/
Disallow: /partners/
Disallow: /sitespeed/
Disallow: /funnel/checking-account/
Disallow: /funnel/checking-savings/
Disallow: /funnel/college-finance/
Disallow: /*/ybir/
Disallow: /apps/sdk/
Disallow: /widgets/
Disallow: /rtrs/
Disallow: /pdfs/mortgage-guide/
Disallow: /rss_trk/
Disallow: /IndustryBrains/
Disallow: /nltrack/
Disallow: /page-analytics/
Disallow: /images/
Allow: /landing/cd-rates-d/
Allow: /landing/cd-rates-f/
Allow: /landing/cd-rates-g/
Disallow: /landing/
Disallow: /search/
Disallow: /credit-card-offers/transfer-page/
Disallow: /amp/
Disallow: /404.aspx
Disallow: /customerror.aspx
Disallow: /zeta/
Noindex: /credit-cards/reviews/*/offer/
Disallow: /credit-cards/reviews/*/offer/

Allow: *.js
Allow: *.css
 
User-agent: Mediapartners-Google
Disallow:

User-agent: Googlebot-Image
Disallow:

Sitemap: https://www.bankrate.com/sitemap/dynamic-sitemap-index.xml
Sitemap: https://www.bankrate.com/sitemap/sitemap-index.xml
