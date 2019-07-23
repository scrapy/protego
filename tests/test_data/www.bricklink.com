User-agent: bingbot
Crawl-delay: 1
Allow: /
Disallow: /private/
Disallow: /BL_LOG/
Disallow: /browseList.asp
Disallow: /message.asp
Disallow: /catalogPG.asp

User-agent: Baiduspider
Allow: /index.asp
Disallow: /

User-agent: *
Allow: /
Disallow: /private/
Disallow: /BL_LOG/
Disallow: /browseList.asp
Disallow: /message.asp
Disallow: /catalogPG.asp
