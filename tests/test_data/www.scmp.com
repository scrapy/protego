#
# robots.txt
#
# This file is to prevent the crawling and indexing of certain parts
# of your site by web crawlers and spiders run by sites like Yahoo!
# and Google. By telling these "robots" where not to go on your site,
# you save bandwidth and server resources.
#
# This file will be ignored unless it is at the root of your host:
# Used:    http://example.com/robots.txt
# Ignored: http://example.com/site/robots.txt
#
# For more information about the robots.txt standard, see:
# http://www.robotstxt.org/robotstxt.html
#
# For syntax checking, see:
# http://www.sxw.org.uk/computing/robots/check.html


User-agent: *
Crawl-delay: 10

# PWA

# Directories
Disallow: /public/
Disallow: /static/
# Path
Disallow: /login
Disallow: /signin
Disallow: /register
Disallow: /logout
Disallow: /login/facebook
Disallow: /login/facebook/*
Disallow: /styleguide/*
Disallow: /healthz
Disallow: /.well-known/*
Disallow: /*/firebase-messaging-sw.js
Disallow: /google97d8d43559c9b155.html
# CSS, JS, Image
Allow: /static/*.css$
Allow: /static/*.css?
Allow: /static/*.js$
Allow: /static/*.js?
Allow: /static/*.gif
Allow: /static/*.jpg
Allow: /static/*.jpeg
Allow: /static/*.png
Allow: /public/*.css$
Allow: /public/*.css?
Allow: /public/*.js$
Allow: /public/*.js?
Allow: /public/*.gif
Allow: /public/*.jpg
Allow: /public/*.jpeg
Allow: /public/*.png

# Drupal Legacy

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
Disallow: /sites/default/files/*.pdf
Disallow: /sites/default/files/*.doc
Disallow: /sites/default/files/*.docx
Disallow: /sites/default/files/*.swf

# Paths (clean URLs)
Disallow: /admin/
Disallow: /comment/reply/
Disallow: /filter/tips/
Disallow: /node/add/
Disallow: /user/register/
Disallow: /user/password/
Disallow: /user/login/
Disallow: /user/logout/
Disallow: *?destination=*
Disallow: /ajax_comments/
Disallow: /scmp_comments/
Disallow: *Article_type=*
Disallow: *field_article*
Disallow: /label/
Disallow: /node/*/nodequeue
Disallow: /node/*/edit
Disallow: /ajax
Disallow: /ajax/*
Disallow: /facebook-instant-articles/feed/*
Disallow: /epaper
Disallow: /epaper/*

# Paths (no clean URLs)
Disallow: /?q=admin/
Disallow: /?q=comment/reply/
Disallow: /?q=filter/tips/
Disallow: /?q=node/add/
Disallow: /?q=user/password/
Disallow: /?q=user/register/
Disallow: /?q=user/login/
Disallow: /?q=user/logout/
Disallow: /?q=node/*/edit
Disallow: /?q=node/*/nodequeue
Disallow: /?q=epaper
Disallow: /?q=epaper/*
Disallow: /?q=facebook-instant-articles/feed/*

Disallow: /*/logSend$
Disallow: /*/spmException$
Disallow: /*/spmact$
Disallow: /*/antiSpam$
Disallow: /*/nameStorage$
Disallow: /*/spmMonitor$
Disallow: /*/pvData$
Disallow: /*/goldlog$
Disallow: /*/initLoad$
Disallow: /*/beforeUnload$
Disallow: /*/util$
Disallow: /*/metaInfo$
Disallow: /*/beaconBase$
Disallow: /*/spm$
Disallow: /*/makeid$
Disallow: /*/referrer$
Disallow: /*/pvid$
Disallow: /*/etag$
Disallow: /*/iframe$
Disallow: /*/client$
Disallow: /*/windvane$
Disallow: /*/cookie$
Disallow: /*/sendpv$
Disallow: /*/personality/index$
Disallow: /*/misc$
Disallow: /*/client$
Disallow: /*/log$
Disallow: /*/compose$
Disallow: /*/lib_b/*$
Disallow: /print/
Disallow: /?q=print/

# Opebot - For 1plusX
User-agent: Opebot
Allow: /print/
Allow: /?q=print/

# NewsNow
User-agent: NewsNow
Allow: /print/
Allow: /?q=print/

# Sitemap

Sitemap: https://www.scmp.com/sitemap.xml
Sitemap: https://www.scmp.com/sitemap_explained.xml
Sitemap: https://www.scmp.com/sitemap_podcasts.xml
Sitemap: https://www.scmp.com/sitemap_announcements.xml
Sitemap: https://www.scmp.com/sitemap_infographics.xml
Sitemap: https://www.scmp.com/sitemap_news.xml
Sitemap: https://www.scmp.com/sitemap_economy.xml
Sitemap: https://www.scmp.com/sitemap_business.xml
Sitemap: https://www.scmp.com/sitemap_comment.xml
Sitemap: https://www.scmp.com/sitemap_tech.xml
Sitemap: https://www.scmp.com/sitemap_lifestyle.xml
Sitemap: https://www.scmp.com/sitemap_culture.xml
Sitemap: https://www.scmp.com/sitemap_sport.xml
Sitemap: https://www.scmp.com/sitemap_property.xml
Sitemap: https://www.scmp.com/sitemap_photos.xml
Sitemap: https://www.scmp.com/sitemap_video.xml
Sitemap: https://www.scmp.com/sitemap_destination_macau.xml
Sitemap: https://www.scmp.com/sitemap_magazines.xml
Sitemap: https://www.scmp.com/sitemap_this_week_in_asia.xml
Sitemap: https://www.scmp.com/sitemap_directories.xml
Sitemap: https://www.scmp.com/sitemap_weather.xml
Sitemap: https://www.scmp.com/sitemap_about_us.xml
Sitemap: https://www.scmp.com/sitemap_lists.xml
Sitemap: https://www.scmp.com/sitemap_special_reports.xml
Sitemap: https://www.scmp.com/sitemap_country_reports.xml
Sitemap: https://www.scmp.com/sitemap_video_comments.xml
Sitemap: https://www.scmp.com/sitemap_video_scmp_originals.xml
Sitemap: https://www.scmp.com/sitemap_video_hong_kong.xml
Sitemap: https://www.scmp.com/sitemap_video_china.xml
Sitemap: https://www.scmp.com/sitemap_video_asia.xml
Sitemap: https://www.scmp.com/sitemap_video_world.xml
Sitemap: https://www.scmp.com/sitemap_video_business.xml
Sitemap: https://www.scmp.com/sitemap_video_arts_culture.xml
Sitemap: https://www.scmp.com/sitemap_video_technology.xml
Sitemap: https://www.scmp.com/sitemap_video_lifestyle.xml
Sitemap: https://www.scmp.com/sitemap_video_sport.xml
Sitemap: https://www.scmp.com/sitemap_video_offbeat.xml
Sitemap: https://www.scmp.com/sitemap_video_style.xml
Sitemap: https://www.scmp.com/sitemap_video_post_mag.xml
Sitemap: https://www.scmp.com/sitemap_video_presented.xml
Sitemap: https://www.scmp.com/sitemap_article.xml
Sitemap: https://www.scmp.com/sitemap_gallery.xml
Sitemap: https://www.scmp.com/sitemap_poll.xml
Sitemap: https://www.scmp.com/sitemap_promotion.xml
Sitemap: https://www.scmp.com/sitemap_webform.xml
Sitemap: https://www.scmp.com/sitemap_video_format.xml
Sitemap: https://www.scmp.com/sitemap_sections.xml
Sitemap: https://www.scmp.com/sitemap_topics.xml
Sitemap: https://www.scmp.com/sitemap_authors.xml
