User-agent: *
Disallow: /search*
Disallow: /dashboard
Disallow: /boards*
Disallow: /account/
Disallow: /inbox*
Disallow: /gs/dashboard
Disallow: /us/guest/pin*
Disallow:  /registry/ofc
Disallow: /registry/couplesearch/*
Disallow: /more/campaigns/*
Disallow: /fashion/boards/*
Disallow: /collaboration*
Disallow: */competitive_ads
Allow: /content/topic/amphtml/*
Disallow: /content/topic/*

User-agent: Mediapartners-Google
Allow: /

User-agent: Googlebot-News
Allow: /news*
Disallow: /

User-agent: voltron
Disallow: /
