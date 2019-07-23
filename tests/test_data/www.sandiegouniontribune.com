User-agent: *
Disallow: /search
Disallow: /thirdpartyservice
Disallow: /*/thirdpartyservice
Disallow: /ads.txt

User-agent: Googlebot-News
Disallow: /about/
Disallow: /sponsored/
Disallow: /*/sponsored/
Disallow: /search
Disallow: /thirdpartyservice
Disallow: /*/thirdpartyservice
Disallow: /ads.txt

User-agent: Twitterbot
Allow: /

User-agent: Mediapartners-Google
Allow: /

User-agent: discobot
Disallow: /

Sitemap: https://www.sandiegouniontribune.com/sitemap.xml
Sitemap: https://www.sandiegouniontribune.com/sitemap-news.xml