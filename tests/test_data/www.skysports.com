User-agent: *
#
Sitemap: https://www.skysports.com/sitemap-index.xml
#
Disallow: /yourview/comments_json/
Disallow: /live-score-centre
Disallow: /api/
Disallow: /globalnav/
Disallow: /hub/
Disallow: /ical-feeds/
Disallow: /infobar/
Disallow: /mobilechoice/
Disallow: /pods/
Disallow: /private/
Disallow: /seo/
Disallow: /sso/
Disallow: /test/
Disallow: /vgnHeaders/
Disallow: /watch/ad-test/
Disallow: /watch/poll/
Disallow: /advent-calendar/
Disallow: /20346936/
Disallow: /akamai/
Disallow: /akamai-assets/
#
# Ajax & JSON
Disallow: /calendars/ajax/
Disallow: /generic-news-listing/ajax/
Disallow: /football/opinion/ajax/
Disallow: /formula1/opinion/ajax/
Disallow: /formulat1/live/json/
Disallow: /tennis/generic-news-listing/ajax/
Disallow: /f1/teams/caterham/twitter/ajax/
Disallow: /f1/teams/ferrari/twitter/ajax/
Disallow: /f1/teams/forceindia/twitter/ajax/
Disallow: /f1/teams/lotus/twitter/ajax/
Disallow: /f1/teams/marussia/twitter/ajax/
Disallow: /f1/teams/mclaren/twitter/ajax/
Disallow: /f1/teams/mercedes/twitter/ajax/
Disallow: /f1/teams/redbull/twitter/ajax/
Disallow: /f1/teams/sauber/twitter/ajax/
Disallow: /f1/teams/tororosso/twitter/ajax/
Disallow: /f1/teams/williams/twitter/ajax/
Disallow: /f1/teams/caterham/ajax/
Disallow: /f1/teams/ferrari/ajax/
Disallow: /f1/teams/forceindia/ajax/
Disallow: /f1/teams/lotus/ajax/
Disallow: /f1/teams/marussia/ajax/
Disallow: /f1/teams/mclaren/ajax/
Disallow: /f1/teams/mercedes/ajax/
Disallow: /f1/teams/redbull/ajax/
Disallow: /f1/teams/sauber/ajax/
Disallow: /f1/teams/tororosso/ajax/
Disallow: /f1/teams/williams/ajax/
Disallow: /tennis/live-update/
Disallow: /frochgroves/profiles/ajax/
Disallow: /olympics/twitter/feed/
Disallow: /olympics/xml/
#
# Sports
Disallow: /football/live-blog-beta10293alsk/
#
# ipad
Disallow: /ipad/
#
# ROI
Disallow: /watch-roi
Disallow: /watch/sky-sports-5-roi
Disallow: /watch/tv-guide-roi
