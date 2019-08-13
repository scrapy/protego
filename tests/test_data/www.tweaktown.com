User-agent: *
Disallow: /admin
Disallow: /app
Disallow: /awards
Disallow: /cgi-bin
Disallow: /cms
Disallow: /cse
Disallow: /ebooks
Disallow: /feeds/index.html
Disallow: /jobs
Disallow: /gallery
Disallow: /legal
Disallow: /milestones
Disallow: /newadmin
Disallow: /poll
Disallow: /shopping
Disallow: /tag
Disallow: /tags
Disallow: /image.php
Disallow: /popImg.php
Disallow: /tt-embed-award
Disallow: */preview/
Disallow: /testing
Disallow: /sp

User-agent: Mediapartners-Google
Disallow:

User-agent: Mediapartners(Googlebot)
Disallow:

User-agent: AdsBot-Google
Disallow:

User-agent: Facebot
Disallow:

User-agent: facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)
Disallow:

User-agent: facebookexternalhit/1.1
Disallow:

User-agent: AdIdxBot
Disallow:

Sitemap: https://www.tweaktown.com/sitemap_index.xml
