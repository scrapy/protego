User-agent: *
Sitemap: https://www.girlsaskguys.com/sitemaps/sitemaps.xml
Allow: /
Disallow: /search&q=*
Disallow: /digits-show*
Disallow: /show-nextquestion*
Disallow: /p/*
Disallow: /show-ad?id=
Disallow: /showad.html*
Disallow: /help/pop*
Disallow: /article/putthumb*
Disallow: /question/putthumb*
Disallow: /search?*
Disallow: /*/vote-poll
Disallow: /qt/*
Disallow: /1041900/*
Disallow: /signin*
Disallow: /signup*
Disallow: /reported-posts
Disallow: /brand-styles*

User-agent: Mediapartners-Google 
Disallow:

User-agent: grapeshot
Disallow: