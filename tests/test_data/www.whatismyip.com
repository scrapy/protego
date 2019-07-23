User-agent: *
Disallow: /wp-admin/
Disallow: /author/
Disallow: /?s=*

User-Agent: Googlebot
Allow: /*.js
Allow: /*.css

User-agent: coccoc
Crawl-delay: 1