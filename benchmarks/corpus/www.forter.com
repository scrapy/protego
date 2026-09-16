
# Training crawlers for the major LLM providers are allowed.
User-agent: GPTBot
User-agent: ClaudeBot
User-agent: anthropic-ai
User-agent: Google-Extended
User-agent: Applebot-Extended
Content-Signal: search=yes, ai-input=yes, ai-train=yes
Allow: /

# AI search / answer bots are allowed when a user asks.
User-agent: ChatGPT-User
User-agent: OAI-SearchBot
User-agent: Claude-User
User-agent: Claude-SearchBot
User-agent: PerplexityBot
User-agent: Perplexity-User
User-agent: DeepSeekBot
User-agent: Amazonbot
User-agent: cohere-ai
User-agent: MistralAI-User
User-agent: OpenClaw
Content-Signal: search=yes, ai-input=yes
Allow: /

# Scrapers and content harvesters are disallowed.
User-agent: CCBot
User-agent: Bytespider
User-agent: FacebookBot
User-agent: meta-externalagent
User-agent: ImagesiftBot
User-agent: Diffbot
User-agent: omgili
User-agent: omgilibot
Content-Signal: search=no, ai-input=no, ai-train=no
Disallow: /

# Others are allowed to crawl the site, excluding search pages.
User-agent: *
Crawl-delay: 10
Content-Signal: search=yes, ai-input=yes, ai-train=no
Disallow: /?s=
Disallow: /page/*/?s=
Disallow: /search/
Allow: /

Sitemap: https://www.forter.com/sitemap_index.xml
Schemamap: https://www.forter.com/.well-known/schema-map.xml