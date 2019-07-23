User-agent: Mediapartners-Google
Disallow:
Disallow: /driver/*/bio/
Disallow: /v/*
Disallow: /lt/*
Disallow: /dashboard/*

User-agent: Yandex
Allow: /rss/yandex-zen/news/
Disallow: *?q=
Disallow: */videos/add-your-video/
Disallow: */photos/user-uploads-albums/
Disallow: */?edition=
Disallow: /srv.php
Disallow: /index.php
Disallow: /disqus
Allow: /f1/news/?q=giorgio%20piola
Host: www.motorsport.com
Sitemap: https://www.motorsport.com/sitemap.xml
Disallow: /driver/*/bio/
Disallow: /v/*
Disallow: /lt/*
Disallow: /dashboard/*

User-agent: Googlebot
Disallow: *?q=
Disallow: */videos/add-your-video/
Disallow: */photos/user-uploads-albums/
Disallow: */?edition=
Disallow: *?_openstat=
Disallow: /thewall2
Disallow: /srv.php
Disallow: /index.php
Disallow: /disqus
Allow: /f1/news/?q=giorgio%20piola
Allow: /design/*
Disallow: /driver/*/bio/
Sitemap: https://www.motorsport.com/sitemap.xml
Disallow: /v/*
Disallow: /lt/*
Disallow: /dashboard/*

User-agent: *
Disallow: /videos/embed/
Disallow: /driver/*/bio/
Disallow: /v/*
Disallow: /lt/*
Disallow: /dashboard/*