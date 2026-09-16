# Welcome to DigiCert
# Think you have what it takes to join the best team in the world?
# Check out our careers while you're here
# https://www.digicert.com/careers
# Or check out our YouTube channel for our latest
# https://www.youtube.com/user/DigiCertSSL

User-agent: *
Disallow: /account/sso/idp
Disallow: */test/
Disallow: */ni/
Disallow: */gated-content-pdfs/
Disallow: /content/dam/digicert/pdfs/ni/
Disallow: /account/saml-guest-request/idp
Disallow: /webinars/*
Disallow: /seals/
Disallow: /link/
Disallow: /secure/*
Disallow: /services/*
Disallow: /in-console-ssm
Disallow: /jp/sid-partner*
Disallow: /ppc/
Disallow: /ru/
Disallow: /ar/
Disallow: /dc/blog/*
Disallow: /dc/news/*
Disallow: /author/*
Disallow: /tag/*
Disallow: /clients/*
Disallow: /voucher/*
Disallow: /bios*
Disallow: /direct/*
Disallow: /*thank
Disallow: /*.xls$
Disallow: /*.docx$
Disallow: /language-masters/*
Disallow: /link*
Disallow: /*feed

Allow: /*.js
Allow: /*.css

# AI / answer-engine crawlers

User-agent: GPTBot
Allow: /

User-agent: OAI-SearchBot
Allow: /

User-agent: ChatGPT-User
Allow: /

User-agent: PerplexityBot
Allow: /

User-agent: Perplexity-User
Allow: /

User-agent: ClaudeBot
Allow: /

User-agent: Claude-SearchBot
Allow: /

User-agent: Claude-User
Allow: /

User-agent: Googlebot-Image
Allow: /

User-agent: AdsBot-Google
Allow: /

User-agent: Google-Extended
Allow: /

Sitemap: https://www.digicert.com/sitemap.xml
Sitemap: https://www.digicert.com/cn/sitemap.xml
Sitemap: https://www.digicert.com/de/sitemap.xml
Sitemap: https://www.digicert.com/es/sitemap.xml
Sitemap: https://www.digicert.com/fr/sitemap.xml
Sitemap: https://www.digicert.com/it/sitemap.xml
Sitemap: https://www.digicert.com/jp/sitemap.xml
Sitemap: https://www.digicert.com/kr/sitemap.xml
Sitemap: https://www.digicert.com/nl/sitemap.xml
Sitemap: https://www.digicert.com/tw/sitemap.xml
Sitemap: https://www.digicert.com/pt/sitemap.xml
Sitemap: https://www.digicert.com/faq/sitemap.xml
Sitemap: https://www.digicert.com/news/sitemap.xml
Sitemap: https://www.digicert.com/blog/sitemap.xml
Sitemap: https://www.digicert.com/eds-sitemap.xml

# Bot Requests

User-agent: XoviBot
Disallow: /

User-agent: BLEXBot
Disallow: /

User-agent: DotBot
Disallow: /

User-agent: MJ12bot
Disallow: /

User-agent: Xenu's
Disallow: /

User-agent: Xenu's Link Sleuth 1.1c
Disallow: /

User-agent: Zeus
Disallow: /

User-agent: Zeus 32297 Webster Pro V2.9 Win32
Disallow: /

User-agent: Updownerbot
Disallow: /

User-agent: Blekkobot
Disallow: /

User-agent: 008
Disallow: /