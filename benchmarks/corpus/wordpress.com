# If you are regularly crawling WordPress.com sites, please use our firehose to receive real-time push updates instead.
# Please see https://developer.wordpress.com/docs/firehose/ for more details.

Sitemap: https://wordpress.com/sitemap.xml
Sitemap: https://wordpress.com/news-sitemap.xml

Sitemap: https://wordpress.com/go/sitemap.xml
Sitemap: https://wordpress.com/blog/sitemap.xml
Sitemap: https://wordpress.com/support/sitemap.xml

User-agent: *
Disallow: /wp-admin/
Allow: /wp-admin/admin-ajax.php
Disallow: /typo/?subdomain=
Disallow: /read/
Disallow: /*/read/
Allow: /forums/topic-tag/reader/
Allow: /*/forums/topic-tag/reader/
Allow: /support/reader/
Allow: /*/support/reader/
Disallow: /reader/
Disallow: /*/reader/
Allow: /log-in/
Allow: /log-in$
Disallow: /log-in?
Disallow: /abuse/?*
Disallow: /abuse?*
Disallow: /plugins/?s=
Disallow: /*/plugins/?s=
Disallow: /*?aff=
Disallow: /*&aff=
Disallow: /*?affiliate=
Disallow: /*&affiliate=
Disallow: /*?cid=
Disallow: /*&cid=
Disallow: /*?irclickid=
Disallow: /*&irclickid=
Disallow: /*/?like_comment=
Disallow: /*?retry=
Disallow: /*?sid=
Disallow: /*?action=
Disallow: /wp-login.php
Disallow: /wp-signup.php
Disallow: /press-this.php
Disallow: /remote-login.php
Disallow: /activate/
Disallow: /cgi-bin/
Disallow: /mshots/v1/
Disallow: /next/
Disallow: /public.api/

# This file was generated on Wed, 16 Sep 2026 09:20:52 +0000
