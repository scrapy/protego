User-agent: *
Disallow: /?type=commentReceipt
Disallow: /cgi-bin/
Disallow: /nic/
Disallow: /search/*
Disallow: /newsletter/
Disallow: /config/*
Disallow: /*?date=*
Disallow: /todays-paper/*.ece*
Allow: /?service=googlenews
Allow: /?service=newssitemap

Sitemap: https://www.thehindubusinessline.com/sitemap/googlenews.xml
Sitemap: https://www.thehindubusinessline.com/sitemap/update.xml
Sitemap: https://www.thehindubusinessline.com/sitemap/archive.xml
