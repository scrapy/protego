# Please contact admin@actbluetech.com with any questions

User-agent: *
Crawl-delay: 5

User-agent: *
Disallow: /express_get_started*
Disallow: /contribute/thanks*
Disallow: /thanks*
Disallow: /receipt*

User-agent: Apache-HttpClient/4.5
Disallow: /

User-agent: comodo-webinspector-crawler
Disallow: /

User-agent: Jakarta Commons-HttpClient
Disallow: /

User-agent: MagpieRSS
Disallow: /

User-agent: Mangoway
Disallow: /

User-agent: Mozilla/3.0 (compatible; Indy Library)
Disallow: /

User-agent: Mozilla/5.0 DV/1.2
Disallow: /

User-agent: Mozilla/5.0 (compatible; Dow Jones Searchbot)
Disallow: /

User-agent: panscient.com
Disallow: /

User-agent: Paros
Disallow: /

User-agent: Test Certificate Info
Disallow: /
