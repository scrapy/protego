# Bot rules:
# 1. A bot may not injure a human being or, through inaction, allow a human being to come to harm.
# 2. A bot must obey orders given it by human beings except where such orders would conflict with the First Law.
# 3. A bot must protect its own existence as long as such protection does not conflict with the First or Second Law.
# If you can read this then you should apply here https://www.bloomberg.com/careers/
User-agent: *
Disallow: /polska

User-agent: Mediapartners-Google
Disallow: /about/careers
Disallow: /about/careers/
Disallow: /offlinemessage/
Disallow: /apps/fbk
Disallow: /bb/newsarchive/
Disallow: /apps/news

User-agent: Spinn3r
Disallow: /podcasts/
Disallow: /feed/podcast/
Disallow: /bb/avfile/

User-agent: Googlebot-News
Disallow: /sponsor/
Disallow: /news/sponsors/*

Sitemap: https://www.bloomberg.com/sitemap.xml
Sitemap: https://www.bloomberg.com/feeds/bbiz/sitemap_index.xml
Sitemap: https://www.bloomberg.com/feeds/bpol/sitemap_index.xml
Sitemap: https://www.bloomberg.com/feeds/businessweek/sitemap_index.xml
Sitemap: https://www.bloomberg.com/feeds/technology/sitemap_index.xml
Sitemap: https://www.bloomberg.com/feeds/bbiz/sitemap_securities_index.xml
Sitemap: https://www.bloomberg.com/feeds/bbiz/sitemap_profiles_company_index.xml
Sitemap: https://www.bloomberg.com/billionaires/sitemap.xml
Sitemap: https://www.bloomberg.com/feeds/bbiz/sitemap_news.xml
Sitemap: https://www.bloomberg.com/feeds/dynamic/private-company-index.xml
Sitemap: https://www.bloomberg.com/feeds/dynamic/person-index.xml
Sitemap: https://www.bloomberg.com/feeds/curated/feeds/graphics_news.xml
Sitemap: https://www.bloomberg.com/feeds/curated/feeds/graphics_sitemap.xml
Sitemap: https://www.bloomberg.com/pursuits/property-listings/sitemap.xml
