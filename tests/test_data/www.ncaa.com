# $Id: robots.txt,v 1.9.2.1 2008/12/10 20:12:19 goba Exp $
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
# http://www.robotstxt.org/wc/robots.html
#
# For syntax checking, see:
# http://www.sxw.org.uk/computing/robots/check.html

User-agent: *
# Directories
Disallow: /includes/
Disallow: /misc/
Disallow: /modules/
Disallow: /profiles/
Disallow: /scripts/
Disallow: /sites/all/
Disallow: /themes/
# Files
Disallow: /CHANGELOG.txt
Disallow: /cron.php
Disallow: /INSTALL.mysql.txt
Disallow: /INSTALL.pgsql.txt
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
Disallow: /contact/
Disallow: /logout/
Disallow: /node/add/
Disallow: /search/
Disallow: /user/register/
Disallow: /user/password/
Disallow: /user/login/
# Paths (no clean URLs)
Disallow: /?q=admin/
Disallow: /?q=comment/reply/
Disallow: /?q=contact/
Disallow: /?q=logout/
Disallow: /?q=node/add/
Disallow: /?q=search/
Disallow: /?q=user/password/
Disallow: /?q=user/register/
Disallow: /?q=user/login/
Disallow: /nst-fa/
Disallow: /index.php
Disallow: /index.php/*

# old/migrated file sources
Allow: /sites/default/files/external/assets/
Allow: /sites/default/files/external/printable-bracket/
Allow: /sites/default/files/external/gametool/brackets/
Allow: /sites/default/files/legacy/

# css
Allow: /modules/custom/casablanca_articles/css/
Allow: /modules/custom/casablanca_common/css/
Allow: /modules/custom/casablanca_content/css/
Allow: /modules/custom/casablanca_content/modules/casablanca_shortcodes/css/
Allow: /modules/custom/casablanca_core/css/
Allow: /modules/custom/casablanca_footer/css/
Allow: /modules/custom/casablanca_franchise/css/
Allow: /modules/custom/casablanca_gamecenter/css/
Allow: /modules/custom/casablanca_history/css/
Allow: /modules/custom/casablanca_iframe/css/
Allow: /modules/custom/casablanca_live_schedule/css/
Allow: /modules/custom/casablanca_march_madness/css/
Allow: /modules/custom/casablanca_nav/css/
Allow: /modules/custom/casablanca_newsletter/css/
Allow: /modules/custom/casablanca_pages/css/
Allow: /modules/custom/casablanca_rankings/css/
Allow: /modules/custom/casablanca_schools/css/
Allow: /modules/custom/casablanca_scoreboard/css/
Allow: /modules/custom/casablanca_social/modules/casablanca_social_hanger/css/
Allow: /modules/custom/casablanca_stats/css/
Allow: /modules/custom/casablanca_stax/css/
Allow: /modules/custom/casablanca_streaming_rights/css/
Allow: /modules/custom/casablanca_sports/css/
Allow: /modules/custom/casablanca_tabbed_content/css/
Allow: /modules/custom/casablanca_tickets/css/
Allow: /modules/custom/casablanca_tiles/css/
Allow: /modules/custom/casablanca_video/css/
Allow: /modules/custom/casablanca_vod/css/
Allow: /modules/custom/mml_embed_player/css/
Allow: /themes/custom/bespin/css/

# img
Allow: /modules/custom/casablanca_brackets/img/
Allow: /modules/custom/casablanca_core/img/
Allow: /modules/custom/casablanca_content/img/
Allow: /modules/custom/casablanca_content/modules/casablanca_shortcodes/img/
Allow: /modules/custom/casablanca_footer/img/
Allow: /modules/custom/casablanca_gamecenter/img/
Allow: /modules/custom/casablanca_iframe/img/
Allow: /modules/custom/casablanca_march_madness/img/
Allow: /modules/custom/casablanca_nav/img/
Allow: /modules/custom/casablanca_nav/img/menu/
Allow: /modules/custom/casablanca_newsletter/img/
Allow: /modules/custom/casablanca_schools/img/
Allow: /modules/custom/casablanca_scoreboard/img/
Allow: /modules/custom/casablanca_sports/img/
Allow: /modules/custom/casablanca_social/modules/casablanca_social_hanger/img/
Allow: /modules/custom/casablanca_sports/img/
Allow: /modules/custom/casablanca_stats/img/
Allow: /modules/custom/casablanca_tickets/img/
Allow: /modules/custom/casablanca_tiles/img/
Allow: /modules/custom/casablanca_video/img/
Allow: /modules/custom/casablanca_vod/img/
Allow: /themes/custom/bespin/img/
Allow: /themes/custom/bespin/assets/

# js
Allow: /modules/custom/casablanca_analytics/js/
Allow: /modules/custom/casablanca_analytics/lib/
Allow: /modules/custom/casablanca_core/js/
Allow: /modules/custom/casablanca_core/templates/compiled/
Allow: /modules/custom/casablanca_draco_dfp/js/
Allow: /modules/custom/casablanca_footer/js/
Allow: /modules/custom/casablanca_franchise/js/
Allow: /modules/custom/casablanca_gamecenter/js/
Allow: /modules/custom/casablanca_gamecenter/templates/compiled/
Allow: /modules/custom/casablanca_live_schedule/js/
Allow: /modules/custom/casablanca_march_madness/js/
Allow: /modules/custom/casablanca_nav/js/
Allow: /modules/custom/casablanca_newsletter/js/
Allow: /modules/custom/casablanca_rankings/js/
Allow: /modules/custom/casablanca_schools/js/
Allow: /modules/custom/casablanca_scoreboard/js/
Allow: /modules/custom/casablanca_social/modules/casablanca_social_hanger/js/
Allow: /modules/custom/casablanca_sports/js/
Allow: /modules/custom/casablanca_standings/js/
Allow: /modules/custom/casablanca_stats/js/
Allow: /modules/custom/casablanca_streaming_rights/js/
Allow: /modules/custom/casablanca_tabbed_content/js/
Allow: /modules/custom/casablanca_tickets/js/
Allow: /modules/custom/casablanca_tiles/js/
Allow: /modules/custom/casablanca_video/js/
Allow: /modules/custom/casablanca_video/templates/compiled/
Allow: /modules/custom/casablanca_vod/app/dist/
Allow: /modules/custom/mml_embed_player/dist/
Allow: /themes/custom/bespin/js/

# libraries
Allow: /modules/custom/casablanca_libraries/

Sitemap: https://www.ncaa.com/sites/default/files/public/sitemaps/sitemap.xml
Sitemap: https://www.ncaa.com/sitemap/news.xml
Sitemap: https://www.ncaa.com/sites/default/files/public/sitemaps/seo-sitemap.xml
