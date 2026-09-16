# Welcome to Bitly =)
# robots welcome;
# API documentation can be found at https://dev.bitly.com/
User-Agent: *
Disallow: /pages/landing
Disallow: /pages/*/landing
Disallow: /pages/pt$
Disallow: /pages/home
Disallow: /pages/*/home
Disallow: /pages/thank-you
Disallow: /pages/de/danke
Disallow: /pages/fr/merci
Disallow: /pages/it/grazie
Disallow: /pages/es/gracias
Disallow: /*/demo-thank-you
Disallow: /*/email-thank-you
Disallow: /*/partner-agreement
Disallow: /*/free-plan-refresh-faqs
Disallow: /*/automatic-renewal-terms
Disallow: /*/domain-name-use-agreement
Disallow: /*/cookie-policy
Disallow: /pages/pricing/*
Disallow: /pages/*/pricing/*
Disallow: /pages/*/v1$
Disallow: /pages/*/v2$
Disallow: /blog/?p=
Disallow: /blog/page/*/?p=
Disallow: /pages/*?preview[
Disallow: /pages/*&preview[
Disallow: /pages/*[
Disallow: /pages/*{
Disallow: /pages/*;
User-agent: PetalBot
User-agent: ChatGPT Agent
User-agent: ChatGPT-User
User-agent: Claude-SearchBot
User-agent: Claude-User
User-agent: Claude-Web
User-agent: ClaudeBot
User-agent: GPTBot
User-agent: ClaudeBot
User-agent: CCBot
User-agent: ByteDance
Crawl-delay: 1
Sitemap: https://bitly.com/pages/sitemap_index.xml
Sitemap: https://bitly.com/blog-hub/sitemap-index.xml