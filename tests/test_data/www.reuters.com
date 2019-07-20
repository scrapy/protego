# robots_allow.txt for www.reuters.com
# Disallow: /*/key-developments/article/*

User-agent: *
Disallow: /finance/stocks/option
Disallow: /finance/stocks/financialHighlights
Disallow: /search
Disallow: /beta
Disallow: /designtech*
Disallow: /featured-optimize
Disallow: /energy-test
Disallow: /article/beta
Disallow: /sponsored/previewcampaign
Disallow: /sponsored/previewarticle
Disallow: /test/
Disallow: /commentary
Disallow: /news/archive/commentary

SITEMAP: https://www.reuters.com/sitemap_index.xml
SITEMAP: https://www.reuters.com/sitemap_news_index.xml
SITEMAP: https://www.reuters.com/sitemap_video_index.xml
SITEMAP: https://www.reuters.com/sitemap_market_index.xml
SITEMAP: https://www.reuters.com/brandfeature/sitemap

User-agent: Pipl
Disallow: /

User-Agent: omgilibot
Disallow: /
User-Agent: omgili
Disallow: /
User-agent: omgili/0.5 +https://omgili.com
Disallow: /
