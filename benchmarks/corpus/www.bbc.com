
# version: 958ed1a58c8ce418427283859a5538a5ce0eb62d
# The BBC's Terms of Use: https://www.bbc.co.uk/terms
# - Explain the rules for using our services
# - Tell you what you can do with our content
#
# In short: Please use our site like a human, not a robot.
# That means:
# - No scraping, crawling, or systematic extraction of content 
# - No use of BBC content for training or fine-tuning AI models, including large language models (LLMs)
# - No retrieval-augmented generation (RAG), AI-powered search, agentic AI or grounding using BBC content
# - No creating datasets from BBC content
# - No text and data mining (TDM) under Article 4 of the EU Directive on Copyright in the Digital Single Market
# - No using BBC content to create summaries for your own use
# - No business use without permission (details: https://www.bbc.co.uk/usingthebbc/terms/can-i-use-bbc-content-for-my-business/)
# - The BBC reserves all rights in its content and expressly opts out of any statutory exceptions in any jurisdiction for text and data mining, as permitted by law
 
# TL;DR: Browse, read, watch, enjoy - like a human.
#

# HTTPS www.bbc.com

User-agent: *
Sitemap: https://www.bbc.com/afrique/sitemap.xml
Sitemap: https://www.bbc.com/arabic/sitemap.xml
Sitemap: https://www.bbc.com/bbcx/audio_archive_sitemap.xml
Sitemap: https://www.bbc.com/bbcx/content_index_sitemap.xml
Sitemap: https://www.bbc.com/bbcx/index_sitemap.xml
Sitemap: https://www.bbc.com/bbcx/video_documentaries_sitemap.xml
Sitemap: https://www.bbc.com/bengali/sitemap.xml
Sitemap: https://www.bbc.com/burmese/sitemap.xml
Sitemap: https://www.bbc.com/gahuza/sitemap.xml
Sitemap: https://www.bbc.com/hausa/sitemap.xml
Sitemap: https://www.bbc.com/hindi/sitemap.xml
Sitemap: https://www.bbc.com/indonesia/sitemap.xml
Sitemap: https://www.bbc.com/mundo/sitemap.xml
Sitemap: https://www.bbc.com/pashto/sitemap.xml
Sitemap: https://www.bbc.com/persian/sitemap.xml
Sitemap: https://www.bbc.com/portuguese/sitemap.xml
Sitemap: https://www.bbc.com/russian/sitemap.xml
Sitemap: https://www.bbc.com/sitemaps/https-index-com-archive_video.xml
Sitemap: https://www.bbc.com/sitemaps/https-index-com-archive.xml
Sitemap: https://www.bbc.com/sitemaps/https-index-com-mundo-archive_video.xml 
Sitemap: https://www.bbc.com/sitemaps/https-index-com-mundo-archive.xml
Sitemap: https://www.bbc.com/sitemaps/https-index-com-mundo-news.xml 
Sitemap: https://www.bbc.com/sitemaps/https-index-com-mundo-video.xml
Sitemap: https://www.bbc.com/sitemaps/https-index-com-news.xml
Sitemap: https://www.bbc.com/sitemaps/https-index-com-video.xml
Sitemap: https://www.bbc.com/sitemaps/sitemap-com-ws-topics.xml
Sitemap: https://www.bbc.com/sitemaps/sitemap-com-ws-topics.xml
Sitemap: https://www.bbc.com/sitemaps/world-service-homepages.xml
Sitemap: https://www.bbc.com/sport/sitemap.xml
Sitemap: https://www.bbc.com/swahili/sitemap.xml
Sitemap: https://www.bbc.com/tajik/sitemap.xml
Sitemap: https://www.bbc.com/turkce/sitemap.xml
Sitemap: https://www.bbc.com/ukchina/simp/sitemap.xml
Sitemap: https://www.bbc.com/ukrainian/sitemap.xml
Sitemap: https://www.bbc.com/urdu/sitemap.xml
Sitemap: https://www.bbc.com/uzbek/sitemap.xml
Sitemap: https://www.bbc.com/vietnamese/sitemap.xml
Sitemap: https://www.bbc.com/zhongwen/simp/sitemap.xml
Sitemap: https://www.bbc.com/zhongwen/trad/sitemap.xml

Disallow: /asset/
Disallow: /backstage/bbc-login-help/
Disallow: /backstage/bbc-login-help$
Disallow: /bitesize/search$
Disallow: /bitesize/search/
Disallow: /bitesize/search?
Disallow: /cbbc/search/
Disallow: /cbbc/search$
Disallow: /cbbc/search?
Disallow: /cbeebies/search/
Disallow: /cbeebies/search$
Disallow: /cbeebies/search?
Disallow: /chwilio/
Disallow: /chwilio$
Disallow: /chwilio?
Disallow: /education/blocks$
Disallow: /education/blocks/
Disallow: /newsround
Disallow: /search/
Disallow: /search$
Disallow: /search?
Disallow: /food/favourites
Disallow: /food/search*?*
Disallow: /food/recipes/search*?*
Disallow: /education/my$
Disallow: /education/my/
Disallow: /bitesize/my$
Disallow: /bitesize/my/
Disallow: /food/recipes/*/shopping-list
Disallow: /food/menus/*/shopping-list
Disallow: /news/0
Disallow: /sport/alpha/
Disallow: /ugc$
Disallow: /ugc/
Disallow: /ugcsupport$
Disallow: /ugcsupport/
Disallow: /userinfo/
Disallow: /userinfo
Disallow: /u5llnop$
Disallow: /u5llnop/
Disallow: /sounds/search$
Disallow: /sounds/search/
Disallow: /sounds/search?
Disallow: /ws/includes
Disallow: /radio/imda
Disallow: /storyworks/preview/*
Disallow: /rd/search$
Disallow: /rd/search/
Disallow: /rd/search?

User-agent: Amazonbot
Disallow: /

User-agent: magpie-crawler
Disallow: /

User-agent: CCBot
Disallow: /

User-Agent: omgili
Disallow: /
 
User-Agent: omgilibot
Disallow: /
 
User-agent: Claude-Web
Disallow: /

User-agent: ClaudeBot
Disallow: /

User-agent: anthropic-ai
Disallow: /
 
User-agent: cohere-ai
Disallow: /

User-agent: Bytespider
Disallow: /

User-agent: PetalBot
Disallow: /

User-agent: Scrapy
Disallow: /

User-agent: Applebot-Extended
Disallow: /

User-agent: GPTBot
Disallow: /
Allow: /storyworks
Allow: /storyworks/

User-agent: ChatGPT-User
Disallow: /
Allow: /storyworks
Allow: /storyworks/

User-agent: Google-Extended
Disallow: /
Allow: /storyworks
Allow: /storyworks/

User-Agent: PerplexityBot
Disallow: /

User-agent: Perplexity-User
Disallow: /

User-agent: Google-CloudVertexBot
Disallow: /

User-agent: meta-externalagent
Disallow: /

User-agent: OAI-SearchBot
Disallow: /

User-agent: YandexAdditional
Disallow: /

User-agent: YandexAdditionalBot
Disallow: /

User-agent: TurnitinBot
Disallow: /

User-agent: Brightbot
Disallow: /

User-agent: ApifyBot
Disallow: /

User-agent: ApifyWebsiteContentCrawler
Disallow: /

User-agent: Diffbot
Disallow: /

User-agent: Diffbot-User
Disallow: /

User-agent: ExaBot
Disallow: /

User-agent: TavilyBot
Disallow: /

User-agent: ShapBot
Disallow: /

User-agent: YouBot
Disallow: /

User-agent: FirecrawlAgent
Disallow: /

User-agent: Amzn-SearchBot
Disallow: /

User-agent: Amzn-User
Disallow: /

User-agent: ProRataInc
Disallow: /

User-agent: CloudflareBrowserRenderingCrawler
Disallow: /

User-agent: AhrefsBot
Disallow: /
