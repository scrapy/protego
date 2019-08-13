# If you are regularly crawling WordPress.com sites, please use our firehose to receive real-time push updates instead.
# Please see https://developer.wordpress.com/docs/firehose/ for more details.

Sitemap: https://torontosun.com/news-sitemap.xml

User-agent: *
Disallow: /?s=
Disallow: /search
Disallow: /3081/
User-agent: TurnitinBot
Disallow: /?s=
Disallow: /search
Disallow: /3081/
Crawl-delay: 1
User-agent: Googlebot-News
Disallow: /category/sponsored/
Disallow: /sponsored/
Disallow: /sunshine-girl/
Disallow: /category/sunshine-girls/
User-agent: *
Disallow: /wp-admin/
Allow: /wp-admin/admin-ajax.php
# Sitemap archive
Sitemap: https://torontosun.com/sitemap.xml

Disallow: /wp-login.php
Disallow: /wp-signup.php
Disallow: /press-this.php
Disallow: /remote-login.php
Disallow: /activate/
Disallow: /cgi-bin/
Disallow: /mshots/v1/
Disallow: /next/
Disallow: /public.api/

# This file was generated on Mon, 01 Apr 2019 17:57:59 +0000
