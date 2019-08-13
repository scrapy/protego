# If you are regularly crawling WordPress.com sites, please use our firehose to receive real-time push updates instead.
# Please see https://developer.wordpress.com/docs/firehose/ for more details.

Sitemap: https://bossip.com/news-sitemap.xml

User-agent: *
Disallow: /?infinite-scroll-batch=*
Disallow: /?s=*
Disallow: /search/*
Disallow: /category/sales-demo/*
User-agent: Mediapartners-Google
Disallow: 

User-agent: *
Disallow: /wp-admin/
Allow: /wp-admin/admin-ajax.php
# Sitemap archive
Sitemap: https://bossip.com/sitemap.xml

Disallow: /wp-login.php
Disallow: /wp-signup.php
Disallow: /press-this.php
Disallow: /remote-login.php
Disallow: /activate/
Disallow: /cgi-bin/
Disallow: /mshots/v1/
Disallow: /next/
Disallow: /public.api/

# This file was generated on Wed, 20 Mar 2019 18:24:16 +0000
