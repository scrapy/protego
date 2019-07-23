# Allow GSA crawler
User-agent: gsa-crawler
Crawl-delay: 1
Disallow: /alumni
Disallow: /*/no_search/
Disallow: */_jcr_content/
Disallow: *.js
Disallow: *.modal.*
Disallow: *.print.*
Disallow: *.filter.*

# Allow Google Bot
User-agent: Googlebot
Crawl-delay: 10
Disallow: /*/no_search/
Disallow: */_jcr_content/
Disallow: *.js
Disallow: *.modal.*
Disallow: *.print.*
Disallow: *.filter.*

# Allow Baidu Bot
User-agent: Baiduspider
Crawl-delay: 10
Disallow: /*/no_search/
Disallow: */_jcr_content/
Disallow: *.js
Disallow: *.modal.*
Disallow: *.print.*
Disallow: *.filter.*

# Allow Bing Bot
User-agent: Bingbot
Crawl-delay: 10
Disallow: /*/no_search/
Disallow: */_jcr_content/
Disallow: *.js
Disallow: *.modal.*
Disallow: *.print.*
Disallow: *.filter.*

# Disallow MegaIndex
User-agent: megaindex
Crawl-delay: 10
Disallow: /

# Disallow all crawling by default
User-agent: *
Crawl-delay: 10
Disallow: /