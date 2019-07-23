User-agent: *
Crawl-Delay: 5
Disallow: /cart/
Disallow: /login/
Disallow: /search/
Disallow: /training/ajax/
Disallow: /training/registration/
Disallow: /training/register/

User-agent: AhrefsBot
Disallow: /

User-agent: BLP_bbot
Disallow: /

User-agent: CCBot
Disallow: /
