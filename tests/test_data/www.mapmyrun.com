User-agent: *
Sitemap: /sitemap.xml

Disallow: /admin/
Disallow: /routes/view/
Disallow: /routes/my_routes/
Disallow: /workout/
Disallow: /workouts/


User-agent: Slurp
Crawl-delay: 100

User-agent: bing
Crawl-delay: 1

