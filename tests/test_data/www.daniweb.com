Sitemap: https://www.daniweb.com/sitemap.xml

User-agent: *
Disallow:	/js/
Disallow:	/cron/
Disallow:	/editorial/
Disallow:	/infractions/
Disallow:	/members/watching
Disallow:	/members/suggestions
Disallow:	/posts/bad_link/
Disallow:	/reports/
Disallow:	/stats/activity_stream
Disallow:	/stats/toplist/
Disallow:	/digital-media/webmaster-marketplace/
Disallow:	/community-center/for-hire-hiring/

Disallow:	/connect/api/
Disallow:	/connect/cron/
Disallow:	/connect/payments/
Disallow:	/connect/profile/auth/
Disallow:	/connect/oauth/
Disallow:	/connect/users/