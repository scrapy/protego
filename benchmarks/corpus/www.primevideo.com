User-agent: *
Disallow: /hp/video/
Disallow: /-/*/hp/video/
Disallow: /api
Disallow: /gp/video/api
Disallow: /region/*/api
Disallow: /-/*/api
Disallow: /mystuff
Disallow: /gp/video/mystuff
Disallow: /region/*/mystuff
Disallow: /-/*/mystuff
Disallow: /search
Disallow: /gp/video/search
Disallow: /region/*/search
Disallow: /-/*/search
Disallow: /ap/
Disallow: /gp/video/ap/
Disallow: /region/*/ap/
Disallow: /-/*/ap/
Disallow: /auth
Disallow: /gp/video/auth
Disallow: /region/*/auth
Disallow: /-/*/auth
Disallow: /salp/i
Disallow: /gp/video/salp/i
Disallow: /region/*/salp/i
Disallow: /-/*/salp/i
Disallow: /detail/Login
Disallow: /gp/video/detail/Login
Disallow: /region/*/detail/Login
Disallow: /-/*/detail/Login
Disallow: */src/
Disallow: */node_modules/
Disallow: /review/create-review/

User-agent: AddSearchBot
Disallow: /

User-agent: AI2Bot
Disallow: /

User-agent: AI2Bot-DeepResearchEval
Disallow: /

User-agent: Ai2Bot-Dolma
Disallow: /

User-agent: aiHitBot
Disallow: /

User-agent: Andibot
Disallow: /

User-agent: Anomura
Disallow: /

User-agent: atlassian-bot
Disallow: /

User-agent: Brightbot
Disallow: /

User-agent: BuddyBot
Disallow: /

User-agent: Bytespider
Disallow: /

User-agent: CCBot
Disallow: /

User-agent: Channel3Bot
Disallow: /

User-agent: ChatGLM-Spider
Disallow: /

User-agent: ChatGPT-User
Disallow: /

User-agent: Claude-User
Disallow: /

User-agent: Cloudflare-AutoRAG
Disallow: /

User-agent: CloudflareBrowserRenderingCrawler
Disallow: /

User-agent: cohere-ai
Disallow: /

User-agent: cohere-training-data-crawler
Disallow: /

User-agent: Copilot
Disallow: /

User-agent: CopilotNative
Disallow: /

User-agent: CopilotSapphire
Disallow: /

User-agent: Cotoyogi
Disallow: /

User-agent: Crawl4AI
Disallow: /

User-agent: Datenbank Crawler
Disallow: /

User-agent: DeepSeekBot
Disallow: /

User-agent: Devin
Disallow: /

User-agent: Diffbot
Disallow: /

User-agent: DuckAssistBot
Disallow: /

User-agent: Echobot Bot
Disallow: /

User-agent: EchoboxBot
Disallow: /

User-agent: EtaoSpider
Disallow: /

User-agent: factset_spyderbot
Disallow: /

User-agent: FriendlyCrawler
Disallow: /

User-agent: Gemini-Deep-Research
Disallow: /

User-agent: Google-CloudVertexBot
Disallow: /

User-agent: Google-Firebase
Disallow: /

User-agent: Google-NotebookLM
Disallow: /

User-agent: GoogleAgent-Mariner
Disallow: /

User-agent: GoogleAgent-Shopping
Disallow: /

User-agent: GoogleOther
Disallow: /

User-agent: Grok-DeepSearch
Disallow: /

User-agent: GrokBot
Disallow: /

User-agent: iAskBot
Disallow: /

User-agent: iaskspider
Disallow: /

User-agent: IbouBot
Disallow: /

User-agent: ICC-Crawler
Disallow: /

User-agent: img2dataset
Disallow: /

User-agent: ImagesiftBot
Disallow: /

User-agent: imageSpider
Disallow: /

User-agent: imgproxy
Disallow: /

User-agent: ISSCyberRiskCrawler
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

User-agent: meta-externalagent
Disallow: /

User-agent: meta-externalfetcher
Disallow: /

User-agent: meta-webindexer
Disallow: /

User-agent: MistralAI-User
Disallow: /

User-agent: netEstate Imprint Crawler
Disallow: /

User-agent: omgili
Disallow: /

User-agent: Panscient
Disallow: /

User-agent: panscient.com
Disallow: /

User-agent: PanguBot
Disallow: /

User-agent: Perplexity-User
Disallow: /

User-Agent: PerplexityBot
Disallow: /

User-agent: PetalBot
Disallow: /

User-agent: PhindBot
Disallow: /

User-agent: Poggio-Citations
Disallow: /

User-agent: QualifiedBot
Disallow: /

User-agent: SBIntuitionsBot
Disallow: /

User-agent: Scrapy
Disallow: /

User-agent: SemrushBot-SWA
Disallow: /

User-agent: ShapBot
Disallow: /

User-agent: Sidetrade indexer bot
Disallow: /

User-agent: TavilyBot
Disallow: /

User-agent: TerraCotta
Disallow: /

User-agent: Thinkbot
Disallow: /

User-agent: Timpibot
Disallow: /

User-agent: TwinAgent
Disallow: /

User-agent: VelenPublicWebCrawler
Disallow: /

User-agent: webzio-extended
Disallow: /

User-agent: wpbot
Disallow: /

User-agent: WRTNBot
Disallow: /

User-agent: xAI-Grok
Disallow: /

User-agent: YaK
Disallow: /

User-agent: YouBot
Disallow: /

User-agent: ZanistaBot
Disallow: /
