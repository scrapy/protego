# /robots.txt for http://us.playstation.com/
User-agent: *

Sitemap: http://us.playstation.com/sitemap.xml
Allow: /$
Allow: /grid/
Disallow: /grid/*
Disallow: /errorpages/
Disallow: /errorpages/noflash/
Disallow: /blank/
Disallow: /uwps/UpdateGameRatingReview?*
Disallow: /communityfiles/
Disallow: /ga-ss/

User-agent: gotdotnet.ch proxy services
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

User-agent: linko
Disallow: /

User-agent: HTTrack
Disallow: /

User-agent: Microsoft.URL.Control
Disallow: /

User-agent: Xenu
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

User-agent: NPBot
Disallow: /

User-agent: WebReaper
Disallow: /