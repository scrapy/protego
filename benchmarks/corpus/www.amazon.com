User-agent: *
Disallow: /exec/obidos/account-access-login
Disallow: /exec/obidos/change-style
Disallow: /exec/obidos/flex-sign-in
Disallow: /exec/obidos/handle-buy-box
Disallow: /exec/obidos/tg/cm/member/
Disallow: /gp/aw/help/id=sss
Disallow: /gp/cart
Disallow: /gp/flex
Disallow: /gp/product/e-mail-friend
Disallow: /gp/product/product-availability
Disallow: /gp/product/rate-this-item
Disallow: /gp/sign-in
Disallow: /gp/reader
Disallow: /gp/sitbv3/reader
Disallow: /gp/richpub/syltguides/create
Disallow: /gp/gfix
Disallow: /gp/associations/wizard.html
Disallow: /gp/dmusic/order
Disallow: /gp/legacy-handle-buy-box.html
Disallow: /gp/aws/ssop
Disallow: /gp/yourstore
Disallow: /gp/gift-central/organizer/add-wishlist
Disallow: /gp/vote
Disallow: /gp/voting/
Disallow: /gp/music/wma-pop-up
Disallow: /gp/customer-images
Disallow: /gp/richpub/listmania/createpipeline
Disallow: /gp/content-form
Disallow: /gp/pdp/invitation/invite
Disallow: /gp/customer-reviews/common/du
Disallow: /gp/customer-reviews/write-a-review.html
Disallow: /gp/associations/wizard.html
Disallow: /gp/music/clipserve
Disallow: /gp/customer-media/upload
Disallow: /gp/history
Disallow: /gp/item-dispatch
Disallow: /gp/dmusic/order/handle-buy-box.html
Disallow: /gp/recsradio
Disallow: /gp/slredirect
Disallow: /dp/shipping/
Disallow: /dp/twister-update/
Disallow: /dp/manual-submit/
Disallow: /dp/e-mail-friend/
Disallow: /dp/product-availability/
Disallow: /dp/rate-this-item/
Disallow: /gp/registry/wishlist/*/reserve
Disallow: /gp/structured-ratings/actions/get-experience.html
Disallow: /gp/twitter/
Disallow: /ap/signin
Disallow: /gp/registry/wishlist/
Disallow: /wishlist/
Allow: /wishlist/universal*
Allow: /wishlist/vendor-button*
Allow: /wishlist/get-button*
Disallow: /gp/wishlist/
Allow: /gp/wishlist/universal*
Allow: /gp/wishlist/vendor-button*
Allow: /gp/wishlist/ipad-install*
Disallow: /registry/wishlist/
Disallow: /review/common/du
Disallow: /gp/registry/search.html
Disallow: /product-reviews/B0069IY63Y
Disallow: /gp/orc/rml/
Disallow: */gcrnsts
Disallow: /gp/gc/widget
Disallow: /gp/dmusic/mp3/player
Disallow: /gp/entity-alert/external
Disallow: /gp/customer-reviews/dynamic/sims-box
Disallow: /review/dynamic/sims-box
Disallow: /gp/redirect.html
Disallow: /gp/twister/ajaxv2
Disallow: /ss/twister/ajax
Disallow: /b?*node=7454917011
Disallow: /b?*node=7454927011
Disallow: /b?*node=7454939011
Disallow: /b?*node=7454898011
Disallow: /gp/customer-media/actions/delete/
Disallow: /gp/customer-media/actions/edit-caption/
Disallow: /gp/dmusic/
Allow: /gp/dmusic/promotions/PrimeMusic
Allow: /gp/dmusic/promotions/AmazonMusicUnlimited
Disallow: /gp/offer-listing/
Disallow: /b?*node=9052533011
Disallow: /lm/R1XIHQVKXSKBNJ
Disallow: /lm/R3HQ5WJSZK6QSO
Disallow: /surprise/
Disallow: /local/ajax/
Disallow: /gp/socialmedia/giveaways
Disallow: /gp/b2b-rd
Disallow: /gp/aw/so.html
Disallow: /reviews/iframe
Disallow: /gp/switch-language
Disallow: /ga/p/
Disallow: /gp/profile/
Disallow: /giveaway/host/setup/
Disallow: /ss/customer-reviews/lighthouse/
Disallow: /ospublishing/story/*
Disallow: /gp/aw/ol/
Disallow: /gp/promotion/
Disallow: /hz/leaderboard/top-reviewers/
Disallow: /creatorhub
Disallow: /creatorhub/*
Disallow: /slp/s$
Disallow: /-/
Allow: /-/es/
Allow: /-/en$
Allow: /-/zh_TW/
Allow: /-/zh_TW$
Allow: /-/he/
Allow: /-/he$
Disallow: /hz/help/contact/*/message/$
Disallow: /gp/aw/shoppingAids/
Disallow: /rss/people/*/reviews
Disallow: /gp/pdp/rss/*/reviews
Disallow: /gp/cdp/member-reviews/
Disallow: /gp/aw/cr/
Allow: /gp/offer-listing/B000
Allow: /gp/offer-listing/9000
Disallow: /gp/aag
Allow: /gp/aag/main?*seller=ABVFEJU8LS620
Disallow: /gp/pdp/profile/
Disallow: /gp/help/customer/express/c2c/
Disallow: /slp/*/b$
Disallow: /hz/contact-us/ajax/initiate-trusted-contact/
Disallow: /hp/video/
Disallow: /gp/video/api
Disallow: /gp/video/settings
Disallow: /gp/video/library
Disallow: /gp/video/watchlist
Disallow: /gp/video/mystuff
Disallow: /gp/video/profiles
Disallow: /gp/video/search
Disallow: /gp/video/auth
Disallow: /gp/video/salp/i
Disallow: /icdp/

User-agent: EtaoSpider
Disallow: /

User-agent: GPTBot
Disallow: /


User-agent: CCBot
Disallow: /

User-Agent: PerplexityBot
Disallow: /

User-agent: Google-Extended
Disallow: /

User-agent: GoogleAgent-Mariner
Disallow: /

User-agent: GoogleAgent-Shopping
Disallow: /

User-agent: ClaudeBot
Disallow: /

User-agent: meta-externalagent
Disallow: /

User-agent: Bytespider
Disallow: /

User-agent: Scrapy
Disallow: /

User-agent: PetalBot
Disallow: /

User-agent: Devin
Disallow: /

User-agent: omgili
Disallow: /

User-agent: AI2Bot
Disallow: /

User-agent: Gemini-Deep-Research
Disallow: /

User-agent: PanguBot
Disallow: /

User-agent: MistralAI-User
Disallow: /

User-agent: Diffbot
Disallow: /

User-agent: Sidetrade indexer bot
Disallow: /

User-agent: Google-NotebookLM
Disallow: /

User-agent: DuckAssistBot
Disallow: /

User-agent: Copilot
Disallow: /

User-agent: Ai2Bot-Dolma
Disallow: /

User-agent: Google-CloudVertexBot
Disallow: /

User-agent: meta-externalfetcher
Disallow: /

User-agent: iaskspider
Disallow: /

User-agent: wpbot
Disallow: /

User-agent: aiHitBot
Disallow: /

User-agent: cohere-ai
Disallow: /

User-agent: FriendlyCrawler
Disallow: /

User-agent: img2dataset
Disallow: /

User-agent: VelenPublicWebCrawler
Disallow: /

User-agent: YouBot
Disallow: /

User-agent: Brightbot
Disallow: /

User-agent: Claude-User
Disallow: /

User-agent: ClaudeBot
Disallow: /

User-agent: Claude-SearchBot
Disallow: /

User-agent: Perplexity-User
Disallow: /

User-agent: ISSCyberRiskCrawler
Disallow: /

User-agent: CopilotNative
Disallow: /

User-agent: CopilotSapphire
Disallow: /

User-agent: imgproxy
Disallow: /

User-agent: SemrushBot-SWA
Disallow: /

User-agent: ChatGPT-User
Disallow: /

User-agent: OAI-SearchBot
Disallow: /

User-agent: Timpibot
Disallow: /

User-agent: Thinkbot
Disallow: /

User-agent: AddSearchBot
Disallow: /

User-agent: AI2Bot-DeepResearchEval
Disallow: /

User-agent: Andibot
Disallow: /

User-agent: Anomura
Disallow: /

User-agent: atlassian-bot
Disallow: /

User-agent: BuddyBot
Disallow: /

User-agent: Channel3Bot
Disallow: /

User-agent: ChatGLM-Spider
Disallow: /

User-agent: Claude-Web
Disallow: /

User-agent: Cloudflare-AutoRAG
Disallow: /

User-agent: CloudflareBrowserRenderingCrawler
Disallow: /

User-agent: cohere-training-data-crawler
Disallow: /

User-agent: Cotoyogi
Disallow: /

User-agent: Crawl4AI
Disallow: /

User-agent: Datenbank Crawler
Disallow: /

User-agent: DeepSeekBot
Disallow: /

User-agent: Echobot Bot
Disallow: /

User-agent: EchoboxBot
Disallow: /

User-agent: factset_spyderbot
Disallow: /

User-agent: Google-Firebase
Disallow: /

User-agent: GoogleOther
Disallow: /

User-agent: Grok-DeepSearch
Disallow: /

User-agent: GrokBot
Disallow: /

User-agent: iAskBot
Disallow: /

User-agent: IbouBot
Disallow: /

User-agent: ICC-Crawler
Disallow: /

User-agent: ImagesiftBot
Disallow: /

User-agent: imageSpider
Disallow: /

User-agent: Kangaroo Bot
Disallow: /

User-agent: KlaviyoAIBot
Disallow: /

User-agent: KunatoCrawler
Disallow: /

User-agent: laion-huggingface-processor
Disallow: /

User-agent: Linguee Bot
Disallow: /

User-agent: LinkupBot
Disallow: /

User-agent: Manus-User
Disallow: /

User-agent: meta-webindexer
Disallow: /

User-agent: netEstate Imprint Crawler
Disallow: /

User-agent: Panscient
Disallow: /

User-agent: panscient.com
Disallow: /

User-agent: PhindBot
Disallow: /

User-agent: Poggio-Citations
Disallow: /

User-agent: QualifiedBot
Disallow: /

User-agent: SBIntuitionsBot
Disallow: /

User-agent: ShapBot
Disallow: /

User-agent: TavilyBot
Disallow: /

User-agent: TerraCotta
Disallow: /

User-agent: TwinAgent
Disallow: /

User-agent: webzio-extended
Disallow: /

User-agent: WRTNBot
Disallow: /

User-agent: xAI-Grok
Disallow: /

User-agent: YaK
Disallow: /

User-agent: ZanistaBot
Disallow: /