User-agent: Mediapartners-Google
Disallow:

User-agent: *
Allow: /
Disallow: /*webcore
Disallow: /admin
Disallow: /external.php
Disallow: /member.php
Disallow: /attachment.php
Disallow: /showthread.php

User-Agent: bingbot
Crawl-Delay: 2
Disallow: /install/
Disallow: /customavatars/
Disallow: /admincp/
Disallow: /clientscript/
Disallow: /cpstyles/
Disallow: /customprofilepics/
Disallow: /modcp/
Disallow: /ajax.php
Disallow: /attachment.php
Disallow: /calendar.php
Disallow: /cron.php
Disallow: /editpost.php
Disallow: /global.php
Disallow: /image.php
Disallow: /inlinemod.php
Disallow: /joinrequests.php
Disallow: /login.php
Disallow: /members/
Disallow: /members.php
Disallow: /misc.php
Disallow: /moderator.php
Disallow: /newattachment.php
Disallow: /newreply.php
Disallow: /newthread.php
Disallow: /online.php
Disallow: /postings.php
Disallow: /printthread.php
Disallow: /private.php
Disallow: /register.php
Disallow: /report.php
Disallow: /reputation.php
Disallow: /search.php
Disallow: /sendmessage.php
Disallow: /showgroups.php
Disallow: /showpost.php
Disallow: /subscription.php
Disallow: /threadrate.php
Disallow: /usercp.php
Disallow: /usernote.php
Disallow: /customgroupicons/
Disallow: /signaturepics/
Disallow: /showthread.php
Disallow: /member.php
Disallow: /forumdisplay.php
Disallow: /blog.php
Disallow: /activity.php
Disallow: /index.php
Disallow: /cgi-bin/
Disallow: /forum.php
Disallow: /mobiquo/avatar.php
Disallow: /picture.php
Disallow: /album.php
Disallow: /external.php

User-Agent: Slurp
User-agent: Yahoo! Slurp
User-agent: msnbot
User-agent: msnbot-media
User-agent: twitterbot
User-agent: TweetedTimes Bot
User-agent: TweetmemeBot
User-agent: PaperLiBot
User-agent: TinEye-bot
User-agent: Qwantify
User-agent: Exabot
User-agent: coccoc
User-agent: BLEXBot
User-agent: uMBot-LN
User-agent: QuerySeekerSpider
User-agent: Yandex
User-agent: YandexBot
User-agent: YandexMobileBot
User-agent: YandexImageResizer
User-agent: YandexImages
User-agent: sogou spider
User-agent: Sogou web spider
User-agent: Baiduspider
User-agent: YoudaoBot
User-agent: MJ12bot
User-agent: spbot
User-agent: 360Spider
User-agent: SeznamBot
User-Agent: AhrefsBot
User-Agent: Linkdex
User-agent: linkdexbot
User-agent: SemrushBot
User-agent: SemrushBot-SA
User-agent: CFNetwork
User-agent: SputnikBot
User-agent: TurnitinBot
User-agent: proximic
User-agent: grapeshot
User-agent: Cliqzbot
User-agent: DotBot
User-agent: Exabot
Crawl-delay: 30
Disallow: /install/
Disallow: /customavatars/
Disallow: /admincp/
Disallow: /clientscript/
Disallow: /cpstyles/
Disallow: /customprofilepics/
Disallow: /modcp/
Disallow: /ajax.php
Disallow: /attachment.php
Disallow: /calendar.php
Disallow: /cron.php
Disallow: /editpost.php
Disallow: /global.php
Disallow: /image.php
Disallow: /inlinemod.php
Disallow: /joinrequests.php
Disallow: /login.php
Disallow: /members/
Disallow: /members.php
Disallow: /misc.php
Disallow: /moderator.php
Disallow: /newattachment.php
Disallow: /newreply.php
Disallow: /newthread.php
Disallow: /online.php
Disallow: /postings.php
Disallow: /printthread.php
Disallow: /private.php
Disallow: /register.php
Disallow: /report.php
Disallow: /reputation.php
Disallow: /search.php
Disallow: /sendmessage.php
Disallow: /showgroups.php
Disallow: /showpost.php
Disallow: /subscription.php
Disallow: /threadrate.php
Disallow: /usercp.php
Disallow: /usernote.php
Disallow: /customgroupicons/
Disallow: /signaturepics/
Disallow: /showthread.php
Disallow: /member.php
Disallow: /forumdisplay.php
Disallow: /blog.php
Disallow: /activity.php
Disallow: /index.php
Disallow: /cgi-bin/
Disallow: /forum.php
Disallow: /mobiquo/avatar.php
Disallow: /picture.php
Disallow: /album.php
Disallow: /external.php