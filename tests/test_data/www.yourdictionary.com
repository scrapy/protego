User-agent: *
Disallow: /slideshow_preview/*

User-agent: A6-Indexer
Disallow: /

User-agent: *
Sitemap: https://www.yourdictionary.com/sitemap/www.xml

Disallow: /vote/
Disallow: /addwordlistsource/
Disallow: /getrecent
Disallow: /business_profile/
Disallow: /ahd/test/
Disallow: /store/
Disallow: /includes/
Disallow: /member/
Disallow: /community/
Disallow: /members/
Disallow: /community/pg
Disallow: /community/act
Disallow: /community/exp
Disallow: /community/sys
Disallow: /community/.
Disallow: /community/eng
Disallow: /community/_
Disallow: /frontend_dev.php
Disallow: /index.php
Disallow: /article/Article
Disallow: /feedbackarticle/  
Disallow: /feedbackentry/  

User-agent: Yandex
Disallow: /search

User-agent: proximic
Disallow: /search

User-agent: Blekkobot
Disallow: /

User-agent:  Ezooms/1.0
Disallow: /search
