# Content signals below declare how Amplitude content may be used after it is
# accessed. A "yes" is an express reservation of rights under applicable law;
# it is not a grant of any license or additional right. Signals apply only to
# operators that choose to honor them.
#
# search: building a search index and providing search results (e.g. returning
#   hyperlinks and short excerpts). ai-input: inputting content into one or more
#   AI models (e.g. retrieval augmented generation, grounding). ai-train: training
#   or fine-tuning AI models.

User-agent: *
Content-Signal: search=yes, ai-input=yes, ai-train=yes
Allow: /
Disallow: /*sanity_test*

User-agent: GPTBot
Content-Signal: search=yes, ai-input=yes, ai-train=yes
Allow: /
Disallow: /*sanity_test*

User-agent: OAI-SearchBot
Content-Signal: search=yes, ai-input=yes, ai-train=yes
Allow: /
Disallow: /*sanity_test*

User-agent: ChatGPT-User
Content-Signal: search=yes, ai-input=yes, ai-train=yes
Allow: /
Disallow: /*sanity_test*

User-agent: ClaudeBot
Content-Signal: search=yes, ai-input=yes, ai-train=yes
Allow: /
Disallow: /*sanity_test*

User-agent: anthropic-ai
Content-Signal: search=yes, ai-input=yes, ai-train=yes
Allow: /
Disallow: /*sanity_test*

User-agent: PerplexityBot
Content-Signal: search=yes, ai-input=yes, ai-train=yes
Allow: /
Disallow: /*sanity_test*

User-agent: Perplexity-User
Content-Signal: search=yes, ai-input=yes, ai-train=yes
Allow: /
Disallow: /*sanity_test*

User-agent: Google-Extended
Content-Signal: search=yes, ai-input=yes, ai-train=yes
Allow: /
Disallow: /*sanity_test*

User-agent: Applebot-Extended
Content-Signal: search=yes, ai-input=yes, ai-train=yes
Allow: /
Disallow: /*sanity_test*

User-agent: CCBot
Content-Signal: search=yes, ai-input=yes, ai-train=yes
Allow: /
Disallow: /*sanity_test*

User-agent: Meta-ExternalAgent
Content-Signal: search=yes, ai-input=yes, ai-train=yes
Allow: /
Disallow: /*sanity_test*

User-agent: cohere-ai
Content-Signal: search=yes, ai-input=yes, ai-train=yes
Allow: /
Disallow: /*sanity_test*

User-agent: Amazonbot
Content-Signal: search=yes, ai-input=yes, ai-train=yes
Allow: /
Disallow: /*sanity_test*

User-agent: Bytespider
Content-Signal: search=no, ai-input=no, ai-train=no
Disallow: /

User-agent: Googlebot
User-agent: Bingbot
User-agent: DuckDuckBot
Disallow: /*sanity_test*
Disallow: /*.md$

Sitemap: https://amplitude.com/sitemap.xml
