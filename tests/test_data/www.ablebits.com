Sitemap: https://www.ablebits.com/sitemap.xml

User-agent: *
Crawl-delay: 1
Request-rate: 1/1
Disallow: *?replytocom

Disallow: /adx-google-addins/
Disallow: /test/
Disallow: /blog-test/
Disallow: /files/
Disallow: /newsletters/
Disallow: /go.php

Disallow: /purchase/resellers.php
Disallow: /purchase/resellers-2019.php
Disallow: /purchase/resellers-2020.php

Disallow: /forums/*app=core*
Disallow: /forums/*app=forums*
Disallow: /forums/*sort_key=*
Disallow: /forums/*entry*
Disallow: /forums/user/
Disallow: /forums/tags/
Disallow: /office-addins-blog/wp-json/
Disallow: /docs/wp-json/

Disallow: /uninstall.php
Disallow: /apps-for-office/
Disallow: /office-apps/
Disallow: /_welcome-tour/
Disallow: /_lp-test/