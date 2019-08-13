# If you are regularly crawling WordPress.com sites, please use our firehose to receive real-time push updates instead.
# Please see https://developer.wordpress.com/docs/firehose/ for more details.

User-agent: *
Disallow: /wp-admin/
Allow: /wp-admin/admin-ajax.php
Sitemap: https://hollywoodlife.com/news-sitemap.xml
Sitemap: https://hollywoodlife.com/sitemap_index.xml
Disallow: /wp-login.php
Disallow: /wp-signup.php
Disallow: /press-this.php
Disallow: /remote-login.php
Disallow: /activate/
Disallow: /cgi-bin/
Disallow: /mshots/v1/
Disallow: /next/
Disallow: /public.api/

# This file was generated on Wed, 20 Mar 2019 19:23:51 +0000
User-agent: *
Disallow: /?s=
Disallow: /*/?s=
Disallow: /search/
Disallow: /search?
Disallow: *?v02
Disallow: *?replytocom
Disallow: /genre/
Disallow: /genre/*
User-agent: *
Disallow: /*preview=true
Disallow: /*theme_preview=true
Disallow: /2019/02/10/maren-morris-dress-grammys-2019-grammy-awards-red-carpet-photos/ 
Disallow: /2019/02/08/what-to-buy-valentines-day-gift-hollywoodlife-box/ 
Disallow: /feature/hollywoodlife-winter-box-subscription-what-to-buy-inside-the-box/ 
Disallow: /feature/hollywood-life-box-subscription-seasonal-get-the-look/ 
Disallow: /2018/11/14/ronnie-ortiz-magro-hot-tub-another-woman-jersey-shore-cheating/ 
Disallow: /2018/11/13/reader-survey/ 
Disallow: /2018/05/17/kellyn-eliminated-survivor-ghost-island-season-36-interview/ 
Disallow: /2018/02/16/zendaya-blake-lively-emily-blunt-side-eye-nyfw-video-reaction/ 
Disallow: /2018/02/05/this-is-us-jack-heart-attack-death-reaction/ 
Disallow: /2018/01/30/glee-stars-mark-salling-death-react-suicide/ 
Disallow: /2018/01/26/holly-marie-combs-reaction-charmed-reboot-tweets/ 
Disallow: /pics/jennifer-lopez-taco-night-party-kim-kourtney-kardashian-pics/ 
Disallow: /pics/kardashian-christmas-2017-photos/ 
Disallow: /pics/khloe-kardashian-pregnant-photos-baby-bump-pictures/ 
Disallow: /pics/nicki-minaj-raciest-selfies-2017/ 
