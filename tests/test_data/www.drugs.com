User-agent: Mediapartners-Google
Disallow:

User-agent: Twitterbot
Disallow:

User-agent: *
Disallow: /account/
Disallow: /answers/members/*/*/
Disallow: /api/
Disallow: /bookmark/
Disallow: /drug-interactions-all/
Disallow: /interactions-list-drugs.php
Disallow: /js/dw.php
Disallow: /member-comments.php
Disallow: /mn/
Disallow: /search.php
Disallow: /search-wildcard-phonetic.php
Disallow: /survey/
Disallow: /uk/pdf/

User-agent: Bingbot
Disallow: /account/
Disallow: /answers/members/*/*/
Disallow: /api/
Disallow: /bookmark/
Disallow: /interactions-list-drugs.php
Disallow: /js/dw.php
Disallow: /members_comments_add/
Disallow: /member-comments.php
Disallow: /mn/
Disallow: /search.php
Disallow: /search-wildcard-phonetic.php
Disallow: /survey/
Disallow: /drug-interactions/
Disallow: /uk/pdf/

User-agent: MJ12bot
Allow: /

User-agent: crawler4j
Disallow: /

User-agent: Ezooms
Disallow: /

User-agent: Offline Explorer
Disallow: /

User-agent: OOZBOT/SETOOZBOT/oozbot/setoozbot
Disallow: /

User-agent: yacybot
Disallow: /

Sitemap: https://www.drugs.com/sitemap_index.xml.gz
