User-agent: psbot
User-agent: productfinderbot
User-agent: Teoma
User-agent: e-SocietyRobot
User-agent: MSIECrawler
Disallow: /

User-agent: *
Disallow: /search/tracking/*
Disallow: /member
Disallow: /system
Disallow: /osp/
Allow: /osp/*/*/js/*.css
Disallow: /community

Disallow: /*.inc
Disallow: /*.php

Disallow: /hotel/
Noindex: /hotel/

Sitemap: https://www.trivago.com/xml-sitemap/indexed-index-en-US-97b3758997e5eb94559bbadc870b9949e8878c00.xml.gz
Sitemap: https://www.trivago.com/xml-sitemap/indexed-index-es-US-ed8bda255cc1bce59fe22e6509bc1e85ba6ceab8.xml.gz
