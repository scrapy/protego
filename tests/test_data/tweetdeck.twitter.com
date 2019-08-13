#Format from twitter.com/robots.txt
#Google Search Engine Robot
User-agent: Googlebot
# Crawl-delay: 10 -- Googlebot ignores crawl-delay ftl
Disallow: /api/

#Yahoo! Search Engine Robot
User-Agent: Slurp
Crawl-delay: 1
Disallow: /api/

#Yandex Search Engine Robot
User-agent: Yandex
Disallow: /api/

#Microsoft Search Engine Robot
User-Agent: msnbot
Disallow: /api/

# Every bot that might possibly read and respect this file.
User-agent: *
Disallow: /api/
