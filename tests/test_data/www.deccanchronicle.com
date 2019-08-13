User-agent: magpie-crawler
Disallow: /

User-agent: AhrefsBot
Disallow: /

User-agent: MauiBot 
Disallow: /

User-agent: SemrushBot
Disallow: /

User-agent: SemrushBot-SA
Disallow: /

User-Agent: MJ12bot
Crawl-Delay: 30

User-agent: *
# Directories
Allow: /content/tags/
Allow: /content/tags/*
Disallow: /node
Disallow: /node/*
Disallow: /ampnew/*
Disallow: /1754161/*
sitemap: https://www.deccanchronicle.com/seo/sitemap.xml