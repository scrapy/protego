# www.robotstxt.org/
# www.google.com/support/webmasters/bin/answer.py?hl=en&answer=156449

User-agent: Slurp
Crawl-delay: 10

User-agent: TwitterBot
Crawl-delay: 10

User-agent: Baiduspider
Allow: /search/page/2
Allow: /search/page/3
Disallow: /search/page/

User-agent: Pinterest
Crawl-delay: 1

User-agent: msnbot
Crawl-delay: 1

User-agent: grapeshot
Disallow:

User-agent: *
Disallow: /app.php
Disallow: /pageviews.php
Disallow: /wp-admin
Disallow: /administration
Disallow: /forum/
Disallow: /mailto
Disallow: /next-posts
Disallow: /zh/next-posts
Disallow: /jp/next-posts
Disallow: /embed
Allow: /
