# Robots.txt for www.cloudflare.com

User-agent: *
Allow: /

# Sitemap
Sitemap: https://www.cloudflare.com/sitemap.xml

# AI/LLM friendly content
# See https://llmstxt.org for the llms.txt specification
# llms.txt provides curated content for AI assistants and LLMs

# Allow AI crawlers to access markdown versions of pages
User-agent: GPTBot
Allow: /

User-agent: ChatGPT-User
Allow: /

User-agent: Google-Extended
Allow: /

User-agent: Anthropic-AI
Allow: /

User-agent: Claude-Web
Allow: /

User-agent: CCBot
Allow: /

User-agent: PerplexityBot
Allow: /

User-agent: Cohere-ai
Allow: /

# Content Signals — declare AI content usage preferences
# See https://contentsignals.org/ and https://datatracker.ietf.org/doc/draft-romm-aipref-contentsignals/
Content-Signal: ai-train=yes, search=yes, ai-input=yes

# AI-friendly content locations
# - /llms.txt - Curated overview for AI/LLMs (markdown)
# - /llms-full.txt - Full expanded content for larger context windows
# - /*.md - Markdown versions of all pages (append .md to any URL)
# - /.well-known/agents.json - Agent discovery and capabilities
