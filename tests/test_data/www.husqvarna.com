User-agent: Googlebot
Disallow: /ddocdownload
Disallow: /*?*
Allow: /

User-agent: yandex
Disallow: /ddocdownload
Disallow: /*?*
Allow: /

User-agent: *
Disallow: /ddocdownload
Disallow: /*?*
Allow: /

Sitemap: https://www.husqvarna.com/sitemapindex.xml
