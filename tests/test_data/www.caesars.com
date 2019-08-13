# www.robotstxt.org/
# http://code.google.com/web/controlcrawlindex/
# /cet-global

User-agent: *

Disallow: /millionairemaker/millionaires.html
Disallow: /content/microsites/millionairemaker/millionaires
Disallow: /atlantic-city/atlantic-city-hotels.html
Disallow: /content/market/atlantic-city/atlantic-city-hotels.html

# One Domain
Disallow: /showboat-ac
Disallow: /global-living
# Disallow: /meetings
# Disallow: /reserve

# Disallow crawling of direct content snippet URLs
# Disallow: /content
Disallow: /total-rewards/*/sitedata

Sitemap: https://www.caesars.com/sitemap.xml