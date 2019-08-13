Sitemap: https://www.nydailynews.com/sitemap.xml
Sitemap: https://www.nydailynews.com/sitemaps/sitemap.xml
Sitemap: https://www.nydailynews.com/sitemap-story.xml 

# Googlebot
User-agent: Googlebot
Disallow: /autos/*/details/
Disallow: /dealers/*
Disallow: /directory
Disallow: /events/
Disallow: /new-york/events/
Disallow: /search-results
Disallow: /test/
Disallow: /newswires/*
Disallow: /archives/*
# MSN bot
User-agent: Bingbot
Disallow: /autos/*/details/
Disallow: /dealers/*
Disallow: /directory
Disallow: /events/
Disallow: /new-york/events/
Disallow: /search-results
Disallow: /test/
Disallow: /blogs/*
Disallow: /newswires/*
Disallow: /archives/*
# MSNbot media
User-agent: msnbot-media/1.1
Disallow: /autos/*/details/
Disallow: /dealers/*
Disallow: /directory
Disallow: /events/
Disallow: /new-york/events/
Disallow: /search-results
Disallow: /test/
Disallow: /blogs/*
Disallow: /newswires/*
Disallow: /archives/*
# Yahoo bot
User-agent: Slurp
Disallow: /autos/*/details/
Disallow: /dealers/*
Disallow: /directory
Disallow: /events/
Disallow: /new-york/events/
Disallow: /search-results
Disallow: /test/
Disallow: /blogs/*
Disallow: /newswires/*
Disallow: /archives/*
# Alexa IA Archiver bot
User-agent: ia_archiver
Disallow:
# MJ12bot
User-agent: MJ12bot
Disallow:

User-agent: Googlebot-News
Disallow: /archives
Disallow: /services
Disallow: /test/

User-agent: YahooSeeker/M1A1-R2D2
Disallow: /

User-agent: MSNBOT_Mobile
Disallow: /

User-agent: grapeshot
Disallow: /archives

User-agent: rogerbot
Disallow: /archives

User-agent: Twitterbot
Disallow: /autos/*/details/
Disallow: /dealers/*
Disallow: /directory
Disallow: /events/
Disallow: /new-york/events/
Disallow: /search-results
Disallow: /test/
Disallow: /blogs/*
Disallow: /newswires/*
Disallow: /archives/*

User-agent: *
Disallow: /autos/*/details/
Disallow: /dealers/*
Disallow: /directory
Disallow: /events/
Disallow: /new-york/events/
Disallow: /search-results
Disallow: /test/
Disallow: /blogs/*
Disallow: /newswires/*
Disallow: /archives/*

# Proximic bot
User-agent: proximic
Disallow: /autos/*/details/
Disallow: /dealers/*
Disallow: /directory
Disallow: /events/
Disallow: /new-york/events/
Disallow: /search-results
Disallow: /test/
Disallow: /blogs/*
Disallow: /newswires/*
Disallow: /archives/*