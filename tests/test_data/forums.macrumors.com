User-agent: Mediapartners-Google
Disallow:

User-agent: *
Disallow: /find-new/
Disallow: /account/
Disallow: /goto/
Disallow: /register/
Disallow: /posts/
Disallow: /login/
Disallow: /admin.php
Disallow: /ajax/
Disallow: /misc/
Disallow: /conversations/
Disallow: /help/
Disallow: /online/
Disallow: /members/
Disallow: */liked-posts
Disallow: */create-thread
Disallow: */reply
Disallow: */unread
Disallow: /tags/
Disallow: /deferred.php

Allow: /

Sitemap: https://forums.macrumors.com/sitemap.php
Sitemap: https://forums.macrumors.com/sitemap-threads.php
