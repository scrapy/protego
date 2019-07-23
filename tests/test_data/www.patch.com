Sitemap: https://patch.com/sitemaps/sitemap-index.xml
Sitemap: https://patch.com/sitemap.xml

User-agent: CCBot
Disallow: /

User-agent: CCBot/2.0
Disallow: /

User-agent: CCBot/2.0 (http://commoncrawl.org/faq/)
Disallow: /

User-agent: WikiDo
Disallow: /

User-agent: fr_crawler
Disallow: /

User-agent: Yandex
Disallow: /
User-agent: Baiduspider
Disallow: /

User-agent: Baiduspider-image
Disallow: /

User-agent: Baiduspider-video
Disallow: /

User-agent: Baiduspider-favo
Disallow: /

User-agent: Baiduspider-news
Disallow: /

User-agent: Baiduspider-cpro
Disallow: /

User-agent: Baiduspider-ads
Disallow: /

# New crawlers to block 2016
User-Agent: trendictionbot
Disallow: /

User-Agent: Bitvorebot
Disallow: /

User-Agent: BLP_bbot
Disallow: /

User-Agent: heritrix
Disallow: /

User-Agent: magpie-crawler
Disallow: /

User-Agent: Kraken
Disallow: /

User-Agent: moatbot
Disallow: /

User-Agent: bhcBot
Disallow: /

User-Agent: SemrushBot
Disallow: /

User-Agent: Synthesio
Disallow: /

User-Agent: AhrefsBot
Disallow: /

User-Agent: BrandONbot
Disallow: /

User-Agent: GermCrawler
Disallow: /

User-Agent: Sogou
Disallow: /

User-Agent: Exabot
Disallow: /

User-Agent: MaxPointCrawler
Disallow: /

User-Agent: ADmantX
Disallow: /

User-agent: *
# CSS, JS, Images
Allow: /misc/*.css$
Allow: /misc/*.css?
Allow: /misc/*.js$
Allow: /misc/*.js?
Allow: /misc/*.gif
Allow: /misc/*.jpg
Allow: /misc/*.jpeg
Allow: /misc/*.png
Allow: /modules/*.css$
Allow: /modules/*.css?
Allow: /modules/*.js$
Allow: /modules/*.js?
Allow: /modules/*.gif
Allow: /modules/*.jpg
Allow: /modules/*.jpeg
Allow: /modules/*.png
Allow: /profiles/*.css$
Allow: /profiles/*.css?
Allow: /profiles/*.js$
Allow: /profiles/*.js?
Allow: /profiles/*.gif
Allow: /profiles/*.jpg
Allow: /profiles/*.jpeg
Allow: /profiles/*.png
Allow: /themes/*.css$
Allow: /themes/*.css?
Allow: /themes/*.js$
Allow: /themes/*.js?
Allow: /themes/*.gif
Allow: /themes/*.jpg
Allow: /themes/*.jpeg
Allow: /themes/*.png
# Directories
Disallow: /includes/
Disallow: /misc/
Disallow: /modules/
Disallow: /profiles/
Disallow: /scripts/
Disallow: /themes/
# Files
Disallow: /CHANGELOG.txt
Disallow: /cron.php
Disallow: /INSTALL.mysql.txt
Disallow: /INSTALL.pgsql.txt
Disallow: /INSTALL.sqlite.txt
Disallow: /install.php
Disallow: /INSTALL.txt
Disallow: /LICENSE.txt
Disallow: /MAINTAINERS.txt
Disallow: /update.php
Disallow: /UPGRADE.txt
Disallow: /xmlrpc.php
# Paths (clean URLs)
Disallow: /admin/
Disallow: /comment/reply/
Disallow: /filter/tips/
Disallow: /node/add/
Disallow: /search/
Disallow: /user/register/
Disallow: /user/password/
Disallow: /user/login/
Disallow: /user/logout/

# Paths (no clean URLs)
Disallow: /?q=admin/
Disallow: /?q=comment/reply/
Disallow: /?q=filter/tips/
Disallow: /?q=node/add/
Disallow: /?q=search/
Disallow: /?q=user/password/
Disallow: /?q=user/register/
Disallow: /?q=user/login/
Disallow: /?q=user/logout/

# TicketNetwork
Disallow: */tickets/event/*
Disallow: */tickets/venue/*

#INTERNAL
Disallow: */calendar/d/*
Disallow: */ep/*
Disallow: */login$
Disallow: */login/
Disallow: */register$
Disallow: */register/
Disallow: */generate_ical_event/*
Disallow: *?vce=*

#User Profile Pages
Disallow: /users/*?page*
Disallow: /users/*/*

Disallow: */s/*
Disallow: */info/*

Disallow: *-nodx-*
Disallow: *-nodx$

User-Agent: DuckDuckBot
Allow: */tickets/event/*
Allow: */tickets/venue/*

