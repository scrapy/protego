User-agent: Baiduspider
User-agent: Baiduspider-video
User-agent: Baiduspider-image
User-agent: Yandex
User-agent: YandexBot
User-agent: SemrushBot
User-agent: MJ12bot
User-agent: ZoominfoBot
Disallow: /

User-agent: *
Disallow: /opr/
Disallow: /7590/

Disallow: /1017752/

Disallow: /find-car/

Disallow: /used/search_result.aspx
Disallow: /new/search_result.aspx
Disallow: /recommend-cars/result.aspx
Disallow: /community/*
Disallow: /forums/search.aspx
Disallow: /forums/Search/*
Disallow: /search/results.aspx

Disallow: /used/page-*/

Disallow: /users/NewMember.aspx
Disallow: /users/login.aspx
Disallow: /users/register.aspx
Disallow: /users/commonlogin.aspx
Disallow: /users/ajaxLoginRegister.aspx
Disallow: /Users/feedback.aspx
Disallow: /users/ajaxlogin.aspx
Disallow: /Users/feedback.aspx
Disallow: /Users/ReferToFriend.aspx
Disallow: /users/login.aspx?*
Disallow: /MyCarwale/*
Disallow: /MyCarwale/
Disallow: /mycarwale/
Disallow: /mycarwale/*
Disallow: /forum/StickyThread/
Disallow: /forum/StickyThread/*


Disallow: /used/carvaluation/ValuationReport.aspx?*
Disallow: /used/carvaluation/ValuationReport.aspx
Disallow: /used/carvaluation/ValuationReport.aspx?


Disallow: /m/used/valuation.aspx?*
Disallow: /m/used/valuation.aspx
Disallow: /m/used/valuation.aspx?

Disallow: /accessories/
Disallow: /accessories/*

Disallow: /mygarage/
Disallow: /mygarage/*

Disallow: /api/exceptions/
Disallow: /new/sbi-yono/
Disallow: /dealerrenewalrequest/
Disallow: /bhrigu/pixel.gif?*

Sitemap: https://www.carwale.com/sitemap/cw-index.xml
