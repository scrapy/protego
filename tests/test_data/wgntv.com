# If you are regularly crawling WordPress.com sites, please use our firehose to receive real-time push updates instead.
# Please see https://developer.wordpress.com/docs/firehose/ for more details.

Sitemap: https://wgntv.com/news-sitemap.xml

User-agent: Mediapartners-Google
Disallow: 


User-agent: *
Disallow: /?s=
Disallow: /report-a-typo
Disallow: /search/

User-agent: *
Disallow: /wp-admin/
Allow: /wp-admin/admin-ajax.php
# Sitemap archive
Sitemap: https://wgntv.com/sitemap.xml

Disallow: /wp-login.php
Disallow: /wp-signup.php
Disallow: /press-this.php
Disallow: /remote-login.php
Disallow: /activate/
Disallow: /cgi-bin/
Disallow: /mshots/v1/
Disallow: /next/
Disallow: /public.api/

# This file was generated on Wed, 02 Jan 2019 02:09:39 +0000
