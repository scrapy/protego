User-agent: *
Disallow: /schools/
NoIndex: /schools/
Disallow: /content/old-k12/
NoIndex: /content/old-k12/
Disallow: /participating-schools*/
NoIndex: /participating-schools*/
Disallow: /sitemap-video/
NoIndex: /sitemap-video/

User-agent: expo9
Disallow: /

Sitemap: https://www.k12.com/content/k12/en/sitemap.xml