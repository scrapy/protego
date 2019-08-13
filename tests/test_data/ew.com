# If you are regularly crawling WordPress.com sites, please use our firehose to receive real-time push updates instead.
# Please see https://developer.wordpress.com/docs/firehose/ for more details.

# sitemaps
Sitemap: https://ew.com/news-sitemap.xml
Sitemap: https://ew.com/sitemap.xml

User-agent: *
Disallow: /?s=*
Disallow: /search*
Disallow: /wp-admin/
Allow: /wp-admin/admin-ajax.php
Disallow: /activate/ # har har
Disallow: /cgi-bin/ # MT refugees
Disallow: /mshots/v1/
Disallow: /public.api/
Disallow: /wp-login.php
Disallow: /shows/
Disallow: /next/

User-agent: IRLbot
Crawl-delay: 3600
Disallow: /?s=*
Disallow: /search*
Disallow: /wp-admin/
Allow: /wp-admin/admin-ajax.php
Disallow: /activate/ # har har
Disallow: /cgi-bin/ # MT refugees
Disallow: /mshots/v1/
Disallow: /public.api/
Disallow: /wp-login.php
Disallow: /shows/
Disallow: /next/

User-agent: Googlebot
Disallow: /?s=*
Disallow: /search*
Disallow: /wp-admin/
Allow: /wp-admin/admin-ajax.php
Disallow: /activate/ # har har
Disallow: /cgi-bin/ # MT refugees
Disallow: /mshots/v1/
Disallow: /public.api/
Disallow: /wp-login.php
Disallow: /shows/
Disallow: /next/
Disallow: /syndication/
