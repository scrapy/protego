# robots.txt
User-agent: *
Disallow: /Article.aspx
Disallow: /offer/splash.aspx?id=subOffers
Disallow: /offer/splash.aspx?id=subGifts
Disallow: /fadiscount
Disallow: /StockNews
Disallow: /Search
Disallow: /SiteAds
Disallow: /et/dfs
Disallow: /photopopup.aspx*
Disallow: /articleredirect.aspx*

User-agent: BLP_bbot
Disallow: /
User-agent: BLP_bbot/0.1
Disallow: /

Sitemap: https://www.investors.com/sitemap.xml
