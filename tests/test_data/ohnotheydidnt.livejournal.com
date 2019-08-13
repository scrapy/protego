User-Agent: *
Disallow: /*.html*mode=reply
Disallow: /*.html*replyto
Disallow: /data/foaf/
Disallow: /tag/
Disallow: /friendstimes
Disallow: /d*
Disallow: /ratings/users

User-Agent: Mediapartners-Google*
Allow: /

User-Agent: Yandex
Allow: /
Disallow: /data/foaf/
Disallow: /ratings/users
Clean-param: nojs&tag&mode&thread
Host: https://ohnotheydidnt.livejournal.com
Crawl-delay: 10

User-Agent: GoogleBot
Allow: /
Disallow: /ratings/users
Disallow: /data/foaf/

User-Agent: spbot
Disallow: /

User-agent: AhrefsBot
Disallow: /

Sitemap: https://ohnotheydidnt.livejournal.com/sitemap.xml
