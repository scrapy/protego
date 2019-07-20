User-agent: *
Disallow: /lite
Disallow: /html

# No search result pages
Disallow: /*?

# chrome new tab page
Disallow: /chrome_newtab

User-agent: ia_archiver
Disallow: /

Sitemap: https://duckduckgo.com/sitemap.xml
