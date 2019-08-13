User-Agent: MJ12bot
Disallow:

User-agent: Googlebot
Allow: /access.phtml
Disallow: /connections/
Disallow: /forgot_enter.phtml
Disallow: */billing/allopass_unsubscribe.phtml
Disallow: */page-
Disallow: /email*
Disallow: /*/email*

User-agent: Mediapartners-Google
Disallow: 

User-agent: AdsBot-Google
Disallow:

User-agent: AdsBot-Google-Mobile
Disallow:

User-agent: msnbot
Allow: /access.phtml
Disallow: /connections/
Disallow: /forgot_enter.phtml
Disallow: */billing/allopass_unsubscribe.phtml
Disallow: /email*
Disallow: /*/email*

User-agent: Yandex
Disallow: /access.phtml
Disallow: /connections/
Disallow: /forgot_enter.phtml
Disallow: */billing/allopass_unsubscribe.phtml
Disallow: /email*
Disallow: /*/email*
Host: https://badoo.com

User-agent: *
Disallow: /access.phtml
Disallow: /connections/
Disallow: /forgot_enter.phtml
Disallow: */billing/allopass_unsubscribe.phtml
Disallow: /email*
Disallow: /*/email*

Sitemap: https://badoo.com/sitemap.all.xml
Sitemap: https://badoo.com/sitemap.regions-index.xml
Sitemap: https://badoo.com/sitemap.static-index.xml

Sitemap: https://badoo.com/team/sitemap.general.xml
