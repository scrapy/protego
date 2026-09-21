Sitemap: https://www.kaspersky.es/sitemap.xml

User-agent: *
Allow: /lp/vpn-comparison
Allow: /lp/special-offer-students
Allow: /lp/special-offer* 
Allow: /lp/antivirus-kaspersky*
Allow: /lp/ksospromo*
Allow: /lp/small-office-security
Disallow: /acq/
Disallow: /search
Disallow: /rss-feeds
Disallow: /components/
Disallow: /b2c-tools/
Disallow: /entp/
Disallow: /feeds/
Disallow: /lp/
Disallow: /_svc/
Disallow: /embed/
Disallow: /?slow=*
Disallow: /templates/site-header_main-nav.html
Disallow: /templates/site-header_mega-menu__b2c.html
Disallow: /templates/site-header_mega-menu__res.html
Disallow: /n/
Disallow: /wiki-section/
Allow: /renewal-center/home
Allow: /renewal-center/business
Disallow: /renewal-center/
Disallow: /?serial=*
Disallow: *.json
Disallow: */thank-you
Disallow: /Date
Disallow: /resources/template/

# ---- OPENAI ----
User-agent: OAI-SearchBot
Allow: /

# ---- ChatGPT ---- 
User-agent: ChatGPT-User
Allow: /
User-agent: GPTBot
Allow: /                     

# ---- Claude ----
User-agent: ClaudeBot         
Allow: /
User-agent: claude-web       
Allow: /
User-agent: Claude-User
Allow: /

# ---- PERPLEXITY ----
User-agent: PerplexityBot     
Allow: /
User-agent: Perplexity-User   
Allow: /

# ---- GOOGLE (Gemini) ----
User-agent: Google-Extended
Allow: /

# ---- APPLE ----
User-agent: Applebot
Allow: /
User-agent: Applebot-Extended
Allow: /

# ---- DUCKDUCKGO ----
User-agent: DuckAssistBot
Allow: /

# ---- COMMON CRAWL ----
User-agent: CCBot
Allow: /
User-agent: Diffbot
Allow: /

# ---- Others ----
User-agent: MistralAI-User 
Allow: /
User-agent: YouBot
Allow: /

# ---- Deepseek ----
User-agent: DeepSeekBot
Allow: /