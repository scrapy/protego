User-agent: *
Disallow:/api/
Disallow:/login/
Disallow:/search/
Disallow:/*/search/
Disallow:/exit/
Disallow:/SRTO_SLA_test_files/
Disallow:/pcclb/
Disallow:/germany/accessoriesandservices/porsche-calendar-2018/
Disallow:/all/media/flash/classic/book2/en-uk/
Disallow:/measure/
Disallow:/all/chatbotprototype_dealer/

User-agent: EmailCollector
Disallow: /

User-agent: sitecheck.internetseer.com
Disallow: /

User-agent: Zealbot
Disallow: /

User-agent: MSIECrawler
Disallow: /

User-agent: SiteSnagger
Disallow: /

User-agent: WebStripper
Disallow: /

User-agent: WebCopier
Disallow: /


# Microsite Sitemap Index
Sitemap: http://www.porsche.com/microsite/sitemap.xml
