User-agent: *
Disallow:
Disallow: /search-results*
Sitemap: https://www.avast.com/sitemap_index.xml

User-agent: PerplexityBot
Disallow: /*&rut=

User-agent: OAI-SearchBot
Allow: /

User-agent: ChatGPT-User
Allow: /

User-agent: GPTBot
Allow: /

User-agent: Perplexity-User
Allow: /

User-agent: PerplexityBot
Allow: /

User-agent: Claude-User
Allow: /

User-agent: ClaudeBot
Allow: /

Content-Signal: ai-train=yes, search=yes, ai-input=yes