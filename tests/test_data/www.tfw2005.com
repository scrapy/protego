User-agent: *
Disallow: /boards/find-new/
Disallow: /boards/account/
Disallow: /boards/login/
Disallow: /boards/goto/
Disallow: /boards/admin.php
Disallow: /boards/conversations/

User-agent: Slurp
Crawl-delay: 5

Sitemap: http://www.tfw2005.com/boards/sitemap.php