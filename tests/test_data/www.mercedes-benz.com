User-agent: *

Disallow: */wp-admin/
Disallow: */wp-includes/
Disallow: */ressort/mercedes-benz/*
Disallow: *.pdf$
Disallow: */print/
Disallow: */voucher/
Disallow: */booking/
Disallow: */ressort/
Disallow: */tag/
Disallow: */applicant-form/
Disallow: */applicant-form/*
Disallow: /growup/*/core/
Disallow: /growup/*/profiles/
Disallow: /growup/*/web.config
Disallow: /growup/*/admin/
Disallow: /growup/*/filter/tips/
Disallow: /growup/*/node/add/
Disallow: /growup/*/user/
Disallow: /growup/*/index.php/admin/
Disallow: /growup/*/index.php/node/add/
Disallow: /growup/*/index.php/user/
Disallow: */ats-luxus/*
Disallow: */news-lab1886/*

Host: www.mercedes-benz.com

Sitemap: https://www.mercedes-benz.com/content/com/de.sitemap.xml
Sitemap: https://www.mercedes-benz.com/content/com/en.sitemap.xml
