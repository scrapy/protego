#Updated on 4/9/2018
#User-agent Disallow List with URL Link

User-agent: ZoomSpider		#http://www.wrensoft.com/zoom/support/useragent.html
Disallow: /
User-agent: Exabot		#http://www.exalead.com/search/webmasterguide
 Disallow: /
User-agent: ICC-Crawler		#http://www.nict.go.jp/en/univ-com/plan/crawl.html
Disallow: /
User-agent: ichiro		#http://search.goo.ne.jp/option/use/sub4/sub4-1/
Disallow: /
User-agent: Yeti		#http://www.botopedia.org/user-agent-list/search-bots/item/340-yeti-naverbot
Disallow: /
User-agent: ssearch_bot		#http://www.semantissimo.de/
Disallow: /
User-agent: ChangeDetection	#http://www.changedetection.com/bot.html
Disallow: /
User-agent: Job Roboter Spider	#http://www.webintegration.at/jobroboter_suchmaschine
Disallow: /
User-agent: Xenu Link Sleuth	#http://home.snafu.de/tilman/xenulink.html
Disallow: /
User-agent: Hatena Antenna	#(BAD)Unknown URL
Disallow: /
User-agent: linkdexbot		#http://www.linkdex.com/m/bots/
Disallow: /
User-agent: FacebookExternalHit #http://www.facebook.com/externalhit_uatext.php
Disallow: /
User-agent: Slackbot 		#https://api.slack.com/robots
Disallow: /
User-agent: Qwantify 		#https://www.qwant.com/
Disallow: /
User-agent: FeedDemon		#http://www.feeddemon.com/
Disallow: /
User-agent: Dotbot		#https://moz.com/researchtools/ose/dotbot
Disallow: /
User-agent: SemrushBot		#http://www.semrush.com/bot/
Disallow: /
User-agent: SeznamBot		#http://napoveda.seznam.cz/cz/seznambot/
Disallow: /
User-agent: Feedly		#http://www.feedly.com/fetcher.html
Disallow: /
User-agent: MJ12bot		#http://www.majestic12.co.uk/projects/dsearch/mj12bot.php
Disallow: /
User-agent: YisouSpider		#(BAD)http://user-agents.me/crawler/yisouspider 
Disallow: /
User-agent: magpie-crawler	#https://www.brandwatch.com/how-it-works/
Disallow: /
User-agent: Alexabot		#https://support.alexa.com/hc/en-us/articles/200462340-Certification-Crawler-Information
Disallow: /
User-agent: Speedy Spider	#(BAD)http://www.entireweb.com/
Disallow: /
User-agent: GarlikCrawler	#(BAD)http://www.garlik.com/
Disallow: /
User-agent: AhrefsBot		#https://ahrefs.com/robot
Disallow: /
User-agent: Slurp		#http://www.useragentstring.com/Yahoo!%20Slurp_id_75.php		
Disallow: /
User-agent: YandexBot		#http://help.yandex.com/search/robots/agent.xml
Disallow: /
User-agent: sogou spider	#http://www.sogou.com/docs/help/webmasters.htm#07	
Disallow: /
User-agent: maxum		#http://www.informedusa.com/t/phantom7.15.html
Disallow: /
User-agent: curious george	#http://www.analyticsseo.com/the-analytics-seo-crawler-curious-george/
Disallow: /
User-agent: WeSEE		#(BAD)http://www.wesee.com/bot/
Disallow: /
User-agent: rogerbot		#http://moz.com/help/pro/what-is-rogerbot-
Disallow: /
User-agent: dotbot		#https://moz.com/researchtools/ose/dotbot
Disallow: /
User-agent: Y!J-ASR		#https://help.yahoo.com/kb/search/SLN22600.html?impressions=true
Disallow: /
User-agent: Y!J-BSC		#https://help.yahoo.com/kb/search/SLN22600.html?impressions=true
Disallow: /
User-agent: ramBot xtreme x.x	#(BAD)Unknown URL
Disallow: /
User-agent: Daumoa		#(BAD)https://www.webmasterworld.com/search_engine_spiders/3895299.htm
Disallow: /
User-agent: Who.is Bot		#https://www.webmasterworld.com/search_engine_spiders/4427797.htm
Disallow: /
User-agent: psbot		#http://www.picsearch.com/bot.html
Disallow: /
User-agent: yacybot		#http://yacy.net/bot.html
Disallow: /
User-agent: Nutch		#http://nutch.apache.org/bot.html
Disallow: /
User-agent: BUbiNG		#http://law.di.unimi.it/software.php#buging
Disallow: /
User-agent: bingbot     #http://www.bing.com/bingbot.htm
Disallow: /thorproduct.cfm*
User-agent: bingbot     #http://www.bing.com/bingbot.htm
Disallow: /ThorProduct.cfm*
User-agent: Mappy		#http://mappydata.net/#eng
Disallow: /

#User-agent Crawl Delay Disallow

User-agent: *
Crawl-delay: 30
Disallow: /honey/
Disallow: /thorcat/
Disallow: /Thorcat/
Disallow: /search/
Disallow: /thorsearch.cfm*
Disallow: /advSearch.cfm
Disallow: /advSearchDetail.cfm
Disallow: /*.dxf$
Disallow: /*.sldrpt$
Disallow: /*.step$
Disallow: /*.vbi$
Disallow: /*.zip$
Disallow: /*.eprt$
Disallow: /*.bak$
Disallow: /*.exe$
Disallow: /images/catalog/
Disallow: /trackClick.cfc
Disallow: /NewGroupPage9.cfm?ObjectGroup_ID=5569
Disallow: /Navigation.cfm?Guide_ID=2184
Disallow: /newgrouppage9_pf.cfm*
Disallow: /newgrouppage9pf.cfm*
Disallow: /cfc/familyPage/priceRequest.cfc*
Disallow: /sitemap.cfm*
Disallow: /action.cfm*
Disallow: /RoHS_cert.cfm*
Disallow: /_sd.cfm*
Disallow: /AJAX/
Disallow: /CFC/
Disallow: /cfc/
Disallow: /JS/
Disallow: /CFIDE/
Disallow: /JSON/
Disallow: /*?*CurrencySelect=*
Disallow: /*?*Language=*
Disallow: /*?*isPreview=*
Disallow: /*?*ispreview=*
Disallow: /*.cfc$
Disallow: /contentEditor/
Disallow: /contenteditor/
Disallow: /rest/library/
Disallow: /_volPricing.cfm
Disallow: /_volpricing.cfm
Disallow: /RoHS_cert.cfm
Disallow: /rohs_cert.cfm

