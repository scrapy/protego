User-agent: *
Disallow: /fileadmin/_temp_/
Disallow: /t3lib/
Disallow: /typo3/
Disallow: /typo3_src/
Disallow: /typo3conf/
Disallow: /clear.gif
Allow: /typo3/sysext/frontend/Resources/Public/*

User-agent: *
Disallow: /fileadmin/user_upload/downloads/
Disallow: /fileadmin/user_uploads/country_one_pager/sg/documents/gmi/
Disallow: /fileadmin/user_upload/microsites/winning_strategies/

User-agent: *
Disallow: /en-ir/
Disallow: /es-cr/
Disallow: /en-cy/
Disallow: /en-ke/
Disallow: /en-mm/
Disallow: /en-mz/
Disallow: /en-sd/
Disallow: /en-sn/
Disallow: /en-tz/
Disallow: /en-ug/
Disallow: /es-uy/
Disallow: /es-ve/
Disallow: /en-ye/
Disallow: /et-ee/
Disallow: /lv-lv/
Disallow: /lt-lt/
Disallow: /mk-mk/
Disallow: /en-lu/

User-agent: SemrushBot
Disallow: /

User-agent: SemrushBot/3~bl
Disallow: /

User-agent: SemrushBot-BA
Disallow: /

User-agent: SemrushBot-SA
Disallow: /

User-agent: SemrushBot-SI
Disallow: /

User-agent: SemrushBot/2~bl
Disallow: /

User-agent: SemrushBot/1.2~bl
Disallow: /

User-agent: SemrushBot/0.98~bl
Disallow: /

User-agent: MJ12bot
Disallow: /User-agent: MJ12bot
Disallow: /
Sitemap: https://www.gfk.com/index.php?id=1&type=841132
