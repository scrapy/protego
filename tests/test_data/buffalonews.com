User-agent: *
Crawl-delay: 10
Disallow: /wp-admin/
Disallow: /limit-reached/
Disallow: /not-found/
Allow: /wp-admin/admin-ajax.php
Disallow: /adblocker/
Disallow:  /adblocker-magazine/
Disallow: /missing-script/
Disallow:  /missing-script-magazine/
Disallow: /subscribe-bills/

Sitemap: https://buffalonews.com/sitemap/index.xml
