User-agent: *
Disallow: /uploads/
Disallow: /common/clickcount.aspx*
Disallow: /search/phd.aspx?*,
Disallow: /search/?*,
Disallow: /search?*,
Disallow: /phds/?*,
Disallow: /phds?*,
Disallow: /phds/*cross-discipline
Disallow: /phds/*cross-subject
Allow: /

User-agent: 008
Disallow: /

User-agent: Netsparker
Disallow: /

user-agent: AhrefsBot
Disallow: / 

user-agent: WeSEE:Search
Disallow: / 

User-agent: spbot
Disallow: /

User-agent: Riddler
Disallow: /

User-agent: SemrushBot
Disallow: /

User-agent: SemrushBot-SA
Disallow: /

User-agent: Linguee Bot
Disallow: /

User-agent: BUbiNG
Disallow: /

User-agent: jooblebot
Disallow: /

Sitemap: https://www.findaphd.com/sitemap.ashx?sitemap-advert-0.xml.gz
Sitemap: https://www.findaphd.com/sitemap.ashx?sitemap-keyword-0.xml.gz
Sitemap: https://www.findaphd.com/sitemap.ashx?sitemap-search-0.xml.gz
Sitemap: https://www.findaphd.com/sitemap.ashx?sitemap-static-0.xml.gz
