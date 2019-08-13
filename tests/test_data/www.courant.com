User-agent: *
Disallow: /search/
Disallow: /changebrowser
Disallow: /thirdpartyservice
Disallow: /*/thirdpartyservice
Disallow: /config/
Disallow: /*/config
Disallow: /*/test-template
Disallow: /*.json
Disallow: /test/
Disallow: /topic/*?
Disallow: /deeplinkid/
Disallow: /searchsuggest
Disallow: /*/searchsuggest
Disallow: /svgimageproc

User-agent: Googlebot-News
Disallow: /*-ugc-*.html
Disallow: /about/
Disallow: /cbp-*.html
Disallow: /*/cbp-*.html
Disallow: /bp/*
Disallow: /*-adstory.html
Disallow: /*sns-ap
Disallow: /*photogallery
Disallow: /brandpublishing/
Disallow: /*/brandpublishing/
Disallow: /shopping/
Disallow: /*/shopping/
Disallow: /paid-posts/
Disallow: /*/paid-posts/
Disallow: /search/
Disallow: /changebrowser
Disallow: /thirdpartyservice
Disallow: /*/thirdpartyservice
Disallow: /config/
Disallow: /*/config
Disallow: /*/test-template
Disallow: /*.json
Disallow: /test/
Disallow: /topic/*?
Disallow: /deeplinkid/
Disallow: /searchsuggest
Disallow: /*/searchsuggest
Disallow: /svgimageproc

User-agent: Twitterbot
Allow: /

User-agent: Mediapartners-Google
Allow: /

User-agent: discobot
Disallow: /

Sitemap: https://www.courant.com/sitemap.xml
Sitemap: https://www.courant.com/sitemap-story.xml