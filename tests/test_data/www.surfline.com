# Robots.txt file for https://www.surfline.com

User-agent: Mediapartners-Google
Disallow:

User-agent: AhrefsBot
Disallow: /

User-agent: MJ12bot
Disallow: /

User-agent: YRSPider
Disallow: /

User-agent: CamontSpider
Disallow: /

User-agent: ccbot
Disallow: /

User-agent: eZooms
Disallow: /

User-agent: purebot
Disallow: /

User-agent: pikimal
Disallow: /

User-agent: pik-a-part
Disallow: /

User-agent: dotbot
Disallow: /

# Wikipedia work bots:
User-agent: IsraBot
Disallow: /

User-agent: Orthogaffe
Disallow: /

User-agent: UbiCrawler
Disallow: /

User-agent: DOC
Disallow: /

User-agent: Zao
Disallow: /

User-agent: sitecheck.internetseer.com
Disallow: /

User-agent: Zealbot
Disallow: /

User-agent: MSIECrawler
Disallow: /

User-agent: SiteSnagger
Disallow: /

User-agent: SpyFu
Disallow: /

User-agent: WebStripper
Disallow: /

User-agent: WebCopier
Disallow: /

User-agent: Fetch
Disallow: /

User-agent: Offline Explorer
Disallow: /

User-agent: Teleport
Disallow: /

User-agent: TeleportPro
Disallow: /

User-agent: WebZIP
Disallow: /

User-agent: linkdex
Disallow: /

User-agent: linko
Disallow: /

User-agent: HTTrack
Disallow: /

User-agent: Microsoft.URL.Control
Disallow: /

User-agent: Xenu
Disallow: /

User-agent: Xenu Link Sleuth
Disallow: /

User-agent: larbin
Disallow: /

User-agent: libwww
Disallow: /

User-agent: ZyBORG
Disallow: /

User-agent: Download Ninja
Disallow: /

User-agent: wget
Disallow: /

User-agent: grub-client
Disallow: /

User-agent: k2spider
Disallow: /

User-agent: NPBot
Disallow: /

User-agent: WebReaper
Disallow: /

User-agent: ia_archiver
Disallow: /

User-agent: discobot
Disallow: /

User-agent: sitebot
disallow: /

User-agent: Bender
disallow: /

User-agent: Yandex
Crawl-delay: 500

User-agent: Baiduspider
Crawl-delay: 500

User-agent: *
Disallow: /account_shared
Disallow: /admin
Disallow: /ads
Disallow: /advertiser
Disallow: /alpha
Disallow: /api
Disallow: /audio
Disallow: /Audio
Disallow: /badh
Disallow: /bamp_v02
Disallow: /bamp_v03
Disallow: /bapv
Disallow: /barl
Disallow: /barl_v02
Disallow: /basp
Disallow: /bavp02
Disallow: /bavs_v02
Disallow: /beta
Disallow: /blank
Disallow: /bookmarks
Disallow: /build
Disallow: /bw
Disallow: /bwcam
Disallow: /campaign
Disallow: /calendar
Disallow: /cfide
Disallow: /comments
Disallow: /create-account
Disallow: /dashboard
Disallow: /dtd
Disallow: /dvd
Disallow: /errors
Disallow: /external_assets
Disallow: /externalcam
Disallow: /eyeblaster
Disallow: /ezprints
Disallow: /faces
Disallow: /flash
Disallow: /flashcam
Disallow: /flashcam2
Disallow: /flashcam2ub
Disallow: /flashcam3
Disallow: /flashcam4
Disallow: /flashcam5
Disallow: /footer
Disallow: /for_review
Disallow: /forums
Disallow: /ftp
Disallow: /functions
Disallow: /globalnav
Disallow: /globalnav2
Disallow: /globalnav2OLD
Disallow: /globalnav3
Disallow: /globalnav4
Disallow: /hdcam
Disallow: /hdcam2
Disallow: /hdcam3
Disallow: /hdml
Disallow: /hlsec
Disallow: /holiday
Disallow: /home2
Disallow: /home3
Disallow: /homeocean
Disallow: /lite
Disallow: /lite2
Disallow: /lite2go
Disallow: /lite3
Disallow: /lite5
Disallow: /live_site_media
Disallow: /liza_blog
Disallow: /memcached
Disallow: /modules
Disallow: /music
Disallow: /mutinymedia
Disallow: /partners
Disallow: /podcast
Disallow: /popups
Disallow: /ppt
Disallow: /ppv
Disallow: /promobox
Disallow: /prune_files
Disallow: /redirect
Disallow: /registration
Disallow: /reports2
Disallow: /rr
Disallow: /rsession
Disallow: /rules
Disallow: /sched
Disallow: /search/
Disallow: /sign-in
Disallow: /slwl
Disallow: /sms
Disallow: /soquel
Disallow: /sound
Disallow: /store_email
Disallow: /sub_msg
Disallow: /surfline20
Disallow: /surgient
Disallow: /swf
Disallow: /syndication
Disallow: /teaser_images
Disallow: /test
Disallow: /tinymce
Disallow: /util
Disallow: /video-old
Disallow: /vimation
Disallow: /vodcast
Disallow: /w3c
Disallow: /wavetraks
Disallow: /webpoll
Disallow: /widgets2
Disallow: /wml
Disallow: /wx
Disallow: /freestreams
Disallow: /fusion

Sitemap: https://www.surfline.com/sitemaps/index.xml
