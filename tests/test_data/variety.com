# If you are regularly crawling WordPress.com sites, please use our firehose to receive real-time push updates instead.
# Please see https://developer.wordpress.com/docs/firehose/ for more details.

User-agent: *
Disallow: /account/
User-agent: *
Disallow: /wp-admin/
Allow: /wp-admin/admin-ajax.php
Sitemap: https://variety.com/news-sitemap.xml
Sitemap: https://variety.com/sitemap_index.xml

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

# This file was generated on Wed, 20 Mar 2019 19:22:45 +0000
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
Disallow: /video/frankie-shaw-smilf-feminist-show/ 
Disallow: /video/darren-criss-fan-out-over-mandy-moore-music/ 
Disallow: /video/mandy-moore-darren-criss-actors-on-actors-full-interview/ 
Disallow: /video/edie-falco-jk-simmons/ 
Disallow: /video/alison-brie-explains-how-working-with-women-on-glow-changed-her-body-image/ 
Disallow: /video/benedict-cumberbatch-claire-foy-actors-on-actors/ 
Disallow: /video/laura-dern-angela-bassett-reflect-on-their-own-metoo-experiences/ 
Disallow: /video/michael-b-jordan-audition-roles-written-white-men/ 
Disallow: /ces_one/ 
Disallow: /2015/tv/news/jessica-jones-mike-colter-luke-cage-netflix-1201843290/ 
Disallow: /2015/tv/news/lamar-odom-coma-awakens-breathing-1201620175/ 
Disallow: /premier-conferences-registration/ 
Disallow: /premier-archives-registration/ 
Disallow: /genre/
Disallow: /genre/*
