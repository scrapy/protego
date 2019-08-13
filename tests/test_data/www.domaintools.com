# Notice: if you would like to crawl DomainTools you can
# contact us here: http://www.domaintools.com/company/contact/
# to apply for white listing.

# Moz
User-agent: rogerbot
Allow: *

User-agent: Mediapartners-Google
Allow: *

User-agent: Googlebot
Allow: *

User-agent: Bingbot
Allow: *

User-agent: msnbot
Allow: *

User-agent: Slurp
Allow: *

User-agent: teoma
Allow: *

User-agent: baiduspider
Allow: *

User-agent: facebookexternalhit/*
Allow: *

User-agent: sogou
Allow: *

User-agent: naverbot
Allow: *

User-agent: seznambot
Allow: *

User-agent: Yandex
Allow: *

User-agent: Blekkobot
Allow: *

User-agent: DuckDuckBot
Allow: *

User-agent: YodaoBot
Allow: *

User-agent: SurveyBot
Allow: *

User-agent: AhrefsSiteAudit
Allow: *

User-agent: AhrefsBot
Allow: *

User-agent: *
Disallow: /

