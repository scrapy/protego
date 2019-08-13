User-agent: *
Disallow: /SessionHandler.aspx
Disallow: /TealeafTarget.aspx
Disallow: /sessionhandler.aspx
Disallow: /tealeaftarget.aspx
Disallow: /sessionkeepalive.aspx
Disallow: */woyf/?*Cookie=
Disallow: */pop-ups/
Disallow: */certificate-request/*/certificate-request/*
Disallow: */destinations/city.aspx*
Disallow: */experience/login/
Disallow: */ekgroup/id*
Disallow: */woyf/?*arrAp=*

Crawl-delay: 3
Host: www.emirates.com
Sitemap: https://www.emirates.com/sitemapindex.xml