# If you are regularly crawling WordPress.com sites, please use our firehose to receive real-time push updates instead.
# Please see https://developer.wordpress.com/docs/firehose/ for more details.

User-agent: *
Disallow: /account/
User-agent: *
Disallow: /wp-admin/
Allow: /wp-admin/admin-ajax.php
Sitemap: https://wwd.com/news-sitemap.xml
Sitemap: https://wwd.com/sitemap_index.xml

User-agent: Swiftbot
 Crawl-delay: 5
Disallow: /wp-login.php
Disallow: /wp-signup.php
Disallow: /press-this.php
Disallow: /remote-login.php
Disallow: /activate/
Disallow: /cgi-bin/
Disallow: /mshots/v1/
Disallow: /next/
Disallow: /public.api/

# This file was generated on Wed, 02 Jan 2019 02:12:29 +0000
User-agent: *
Disallow: /?s=
Disallow: /*/?s=
Disallow: /search/
Disallow: /search?
Disallow: *?v02
Disallow: *?replytocom
User-agent: *
Disallow: /*preview=true
Disallow: /*theme_preview=true
Disallow: /fashion-news/fashion-scoops/ralph-lauren-french-legion-of-honor-postponed-protests-1202920783/ 
Disallow: /business-news/financial/jd-com-third-quarter-earnings-1202909444/ 
Disallow: /business-news/business-features/retailers-digital-tools-1202882311/ 
Disallow: /eye/lifestyle/gallery/a-look-inside-artist-leslie-waynes-studio-10955796/ 
Disallow: /business-news/financial/how-macys-incoming-ceo-jeffrey-gennette-plans-to-right-the-ship-10843806/ 
Disallow: /eye/lifestyle/marni-to-unveil-marni-playland-at-milan-design-week-10841193/ 
Disallow: /eye/parties/gallery/inside-bella-hadid-x-chrome-hearts-launch-party-at-paris-fashion-week-photos-10834237/ 
Disallow: /business-news/financial/ross-stores-earnings-2016-fourth-quarter-sales-climb-10825180/ 
Disallow: /fashion-news/designer-luxury/cushnie-et-ochs-expands-sphere-influence-10709359/ 
Disallow: /business-news/media/jim-nortons-conde-move-could-signal-more-aol-shifts-10673532/ 
Disallow: /accessories-news/jewelry/gallery/spring-accessories-the-top-20-bar-earrings-10541275/ 
Disallow: /otll-error/ 
Disallow: /verify/ 
