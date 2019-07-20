User-agent: *
Disallow: /community/account/
Disallow: /community/search/
Disallow: /community/goto/
Disallow: /community/attachments/
Disallow: /community/login/
Disallow: /community/register/
Disallow: /community/members/
Disallow: /community/find-new/
Disallow: /community/posts/
Disallow: /community/conversations/
Disallow: /community/file
Disallow: /community/online/
Disallow: /community/topics/*/reply

Disallow: /search/
Disallow: /search-x.php
Disallow: /products/search/
Disallow: /products/prices/
Disallow: /openxads
Disallow: /files/
Disallow: /gallery/
Disallow: /brokenlink

User-agent: Googlebot-news
Disallow: /community/*
Disallow: /drivers/
Disallow: /trivia/
Disallow: /downloads/

Sitemap: https://www.techspot.com/sitemap/sitemap.xml