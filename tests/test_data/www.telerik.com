# All robots will spider the domain 
User-agent: *
User-agent: Googlebot
User-agent: Googlebot-News
User-agent: Googlebot-Image
User-agent: Googlebot-Video
User-agent: Googlebot-Mobile
User-agent: AdsBot-Google
Disallow: /ArticleFileDownload.aspx
Disallow: /registration-login/
Disallow: /search
Disallow: /account/default.aspx
Disallow: /t3mp0mAt/
Disallow: /help/search.aspx
Disallow: /*aspxerrorpath*
Disallow: /login/v2*
Disallow: /account*

User-agent: bingbot
User-agent: msnbot
User-agent: msnbot-media
User-agent: adidxbot
Disallow: /ArticleFileDownload.aspx
Disallow: /registration-login/
Disallow: /search
Disallow: /account/default.aspx
Disallow: /t3mp0mAt/
Disallow: /help/search.aspx
Disallow: /*aspxerrorpath*
Disallow: /login/v2*
Disallow: /account*

User-agent: Yandex Bot
crawl-delay: 10
Disallow: /ArticleFileDownload.aspx
Disallow: /registration-login/
Disallow: /search
Disallow: /account/default.aspx
Disallow: /t3mp0mAt/
Disallow: /help/search.aspx
Disallow: /*aspxerrorpath*
Disallow: /login/v2*
Disallow: /account*

User-agent: slurp
crawl-delay: 10
Disallow: /ArticleFileDownload.aspx
Disallow: /registration-login/
Disallow: /search
Disallow: /account/default.aspx
Disallow: /t3mp0mAt/
Disallow: /help/search.aspx
Disallow: /*aspxerrorpath*
Disallow: /login/v2*
Disallow: /account*

User-agent: baiduspider
User-agent: baiduspider-image
User-agent: baiduspider-mobile
User-agent: baiduspider-news
User-agent: baiduspider-video
Disallow: /ArticleFileDownload.aspx
Disallow: /registration-login/
Disallow: /search
Disallow: /account/default.aspx
Disallow: /t3mp0mAt/
Disallow: /help/search.aspx
Disallow: /*aspxerrorpath*
Disallow: /login/v2*
Disallow: /account*

User-agent: facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)
Disallow: /ArticleFileDownload.aspx
Disallow: /registration-login/
Disallow: /search
Disallow: /account/default.aspx
Disallow: /t3mp0mAt/
Disallow: /help/search.aspx
Disallow: /*aspxerrorpath*
Disallow: /login/v2*
Disallow: /account*

Sitemap: https://www.telerik.com/sitemap.xml

#Image Sitemap
Sitemap: https://www.telerik.com/sitemap_images.xml

#Video Sitemap
Sitemap: https://www.telerik.com/sitemap_video.xml