User-agent: *
User-agent: Mozilla/5.0 (compatible; Google-Podcast)
Disallow: /settings
Disallow: /logout
Disallow: /bePatronDone
Disallow: /file
Disallow: /patronNext
Disallow: /userNext
Disallow: /bePatron
Disallow: /REST/auth/CSRFTicket
Disallow: /user.php
Disallow: /_generated
Disallow: /api/
Disallow: /rss/
Disallow: /_private/admin-tools/
Sitemap: http://www.patreon.com/sitemap.xml
