# robots_allow.txt for uk.reuters.com

User-agent: *
Disallow: /business/quotes/option
Disallow: /business/quotes/financialHighlights
Disallow: /search
Disallow: /beta
Disallow: /*idUKPTIP*
Disallow: /sponsored/previewcampaign
Disallow: /sponsored/previewarticle
Disallow: /commentary
Disallow: /news/archive/commentary

SITEMAP: https://uk.reuters.com/sitemap_index.xml
SITEMAP: https://uk.reuters.com/sitemap_video_index.xml
SITEMAP: https://uk.reuters.com/sitemap_market_index.xml

User-agent: Pipl
Disallow: /

User-Agent: omgilibot
Disallow: /
User-Agent: omgili
Disallow: /
User-agent: omgili/0.5 +https://omgili.com
Disallow: /
