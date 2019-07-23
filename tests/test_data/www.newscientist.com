User-agent: PiplBot
Disallow: /

User-agent: *
Crawl-delay: 10
Disallow: /cgi-bin/
Disallow: /wp-admin/
Disallow: /icons/
Disallow: /error/
Disallow: /data/design/
Disallow: /feed/
Disallow: /commenting/
Disallow: /activate-subscription/

Sitemap: https://www.newscientist.com/sitemap.xml