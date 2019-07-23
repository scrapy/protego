# Ameriprise 2018
# robots.txt for ameriprise.com
# Exclude robots.txt from search engines and internal search results
# Exclude Yandex bot

User-agent: Yandex
Disallow: /

User-agent: *
Disallow: /client-login/advisor-site-login.asp
Disallow: /collateral/
Disallow: /global/sitelets/demo/
Disallow: /global/sitelets/mwr-retirement/xml/app.xml
Disallow: /cm/groups/public/@amp/@ameriprise/documents/document/p-053028.pdf
Disallow: /ppa/
Disallow: /legal/advisor-texting-tc/
Disallow: /robots.txt

Sitemap: https://www.ameriprise.com/cm/groups/web/@amp/@ameriprise/documents/webassets/sitemap-ameriprise.xml
Sitemap: https://www.ameriprise.com/cm/groups/web/@amp/@aah/documents/webassets/sitemap-aah.xml