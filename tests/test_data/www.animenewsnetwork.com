User-agent: *

# disallowed for ALL robots due to impact on impressions/click tracking
Disallow: /sponsor/
Disallow: /logger
Disallow: /video/*/adconfig.xml

# disallowed for search engines because redundant
Disallow: /encyclopedia/error-report.php
Disallow: /encyclopedia/new-
Disallow: /encyclopedia/anime-
Disallow: /encyclopedia/releases.php?*yearmonth=
Disallow: /encyclopedia/releases.php?*anime=
Disallow: /encyclopedia/releases.php?*format=
Disallow: /encyclopedia/releases.php?*new=
Disallow: /encyclopedia/releases.php?*sort=
Disallow: /MyAnime/*.php?*sort=
Disallow: /MyManga/*.php?*sort=
Disallow: /encyclopedia/*&lookup=
Disallow: /encyclopedia/reports
Disallow: /encyclopedia/api.xml
Disallow: /encyclopedia/search/
Disallow: /bbs/phpBB2/profile.php
Disallow: /bbs/phpBB2/search.php
Disallow: /?t=
Disallow: /cms/changelog/
Disallow: /staff.php

# only for authorized users
Disallow: /account/
Disallow: /admin/
Disallow: /bbs/phpBB2/login.php
Disallow: /bbs/phpBB2/posting.php
Disallow: /encyclopedia/admin
Disallow: /encyclopedia/addinfo
Disallow: /encyclopedia/error-report.php?code=*&oldmsg
Disallow: /encyclopedia/compare.php?comp=
Disallow: /MyAnime/anime-set-categ.php
Disallow: /MyManga/anime-set-categ.php
Disallow: /herald/
Disallow: /newsfeed/getnews.php
Disallow: /logev/

Crawl-delay: 2

################################################################################

User-agent: Mediapartners-Google
Disallow: /sponsor/
Disallow: /logger
Crawl-delay: 2

################################################################################

User-agent: Googlebot-News
Disallow: /sponsor/
Disallow: /logger
Allow:    /newsfeed/getnews.php?u=google
Crawl-delay: 2

################################################################################
# block useless bot

User-agent: Domain Re-Animator Bot
Disallow: /
