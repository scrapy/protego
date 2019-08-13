## Ask.com robots.txt

User-agent: *
Noindex: /Allabout
Noindex: /allabout?
Noindex: /ans
Noindex: /answers
Noindex: /ar?
Noindex: /News
Noindex: /news?
Noindex: /Pictures
Noindex: /pictures?
Noindex: /ref
Noindex: /settings
Noindex: /touch/
Noindex: /TouchWeb
Noindex: /touchWeb?
Noindex: /web
Noindex: /Web
Noindex: /Wiki
Noindex: /wiki
Noindex: /Youtube
Noindex: /youtube
Noindex: /popular-questions/
Noindex: /ja-question
Noindex: /browse
Noindex: /maps?
Noindex: /sports/
Noindex: /zoomad
Noindex: /Web-answers
Noindex: /web-answers
Noindex: /web-explore
Noindex: /Web-explore
Noindex: /Web-question
Noindex: /web-question
Noindex: /webans?
Noindex: /shopping/
Noindex: /shopping?
Noindex: /slideshow/
Disallow: /videos
Disallow: /article/
Disallow: /articles/
Disallow: /fragment
Disallow: *ad=
Disallow: *aq=

User-agent: Mediapartners-Google
Disallow:
User-agent: Teoma
Disallow:
User-agent: netseer
Disallow:
User-agent: AdsBot-Google
Disallow:
User-agent: AdIdxBot
Disallow:
User-agent: proximic
Disallow: