# If you are regularly crawling WordPress.com sites, please use our firehose to receive real-time push updates instead.
# Please see https://developer.wordpress.com/docs/firehose/ for more details.

User-agent: *
Disallow: /wp-admin/
Allow: /wp-admin/admin-ajax.php
Sitemap: https://bgr.com/news-sitemap.xml
Sitemap: https://bgr.com/sitemap_index.xml
Disallow: /wp-login.php
Disallow: /wp-signup.php
Disallow: /press-this.php
Disallow: /remote-login.php
Disallow: /activate/
Disallow: /cgi-bin/
Disallow: /mshots/v1/
Disallow: /next/
Disallow: /public.api/

# This file was generated on Wed, 02 Jan 2019 02:08:32 +0000
User-agent: *
Disallow: /?s=
Disallow: /*/?s=
Disallow: /search/
Disallow: /search?
Disallow: *?v02
Disallow: *?replytocom
User-agent: *
Disallow: /*preview=true
Disallow: /*theme_preview=true
Disallow: /2018/08/29/acer-chromebook-514-price-specs-release-date/ 
Disallow: /search/ 
