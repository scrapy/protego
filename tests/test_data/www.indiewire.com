Sitemap: https:///sitemap.xml
Sitemap: https://www.indiewire.com/news-sitemap.xml

User-agent: Swiftbot
Disallow:
User-agent: *
Disallow: /wp-admin/
Allow: /wp-admin/admin-ajax.php
Sitemap: https://www.indiewire.com/news-sitemap.xml
Sitemap: https://www.indiewire.com/sitemap_index.xml

User-agent: Swiftbot
 Crawl-delay: 5
User-agent: *
Disallow: /?s=
Disallow: /*/?s=
Disallow: /search/
Disallow: /search?
Disallow: *?v02
Disallow: *?replytocom
Disallow: /genre/
Disallow: /genre/*
Disallow: /results/
User-agent: *
Disallow: /*preview=true
Disallow: /*theme_preview=true
Disallow: /2018/09/its-always-sunny-in-philadelphia-times-up-episode-4-season-13-1202007266/ 
Disallow: /2018/09/crazy-rich-asians-sails-through-an-otherwise-soft-labor-day-box-office-weekend-1201999745/ 
Disallow: /2016/07/star-wars-episode-viii-director-rian-johnson-celebration-1201706738/ 
Disallow: /film/
Disallow: /actor/
Disallow: /language/
Disallow: /studio/
Disallow: /writer/
Disallow: /director/
