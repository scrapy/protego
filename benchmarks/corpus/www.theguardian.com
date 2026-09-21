# This is the robots.txt file for theguardian.com

# Guardian content is made available under our terms and conditions of use.
# Any other uses are not permitted, incl. but not limited to: for large language
# models (LLMs), machine learning and/or artificial intelligence-related
# purposes; with any of the aforementioned technologies; and/or for any
# commercial purposes. Contact licensing@theguardian.com for assistance

User-agent: *
Disallow: /sendarticle/
Disallow: /Users/
Disallow: /users/
Disallow: /*/print$
Disallow: /email/
Disallow: /contactus/
Disallow: /share/
Disallow: /websearch
Disallow: /*?commentpage=
Disallow: /whsmiths/
Disallow: /external/overture/
Disallow: /discussion/report-abuse/*
Disallow: /discussion/report-abuse-ajax/*
Disallow: /discussion/comment-permalink/*
Disallow: /discussion/report-abuse/*
Disallow: /discussion/user-report-abuse/*
Disallow: /discussion/handlers/*
Disallow: /discussion/your-profile
Disallow: /discussion/your-comments
Disallow: /discussion/edit-profile
Disallow: /discussion/search/comments
Disallow: /discussion/*
Disallow: /search
Disallow: /music/artist/*
Disallow: /music/album/*
Disallow: /books/data/*
Disallow: /settings/
Disallow: /embed/
Disallow: /*styles/js-on.css$
Disallow: /sport/olympics/2008/events/*
Disallow: /sport/olympics/2008/medals/*
Disallow: /f/healthcheck
Disallow: /sections
Disallow: /top-stories
Disallow: /most-read/sport
Disallow: /articles
Disallow: /global$
Disallow: /*/feedarticle/*
Disallow: /travel/2013/aug/22/been-there-readers-competition?*
Disallow: /preference/*
Disallow: /59666047/
Disallow: /print/
Disallow: /info/tech-feedback
Disallow: /production-monitoring/
Disallow: *.emailjson
Disallow: *.emailtxt
Disallow: /headline.txt
Disallow: *?*dcr=apps*

User-agent: Mediapartners-Google
Disallow:

Sitemap: http://www.theguardian.com/sitemaps/news.xml
Sitemap: http://www.theguardian.com/sitemaps/video.xml

User-agent: NewsNow
User-agent: CCBot
User-agent: TurnitinBot
User-agent: PetalBot
User-agent: MoodleBot
User-agent: FacebookBot
User-agent: Bytespider
User-agent: Mojeek
User-agent: JenkersBot
User-agent: Seekr
User-agent: YouBot
User-agent: Arquivo-web-crawler
User-agent: coccocbot-web
User-agent: SeznamBot
User-Agent: PerplexityBot
User-Agent: yacy
User-agent: anthropic-ai
User-agent: ClaudeBot
User-agent: Claude-SearchBot
User-agent: Claude-User
User-agent: AwarioRssBot
User-agent: AwarioSmartBot
User-agent: SentiOne
User-agent: ImageSift
User-agent: Applebot-Extended
User-agent: YandexAdditional
User-agent: YandexAdditionalBot
User-agent: scalepostAI
User-agent: Buck
User-agent: meta-externalagent
User-agent: Amazonbot
User-agent: amazon-QBusiness
User-agent: DuckAssistBot
User-agent: Google-CloudVertexBot
User-agent: Amzn-SearchBot
User-agent: AhrefsBot
User-agent: AhrefsSiteAudit
Disallow: /

License: https://theguardian.com/license.xml
