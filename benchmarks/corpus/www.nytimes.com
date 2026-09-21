# New York Times content is made available for your personal, non-commercial
# use subject to our Terms of Service here:
# https://help.nytimes.com/hc/en-us/articles/115014893428-Terms-of-Service.
# Use of any device, tool, or process designed to data mine or scrape the content
# using automated means is prohibited without prior written permission from
# The New York Times Company.  Prohibited uses include but are not limited to:
# (1) text and data mining activities under Art. 4 of the EU Directive on Copyright in
# the Digital Single Market;
# (2) the development of any software, machine learning, artificial intelligence (AI),
# and/or large language models (LLMs);
# (3) creating or providing archived or cached data sets containing our content to others; and/or
# (4) any commercial purposes.
# Contact https://nytlicensing.com/contact/ for assistance.

User-agent: *
User-agent: Googlebot
Disallow: /ads/
Disallow: /adx/bin/
Disallow: /athletic/wp/wp-admin/
Allow: /athletic/wp/wp-admin/admin-ajax.php
Disallow: /athletic/async-*
Disallow: /athletic/search/*
Allow: /athletic/search/$
Disallow: /athletic/checkout/
Disallow: /athletic/checkout?plan_id*
Allow: /athletic/checkout/$
Disallow: /athletic/checkout2*
Disallow: /athletic/login/
Disallow: /athletic/login?login_source*
Disallow: /athletic/login?ref_page*
Allow: /athletic/login/$
Disallow: /athletic/login2/
Disallow: /athletic/login2?login_source*
Disallow: /athletic/login2?ref_page*
Allow: /athletic/login2/$
Disallow: /athletic/report/
Disallow: /athletic/*/discuss/*
Allow: /athletic/live-blogs/discuss/
Allow: /athletic/mlb/game/discuss/
Disallow: /athletic/register/
Disallow: /athletic/register?welcome_redirect*
Disallow: /athletic/register2/
Disallow: /athletic/register2?welcome_redirect*
Disallow: /athletic/betmgm-redirect*
Disallow: /athletic/cdn-cgi/
Disallow: /athletic/verizon/*
Disallow: /athletic/forgot-password/*
Disallow: /athletic/forgot-password2/*
Disallow: /athletic/amp-social-login*
Disallow: /athletic/track-analytics/
Disallow: /athletic/amp-auth/
Disallow: /athletic/rss-feed/
Disallow: /athletic/*?*rss=1
Disallow: /athletic/global-color-test.php
Disallow: /athletic/global-font-test.php
Disallow: /athletic/graphql*
Disallow: /athletic/api*
Disallow: /athletic/ip*
Disallow: /athletic/call-set-cookie-with-context/*
Disallow: /athletic/get-current-user/
Disallow: /athletic/pv.json
Disallow: /athletic/following-feed-test/*
Disallow: /athletic*/boxscore/*
Disallow: /athletic/feed-test/
Disallow: /athletic*/signed-mp3-redirect-url/*
Disallow: /athletic/embedded-interactive/*
Disallow: /card/panel/
Disallow: /panel/
Disallow: /puzzles/leaderboards/invite/*
Disallow: /svc
Allow: /svc/crosswords
Allow: /svc/games
Allow: /svc/letter-boxed
Allow: /svc/spelling-bee
Allow: /svc/wordle
Allow: /svc/connections
Allow: /svc/sudoku
Allow: /svc/strands
Allow: /svc/pips
Disallow: /video/embedded/*
Disallow: /search
Disallow: /multiproduct/
Disallow: /hd/
Disallow: /inyt/
Disallow: /*?*query=
Disallow: /*.pdf$
Disallow: /*?*login=
Disallow: /*?*campaignId=
Disallow: /*?*mcubz=
Disallow: /*?*smprod=
Disallow: /*?*ProfileID=
Disallow: /*?*ListingID=
Disallow: /*?*campaign_id=
Disallow: /*?*hybrid=
Disallow: /*?*entry=
Disallow: /*?*embed=
Disallow: /*?ls=
Disallow: /*?*&ls=
Disallow: /v1/initialize*
Disallow: /v1/rgstr*
Disallow: /wirecutter/wp-admin/
Disallow: /wirecutter/*.zip$
Disallow: /wirecutter/*.csv$
Disallow: /wirecutter/deals/beta
Disallow: /wirecutter/data-requests
Disallow: /wirecutter/search
Disallow: /wirecutter/*?s=
Disallow: /wirecutter/*&xid=
Disallow: /wirecutter/*?q=
Disallow: /wirecutter/*?l=
Disallow: /wirecutter/*?merchant=
Disallow: /wirecutter/out/
Disallow: /search
Disallow: /subscription/*?*source=
Disallow: /subscription/*?*onboarded=
Disallow: /*?*smid=
Disallow: /*?*partner=
Disallow: /*?*utm_source=
Allow: /wirecutter/*?*utm_source=
Allow: /ads/public/
Allow: /svc/news/v3/all/pshb.rss
Allow: /wirecutter/reviews/*?*utm_source=
Allow: /wirecutter/blog/*?*utm_source=
Allow: /wirecutter/lists/*?*utm_source=
Allow: /wirecutter/gifts/*?*utm_source=


# Googlebot Specific Rules

User-agent: Googlebot
Disallow: /athletic*adgroupid*
Disallow: /athletic*campaignid*
Disallow: /athletic*ad_id*
Disallow: /athletic*access_token*
Disallow: /athletic*amp_reader_id*
Disallow: /athletic*/?source=*
Disallow: /athletic/*?*embed=1


# Disallow Rules

User-agent: AliyunSecBot
Disallow: /

User-agent: Amazonbot
Disallow: /wirecutter/

User-agent: anthropic-ai
Disallow: /

User-agent: Applebot-Extended
Disallow: /

User-agent: archive.org_bot
Disallow: /

User-agent: AudigentAdBot
Disallow: /

User-agent: AwarioRssBot
User-agent: AwarioSmartBot
Disallow: /

User-agent: BLEXBot
Disallow: /

User-agent: Brightbot
Disallow: /

User-agent: Bytespider
Disallow: /

User-agent: CCBot
Disallow: /

User-agent: ChatGPT-User
Disallow: /

User-agent: ClaudeBot
Disallow: /

User-agent: Claude-SearchBot
Disallow: /

User-agent: Claude-User
Disallow: /

User-agent: Claude-Web
Disallow: /

User-agent: cohere-ai
Disallow: /

User-agent: DataForSeoBot
Disallow: /

User-agent: Diffbot
Disallow: /

User-agent: Diffbot-User
Disallow: /

User-agent: DuckAssistBot
Disallow: /

User-agent: EchoboxBot
Disallow: /

User-agent: ExaBot
Disallow: /

User-agent: ExaSearchBot
Disallow: /

User-agent: FacebookBot
Disallow: /

User-agent: FirecrawlAgent
Disallow: /

User-agent: FriendlyCrawler
Disallow: /

User-agent: Google-CloudVertexBot
Disallow: /
Allow: /wirecutter/
Allow: /athletic/

User-agent: Google-Extended
Disallow: /

User-agent: GPTBot
Disallow: /

User-agent: ImagesiftBot
Disallow: /

User-agent: Jetslide
Disallow: /

User-agent: magpie-crawler
Disallow: /

User-agent: Meta-ExternalAgent
User-agent: meta-externalagent
Disallow: /

User-agent: Meta-ExternalFetcher
User-agent: meta-externalfetcher
Disallow: /

User-agent: Meta-WebIndexer
User-agent: meta-webindexer/1.1
Disallow: /

User-agent: MyCentralAIScraperBot
Disallow: /

User-agent: NewsNow
Disallow: /

User-agent: news-please
Disallow: /

User-agent: OAI-SearchBot
Disallow: /

User-agent: omgili
Disallow: /

User-agent: omgilibot
Disallow: /

User-agent: peer39_crawler
User-agent: peer39_crawler/1.0
Disallow: /

User-agent: PerplexityBot
Disallow: /

User-agent: Perplexity-User
Disallow: /

User-agent: Poseidon Research Crawler
Disallow: /

User-agent: quillbot.com
Disallow: /

User-agent: Quora-Bot
Disallow: /

User-agent: Scrapy
Disallow: /

User-agent: SeekrBot
Disallow: /

User-agent: SeznamHomepageCrawler
Disallow: /

User-agent: ShapBot
Disallow: /

User-agent: TaraGroup Intelligent Bot
Disallow: /

User-agent: Timpibot
Disallow: /

User-agent: TurnitinBot
Disallow: /

User-agent: ViennaTinyBot
Disallow: /

User-agent: YouBot
Disallow: /


# Ad Bot Rules

User-agent: AmazonAdBot
Allow: /


# Social Bot Rules

User-agent: facebookexternalhit
Allow: /*?*smid=

User-agent: Twitterbot
Allow: /*?*smid=

User-agent: RedditBot
Allow: /*?*smid=

# Sitemaps

Sitemap: https://www.nytimes.com/sitemaps/new/news.xml.gz
Sitemap: https://www.nytimes.com/sitemaps/new/sitemap.xml.gz
Sitemap: https://www.nytimes.com/sitemaps/new/collections.xml.gz
Sitemap: https://www.nytimes.com/sitemaps/new/video.xml.gz
Sitemap: https://www.nytimes.com/sitemaps/new/cooking.xml.gz
Sitemap: https://www.nytimes.com/sitemaps/new/recipe-collects.xml.gz
Sitemap: https://www.nytimes.com/sitemaps/new/regions.xml
Sitemap: https://www.nytimes.com/sitemaps/new/best-sellers.xml
Sitemap: https://www.nytimes.com/sitemaps/new/subscription-landing-pages.xml
Sitemap: https://www.nytimes.com/sitemaps/new/weather.xml.gz
Sitemap: https://www.nytimes.com/sitemaps/new/espanol.xml.gz
Sitemap: https://www.nytimes.com/sitemaps/new/espanol-collects.xml.gz
Sitemap: https://www.nytimes.com/wirecutter/sitemapindex.xml
Sitemap: https://www.nytimes.com/athletic/sitemap-videos-index.xml
Sitemap: https://www.nytimes.com/athletic/sitemap-authors.xml
Sitemap: https://www.nytimes.com/athletic/sitemap-verticals.xml
Sitemap: https://www.nytimes.com/athletic/sitemap-teams.xml
Sitemap: https://www.nytimes.com/athletic/sitemap-cities.xml
Sitemap: https://www.nytimes.com/athletic/sitemap-players.xml
Sitemap: https://www.nytimes.com/athletic/sitemap-tags.xml
Sitemap: https://www.nytimes.com/athletic/sitemap-stats.xml
Sitemap: https://www.nytimes.com/athletic/sitemap-schedule.xml
Sitemap: https://www.nytimes.com/athletic/sitemap-roster.xml
Sitemap: https://www.nytimes.com/athletic/sitemap.xml
Sitemap: https://www.nytimes.com/games-assets/v2/assets/sitemap/games.xml
