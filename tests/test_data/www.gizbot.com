User-agent: Mediapartners-Google
Disallow:

User-agent: *
Allow: /*.js*
Allow: /*.css*
Disallow: /temp/
Disallow: /wp-content/
Disallow: /newsletter/
Disallow: /news-letter/
Disallow: /*?replytocom
Disallow: /*?pid
Disallow: /gadget-finder/buynow/
Disallow: /gadget-finder/search.html
Disallow: /common/
Disallow: /scripts/



Sitemap: https://www.gizbot.com/sitemap_index.xml
Sitemap: https://www.gizbot.com/sitemap-latest.xml
Sitemap: https://www.gizbot.com/sitemap_news.xml
Sitemap: https://www.gizbot.com/gadget-finder/sitemap.xml
Sitemap: https://www.gizbot.com/sitemap-images-index.xml

