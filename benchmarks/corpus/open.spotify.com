User-agent: *
Allow: /
Disallow: /local/
Disallow: /download/
Disallow: /embed/

# Training crawlers — blocked to avoid feeding model weights with our
# catalogue graph and entity relationships (durable collective intelligence).

User-agent: GPTBot
Disallow: /

User-agent: CCBot
Disallow: /

User-agent: Google-Extended
Disallow: /

User-agent: Applebot-Extended
Disallow: /

User-agent: anthropic-ai
Disallow: /

User-agent: Claude-Web
Disallow: /

User-agent: ClaudeBot
Disallow: /

User-agent: cohere-ai
Disallow: /

User-agent: Meta-ExternalAgent
Disallow: /

User-agent: FacebookBot
Disallow: /

User-agent: Bytespider
Disallow: /

# Ads bots — unchanged.

User-agent: AdsBot-Google
Disallow:

User-agent: AdsBot-Google-Mobile
Disallow:

# Search bots — unchanged.

User-agent: Googlebot
Allow: /embed/
Allow: /oembed

User-agent: Bingbot
Allow: /embed/
Allow: /oembed

# User-fetch & search-index agents — allowed including /embed/ and
# /oembed so the embedded player can be discovered and rendered in
# agent surfaces (ChatGPT, Claude, Perplexity, Apple Intelligence,
# Meta AI, Alexa+, Naver).

User-agent: OAI-SearchBot
Allow: /embed/
Allow: /oembed

User-agent: ChatGPT-User
Allow: /embed/
Allow: /oembed

User-agent: Claude-SearchBot
Allow: /embed/
Allow: /oembed

User-agent: Claude-User
Allow: /embed/
Allow: /oembed

User-agent: Applebot
Allow: /embed/
Allow: /oembed

User-agent: Meta-ExternalFetcher
Allow: /embed/
Allow: /oembed

User-agent: facebookexternalhit
Allow: /embed/
Allow: /oembed

User-agent: PerplexityBot
Allow: /embed/
Allow: /oembed

User-agent: Perplexity-User
Allow: /embed/
Allow: /oembed

User-agent: Amazonbot
Allow: /embed/
Allow: /oembed

User-agent: Yeti
Allow: /embed/
Allow: /oembed

Sitemap: https://open.spotify.com/sitemaps/sitemap-index.xml
Sitemap: https://open.spotify.com/sitemaps/sitemap-pages.xml
