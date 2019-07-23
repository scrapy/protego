User-agent: *
User-agent: Mediapartners-Google*
Crawl-delay: 10
# Directories 
Disallow: /special-pages/
#files 
Disallow: /print.aspx 
Disallow: /printmail.aspx 
# Paths 
Disallow: /admin/

User-agent: grapeshot
Disallow:

User-agent: bingbot
Disallow: