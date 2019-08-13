# robots.txt for https://www.mouthshut.com/
# Bad bots included
# Google Ads

User-agent: Mediapartners-Google
Disallow: /admin/
Disallow: /error.php
Disallow: /login_now.php
Disallow: /register.php
Disallow: /forgot_pwd.php
Disallow: /registercorp.php
Disallow: /help/cbterms.pdf
Disallow: /web/     
Disallow: /facebooklogin/
Disallow: /review/tempp/
Disallow: /review/temp/
Disallow: /WebResource.axd
Disallow: /business/register
Allow: /

User-Agent: Googlebot
Disallow: /admin/
Disallow: /error.php
Disallow: /login_now.php
Disallow: /register.php
Disallow: /forgot_pwd.php
Disallow: /registercorp.php
Disallow: /help/cbterms.pdf 
Disallow: /web/                 
Disallow: /facebooklogin/
Disallow: /review/tempp/
Disallow: /review/temp/
Disallow: /WebResource.axd
Disallow: /business/register
Allow: /

User-Agent: Bingbot
Disallow: /admin/
Disallow: /error.php
Disallow: /login_now.php
Disallow: /register.php
Disallow: /forgot_pwd.php
Disallow: /registercorp.php
Disallow: /help/cbterms.pdf
Disallow: /web/                 
Disallow: /facebooklogin/
Disallow: /review/tempp/
Disallow: /review/temp/
Disallow: /WebResource.axd 
Disallow: /business/register
Allow: /

# Yahoo BOt
User-Agent: Slurp
Disallow: /admin/
Disallow: /error.php
Disallow: /login_now.php
Disallow: /register.php
Disallow: /forgot_pwd.php
Disallow: /registercorp.php
Disallow: /help/cbterms.pdf
Disallow: /web/                 
Disallow: /facebooklogin/
Disallow: /review/tempp/
Disallow: /review/temp/
Disallow: /WebResource.axd 
Disallow: /business/register
Allow: /

# Wayback BOt
User-Agent: ia_archiver
Disallow: /admin/
Disallow: /error.php
Disallow: /login_now.php
Disallow: /register.php
Disallow: /forgot_pwd.php
Disallow: /registercorp.php
Disallow: /help/cbterms.pdf
Disallow: /web/                 
Disallow: /facebooklogin/
Disallow: /review/tempp/
Disallow: /review/temp/
Disallow: /WebResource.axd 
Disallow: /business/register



User-agent: Twitterbot
Disallow: /admin/
Disallow: /error.php
Disallow: /login_now.php
Disallow: /register.php
Disallow: /forgot_pwd.php
Disallow: /registercorp.php
Disallow: /help/cbterms.pdf
Disallow: /web/                 
Disallow: /facebooklogin/
Disallow: /review/tempp/
Disallow: /review/temp/
Disallow: /WebResource.axd
Disallow: /business/register
Allow: /
 
# Disallow TerrawizBot
User-agent: TerrawizBot
Disallow: /

#Bad Bots reported by botreports.com

User-agent: OmniExplorer_Bot
Disallow: /

User-agent: FreeFind
Disallow: /

User-agent: BecomeBot
Disallow: /

User-agent: Nutch
Disallow: /

User-agent: Jetbot/1.0
Disallow: /

User-agent: Jetbot
Disallow: /

User-agent: WebVac
Disallow: /

User-agent: Stanford
Disallow: /

User-agent: naver
Disallow: /

User-agent: dumbot
Disallow: /

User-agent: Hatena Antenna
Disallow: /

User-agent: grub-client
Disallow: /

User-agent: grub
Disallow: /

User-agent: WebZip
Disallow: /

User-agent: larbin
Disallow: /

User-agent: b2w/0.1
Disallow: /

User-agent: Copernic
Disallow: /

User-agent: psbot
Disallow: /

User-agent: Python-urllib
Disallow: /

User-agent: NetMechanic
Disallow: /

User-agent: URL_Spider_Pro
Disallow: /

User-agent: CherryPicker
Disallow: /

User-agent: EmailCollector
Disallow: /

User-agent: EmailSiphon
Disallow: /

User-agent: WebBandit
Disallow: /

User-agent: EmailWolf
Disallow: /

User-agent: ExtractorPro
Disallow: /

User-agent: CopyRightCheck
Disallow: /

User-agent: Crescent
Disallow: /

User-agent: SiteSnagger
Disallow: /

User-agent: ProWebWalker
Disallow: /

User-agent: CheeseBot
Disallow: /

User-agent: LNSpiderguy
Disallow: /

User-agent: Alexibot
Disallow: /

User-agent: Teleport
Disallow: /

User-agent: TeleportPro
Disallow: /

User-agent: Stanford Comp Sci
Disallow: /

User-agent: MIIxpc
Disallow: /

User-agent: Telesoft
Disallow: /

User-agent: Website Quester
Disallow: /

User-agent: moget/2.1
Disallow: /

User-agent: WebZip/4.0
Disallow: /

User-agent: WebStripper
Disallow: /

User-agent: WebSauger
Disallow: /

User-agent: WebCopier
Disallow: /

User-agent: NetAnts
Disallow: /

User-agent: Mister PiX
Disallow: /

User-agent: WebAuto
Disallow: /

User-agent: TheNomad
Disallow: /

User-agent: WWW-Collector-E
Disallow: /

User-agent: RMA
Disallow: /

User-agent: libWeb/clsHTTP
Disallow: /

User-agent: asterias
Disallow: /

User-agent: httplib
Disallow: /

User-agent: turingos
Disallow: /

User-agent: spanner
Disallow: /

User-agent: InfoNaviRobot
Disallow: /

User-agent: Harvest/1.5
Disallow: /

User-agent: Bullseye/1.0
Disallow: /

User-agent: Crescent Internet ToolPak HTTP OLE Control v.1.0
Disallow: /

User-agent: CherryPickerSE/1.0
Disallow: /

User-agent: CherryPickerElite/1.0
Disallow: /

User-agent: WebBandit/3.50
Disallow: /

User-agent: NICErsPRO
Disallow: /

User-agent: Microsoft URL Control - 5.01.4511
Disallow: /

User-agent: DittoSpyder
Disallow: /

User-agent: Foobot
Disallow: /

User-agent: SpankBot
Disallow: /

User-agent: BotALot
Disallow: /

User-agent: lwp-trivial/1.34
Disallow: /

User-agent: lwp-trivial
Disallow: /

User-agent: BunnySlippers
Disallow: /

User-agent: Microsoft URL Control - 6.00.8169
Disallow: /

User-agent: URLy Warning
Disallow: /

User-agent: Wget/1.6
Disallow: /

User-agent: Wget/1.5.3
Disallow: /

User-agent: Wget
Disallow: /

User-agent: LinkWalker
Disallow: /

User-agent: cosmos
Disallow: /

User-agent: moget
Disallow: /

User-agent: hloader
Disallow: /

User-agent: humanlinks
Disallow: /

User-agent: Kenjin Spider
Disallow: /

User-agent: Iron33/1.0.2
Disallow: /

User-agent: Bookmark search tool
Disallow: /

User-agent: GetRight/4.2
Disallow: /

User-agent: FairAd Client
Disallow: /

User-agent: Gaisbot
Disallow: /

User-agent: Aqua_Products
Disallow: /

User-agent: Radiation Retriever 1.1
Disallow: /

User-agent: Flaming AttackBot
Disallow: /

User-agent: Oracle Ultra Search
Disallow: /

User-agent: MSIECrawler
Disallow: /

User-agent: PerMan
Disallow: /

User-agent: searchpreview
Disallow: /

User-agent: sootle
Disallow: /

User-agent: es
Disallow: /

User-agent: Enterprise_Search/1.0
Disallow: /

User-agent: Enterprise_Search
Disallow: /

User-agent: Synthesio
Disallow: /

User-agent: Synthesio Crawler release MonaLisa (contact at synthesio dot fr)
Disallow: /

User-Agent: *
Disallow: /admin/
Disallow: /error.php
Disallow: /login_now.php
Disallow: /register.php
Disallow: /forgot_pwd.php
Disallow: /registercorp.php
Disallow: /help/cbterms.pdf 
Disallow: /web/                 
Disallow: /facebooklogin/
Disallow: /review/tempp/
Disallow: /review/temp/
Disallow: /WebResource.axd
Disallow: /business/register
Allow: /
