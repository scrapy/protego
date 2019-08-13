User-agent: *
Disallow: /*/myaccount/
Disallow: /ubertags/
Disallow: /password
Disallow: /trackVisit.trace
Disallow: /verify-url
Disallow: /us-marketplace/ 
Disallow: /us-recruitment/ 
Disallow: /us-senior-care/ 
Disallow: /us-subscription/ 
Disallow: /us-workplace-solutions/
Disallow: /LitlePayPage
Disallow: /visitor/popUpPhoto.do
Disallow: /c/records/
Disallow: /visitor/
Disallow: /api/messages/*
Disallow: *qs=1*

User-agent: SearchmetricsBot
Crawl-delay: 3
Disallow: /my-account/
Disallow: /ubertags/
Disallow: /login
Disallow: /password

User-agent: AdsBot-Google
Crawl-delay: 10
Allow: *qs=1*

User-agent: Gaisbot
Disallow: /

User-agent: ShopWiki
Disallow: /

User-agent: 008
Disallow: /

Sitemap: https://www.care.com/alpha-omega-jobs.xml
Sitemap: https://www.care.com/alpha-omega.xml