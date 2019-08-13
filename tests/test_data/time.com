# If you are regularly crawling WordPress.com sites, please use our firehose to receive real-time push updates instead.
# Please see https://developer.wordpress.com/docs/firehose/ for more details.

Sitemap: https://time.com/news-sitemap.xml

User-agent: *
Disallow: /wp-admin/
Allow: /wp-admin/admin-ajax.php
# exclude urls of format time.com/page/7456/?search
User-agent: Googlebot
Disallow: /page/*/?search=
Disallow: /page/*/?a_aid=
Disallow: /page/*/?iq_id=
Disallow: /page/*/?hc_location=
Disallow: /*?ref=binfind.com
Disallow: /*?__rmid___get___page
Disallow: /page/*/?pcd=
Disallow: /feed
Disallow: ?search
Disallow: /uncategorized
Disallow: ?sa=
Disallow: ?EGOTECpage
Disallow: ?p=
Disallow: ?ref=
Disallow: ?pagespeed
Disallow: ?hc_location

# Sitemap archive
Sitemap: https://time.com/sitemap.xml

# Video Sitemap archive
Video Sitemap: https://time.com/video-sitemap.xml

Disallow: /wp-login.php
Disallow: /wp-signup.php
Disallow: /press-this.php
Disallow: /remote-login.php
Disallow: /activate/
Disallow: /cgi-bin/
Disallow: /mshots/v1/
Disallow: /next/
Disallow: /public.api/

# This file was generated on Thu, 13 Jun 2019 00:18:15 +0000
