User-agent: *
Disallow: /charts
Disallow: /include
Disallow: /request-handler/
Disallow: /core/request-handler/
Disallow: /comment/request-handler/
Disallow: /user/my-page/add-article/item-id/
Disallow: /user/process-api/
Disallow: /common/adclicks.php
Disallow: /common/adclicksTag.php
Disallow: /6516239/
Disallow: /content/
Disallow: /*cache-control/
Disallow: /live-blog/request-handler/
Disallow: /live-market/request-handler/
Disallow: /comment/manager/
Disallow: /poll/manager/
Allow: /content/*.pdf
Allow: /include/_mod/site/images/rss_logo.png
Sitemap: https://www.business-standard.com/sitemap.xml
Sitemap: https://www.business-standard.com/sitemap/sitemap-index.xml
Sitemap: https://www.business-standard.com/sitemap/google-news-sitemap.xml
Sitemap: https://www.business-standard.com/sitemap/latest-news-sitemap.xml
Sitemap: https://www.business-standard.com/sitemap-main/article-sitemap.xml

User-agent: Googlebot-News
Disallow: /stocks/corporate-announcements/

