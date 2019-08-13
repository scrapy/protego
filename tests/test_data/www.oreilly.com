User-agent: *

Disallow: /images/
Disallow: /graphics/
Disallow: /admin/
Disallow: /promos/
Disallow: /ddp/
Disallow: /dpp/
Disallow: /programming/free/files/
Disallow: /design/free/files/
Disallow: /iot/free/files/
Disallow: /data/free/files/
Disallow: /webops-perf/free/files/
Disallow: /web-platform/free/files/
Disallow: /cs/
Disallow: /test/

User-agent: 008
Disallow: /

#ITOPS-6809
Sitemap: https://www.oreilly.com/library/view/content-sitemaps/video-sitemap.xml
Sitemap: https://www.oreilly.com/library/view/content-sitemaps/book-sitemap.xml
