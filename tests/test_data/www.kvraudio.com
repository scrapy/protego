# /robots.txt for http://www.kvraudio.com/

User-agent: *
Disallow: /mailman/
Disallow: /pipermail/
Disallow: /bnc.php
Disallow: /banks.php
Disallow: /forum/search.php
Disallow: /forum/viewonline.php
Disallow: /forum/memberlist.php
Disallow: /inc/a.php
Disallow: /z/
Disallow: /a/www/

User-agent: MJ12bot
Disallow: /

User-agent: Baiduspider
Disallow: /

User-agent: bingbot
Crawl-delay: 5