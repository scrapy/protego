User-agent: Nutch-Viacom
Allow: /content/bet/app-content-map.html
Allow: /content/bet/roku-app-content-map.html
Allow: /content/bet/appletv-app-content-map.html
Disallow: /content/betcomprivate/
Disallow: /content/betcom/
Disallow: /content/betprivate/
Disallow: /etc/designs/
Disallow: /test/
Disallow: /content/bet/apps/betx-app 
Disallow: /content/bet/shows/bet-awards/nominees-mobile

User-agent: Googlebot-news
Disallow: /shows/
Disallow: /video/
Disallow: /topics/
Disallow: */photos/
Disallow: /schedule.html
Disallow: /video.html

User-agent: Twitterbot
Allow: /
Crawl-delay: 5

User-agent: Pinterestbot
Allow: /
Crawl-delay: 5

User-agent: SearchmetricsBot
Crawl-delay: 5
Disallow: /content/betcomprivate/
Disallow: /content/betcom/
Disallow: /content/betprivate/
Disallow: /test/

User-agent: AhrefsBot
Crawl-delay: 5
Disallow: /content/betcomprivate/
Disallow: /content/betcom/
Disallow: /content/betprivate/
Disallow: /test/


User-agent: Mail.RU_Bot
Disallow: /

User-agent: Mail.RU_Bot/Img
Disallow: /

User-agent: Vegi bot (we follow your robots.txt settings before crawling, you can slow down the bot by change the Crawl-Delay parameter in the settings.if you have an enquiry, please email to: abuse-report@terrykyleseoagency.com)
Disallow: /

User-agent: SemrushBot
Disallow: /

User-agent: Yandex
Disallow: /

User-agent: * 
Disallow: /content/bet/app-content-map.html
Disallow: /test/
Disallow: /content/betcomprivate/
Disallow: /content/betcom/
Disallow: /content/betprivate/
Disallow: /content/bet/apps/betx-app/ 
Disallow: /content/bet/shows/bet-awards/nominees-mobile/
Disallow: /content/bet/searchresults.html 	
Disallow: /content/bet/app-content-map/
Disallow: /app-content-map/
Disallow: /content/bet/roku-app-content-map/
Disallow: /roku-app-content-map/
Disallow: /content/bet/appletv-app-content-map/
Disallow: /content/bet/news/national/2013/03/09/essence-s-former-eic-says-she-was-fired.html
Disallow: /news/national/2013/03/09/essence-s-former-eic-says-she-was-fired.html
Disallow: /appletv-app-content-map/
#google tries to crawl video ad location paths that are present in html, so denying it here; it is not valid URLs for BET
Disallow: /1125/
#google keeps in index bunch of outdated URLs from previous bet.com, this needs to be disallowed
Disallow: /*.ugc.html$
Disallow: /*.share.responsive-true.html*
Disallow: /etc/designs/bet/amp/stats

Sitemap: https://www.bet.com/sitemap.xml 
