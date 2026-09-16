# *
User-agent: *
Disallow: /verificationofemployment
Disallow: /static_files/deletion_request.pdf
Disallow: /static/gla/
Disallow: /invite/

# Meta-WebIndexer
User-agent: Meta-WebIndexer
Allow: /

# Meta-ExternalAgent
User-agent: Meta-ExternalAgent
Disallow: /

# Meta-ExternalFetcher
User-agent: Meta-ExternalFetcher
Disallow: /

# OAI-SearchBot
User-agent: OAI-SearchBot
Allow: /
Disallow: /getreplies
Disallow: /explore/

# ChatGPT-User
User-agent: ChatGPT-User
Allow: /
Disallow: /getreplies
Disallow: /explore/

# PerplexityBot
User-agent: PerplexityBot
Allow: /
Disallow: /getreplies
Disallow: /explore/

# Perplexity-User
User-agent: Perplexity-User
Allow: /
Disallow: /getreplies
Disallow: /explore/

# Claude-SearchBot
User-agent: Claude-SearchBot
Allow: /
Disallow: /getreplies
Disallow: /explore/

# Claude-User
User-agent: Claude-User
Allow: /
Disallow: /getreplies
Disallow: /explore/

# DuckAssistBot
User-agent: DuckAssistBot
Allow: /
Disallow: /getreplies
Disallow: /explore/

# AI2Bot
User-agent: AI2Bot
Disallow: /

# Ai2Bot-Dolma
User-agent: Ai2Bot-Dolma
Disallow: /

# Amazonbot
User-agent: Amazonbot
Disallow: /

# anthropic-ai
User-agent: anthropic-ai
Disallow: /

# Applebot-Extended
User-agent: Applebot-Extended
Disallow: /

# Brightbot 1.0
User-agent: Brightbot 1.0
Disallow: /

# Bytespider
User-agent: Bytespider
Disallow: /

# CCBot
User-agent: CCBot
Disallow: /

# Claude-Web
User-agent: Claude-Web
Disallow: /

# ClaudeBot
User-agent: ClaudeBot
Disallow: /

# cohere-ai
User-agent: cohere-ai
Disallow: /

# cohere-training-data-crawler
User-agent: cohere-training-data-crawler
Disallow: /

# Crawlspace
User-agent: Crawlspace
Disallow: /

# Diffbot
User-agent: Diffbot
Disallow: /

# FacebookBot
User-agent: FacebookBot
Disallow: /

# FriendlyCrawler
User-agent: FriendlyCrawler
Disallow: /

# Googlebot
User-agent: Googlebot
Disallow: /getreplies
Disallow: /explore/

# Google-Extended
User-agent: Google-Extended
Disallow: /

# GoogleOther
User-agent: GoogleOther
Disallow: /

# GoogleOther-Image
User-agent: GoogleOther-Image
Disallow: /

# GoogleOther-Video
User-agent: GoogleOther-Video
Disallow: /

# GPTBot
User-agent: GPTBot
Disallow: /

# iaskspider/2.0
User-agent: iaskspider/2.0
Disallow: /

# ICC-Crawler
User-agent: ICC-Crawler
Disallow: /

# ImagesiftBot
User-agent: ImagesiftBot
Disallow: /

# img2dataset
User-agent: img2dataset
Disallow: /

# ISSCyberRiskCrawler
User-agent: ISSCyberRiskCrawler
Disallow: /

# Kangaroo Bot
User-agent: Kangaroo Bot
Disallow: /

# omgili
User-agent: omgili
Disallow: /

# omgilibot
User-agent: omgilibot
Disallow: /

# PanguBot
User-agent: PanguBot
Disallow: /

# PetalBot
User-agent: PetalBot
Disallow: /

# Scrapy
User-agent: Scrapy
Disallow: /

# SemrushBot-OCOB
User-agent: SemrushBot-OCOB
Disallow: /

# SemrushBot-SWA
User-agent: SemrushBot-SWA
Disallow: /

# Sidetrade indexer bot
User-agent: Sidetrade indexer bot
Disallow: /

# Timpibot
User-agent: Timpibot
Disallow: /

# VelenPublicWebCrawler
User-agent: VelenPublicWebCrawler
Disallow: /

# Webzio-Extended
User-agent: Webzio-Extended
Disallow: /

# YouBot
User-agent: YouBot
Disallow: /

# Host
Host: https://www.snapchat.com

# Sitemaps
Sitemap: https://www.snapchat.com/sitemap.xml
Sitemap: https://www.snapchat.com/lens/sitemap.xml
Sitemap: https://www.snapchat.com/sitemaps/place/sitemap-index.xml
Sitemap: https://www.snapchat.com/sitemaps/profile/sitemap-index.xml
Sitemap: https://www.snapchat.com/sitemaps/p/sitemap-index.xml
Sitemap: https://www.snapchat.com/sitemaps/tag/sitemap-index.xml
Sitemap: https://www.snapchat.com/sitemaps/topic/sitemap-index.xml
Sitemap: https://www.snapchat.com/sitemaps/entertainment_funny/sitemap-index.xml
Sitemap: https://www.snapchat.com/sitemaps/top_spotlights/sitemap-index.xml
Sitemap: https://www.snapchat.com/sitemaps/local_city_leaf/sitemap-index.xml
Sitemap: https://www.snapchat.com/sitemaps/local_nbhd_leaf/sitemap-index.xml
Sitemap: https://www.snapchat.com/sitemaps/local_city_hub/sitemap-index.xml
