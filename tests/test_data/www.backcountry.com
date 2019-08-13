User-agent: *
Disallow: /demos/*
Disallow: /foresee/*
Disallow: /Store/account/account.jsp
Disallow: /Store/cart/cart.jsp
Disallow: /Store/checkout/checkout.jsp
Disallow: /Store/checkout/receipt.jsp
Disallow: /*/cart/add.html
Disallow: /*/email_to_friend*
Disallow: /*/order_history*
Disallow: /*/user/*
Disallow: /*/ilp.html
Disallow: /*/serviceRequest.jsp*
Disallow: /profile/none
Disallow: /*nf=1

User-agent: Caliperbot/1.0
Disallow: /

User-agent: SearchmetricsBot
Disallow: /

User-agent: Covario-IDS/1.0
Disallow: /

User-agent: 008
Disallow: /

User-agent: Sosospider
Disallow: /

User-agent: XoviBot
Disallow: /

Sitemap: https://www.backcountry.com/siteindex.xml
