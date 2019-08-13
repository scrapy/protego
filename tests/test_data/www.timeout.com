# robots.txt file for Time Out .com
# updated 12th Mar 2019

User-agent: *
Disallow: /search*
Disallow: /*/search*
Disallow: /*/search/
Disallow: /*/search
Disallow: /*/*/search*
Disallow: /*/*/search/
Disallow: /*/*/search
Disallow: /search-listings?*
Disallow: /*/*.php
Disallow: /*/*/bookings

Sitemap: https://www.timeout.com/sitemap.xml.gz
Sitemap: https://www.timeout.com/bangkok/news_sitemap.xml
Sitemap: https://www.timeout.com/bangkok/th/news_sitemap.xml
Sitemap: https://www.timeout.com/chicago/news_sitemap.xml
Sitemap: https://www.timeout.com/croatia/news_sitemap.xml
Sitemap: https://www.timeout.com/hong-kong/news_sitemap.xml
Sitemap: https://www.timeout.com/israel/news_sitemap.xml
Sitemap: https://www.timeout.com/kuala-lumpur/news_sitemap.xml
Sitemap: https://www.timeout.com/london/news_sitemap.xml
Sitemap: https://www.timeout.com/los-angeles/news_sitemap.xml
Sitemap: https://www.timeout.com/melbourne/news_sitemap.xml
Sitemap: https://www.timeout.com/miami/news_sitemap.xml
Sitemap: https://www.timeout.com/newyork/news_sitemap.xml
Sitemap: https://www.timeout.com/new-york-kids/news_sitemap.xml
Sitemap: https://www.timeout.com/san-francisco/news_sitemap.xml
Sitemap: https://www.timeout.com/singapore/news_sitemap.xml
Sitemap: https://www.timeout.com/sri-lanka/news_sitemap.xml
Sitemap: https://www.timeout.com/sydney/news_sitemap.xml
Sitemap: https://www.timeout.com/tokyo/news_sitemap.xml
Sitemap: https://www.timeout.com/usa/news_sitemap.xml

User-agent: 80bot
Disallow: /

User-agent: BecomeBot
Crawl-delay: 15

User-agent: genieBot
Disallow: /

User-agent: MJ12bot
Disallow: /

User-agent: MLBot
Disallow: /

User-agent: Nutch
Disallow: /

User-agent: OmniExplorer_Bot
Disallow: /

User-agent: spock
Disallow: /

User-agent: TurnitinBot
Crawl-delay: 15
