# Notice: Collection of data on Facebook through automated means is
# prohibited unless you have express written permission from Facebook
# and may only be conducted for the limited purpose contained in said
# permission.
# See: http://www.facebook.com/apps/site_scraping_tos_terms.php

User-agent: Amazonbot
Disallow: /

User-agent: Applebot-Extended
Disallow: /

User-agent: Brightbot
Disallow: /

User-agent: ClaudeBot
Disallow: /

User-agent: Google-Extended
Disallow: /

User-agent: GPTBot
Disallow: /

User-agent: PerplexityBot
Disallow: /

User-agent: PetalBot
Disallow: /

User-agent: Scrapy
Disallow: /

User-agent: uptimerobot
Disallow: /

User-agent: viberbot
Disallow: /

User-agent: YaK
Disallow: /

User-agent: Yandex
Disallow: /

User-agent: Yeti
Disallow: /

User-agent: facebookexternalhit
Allow: *

User-agent: meta-externalads
Allow: *

User-agent: *
Disallow: /*cursor=
Disallow: /*fb_comment_id=
Disallow: /ajax/
Disallow: /tealium/
Disallow: /intern/
Disallow: /internal/
Disallow: /login/
Disallow: /oidc/callback/
Disallow: /*.php
Disallow: /android/third_party
Disallow: /settings

Sitemap: https://www.whatsapp.com/sitemap/www_whatsapp_com_sitemap.xml.gz