User-agent: *
Disallow: /cache/
Disallow: /demo/
Disallow: /error/
Disallow: /maintenance/
Disallow: /metriweb/
Disallow: /musique/
Disallow: /public/
Disallow: /stats/
Disallow: /templates/
Disallow: /upload/
Disallow: /wap/
Disallow: /sm/
Disallow: /search/username/
Disallow: /search/articles/
Disallow: /search/inblog/
Disallow: /search/artists/
Disallow: /search/songs/
Disallow: /search/photos/
Disallow: /search/videos/
Disallow: /search/web/
Disallow: /recherche/
Disallow: /common/captcha.php

User-agent: Twitterbot
Allow: /img/

User-agent: 007ac9
User-agent: AhrefsBot
User-agent: LinqiaBot
User-agent: LinqiaRSSBot
User-agent: SMTBot
User-agent: HaosouSpider
Disallow: 
