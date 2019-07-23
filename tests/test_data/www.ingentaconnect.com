# 
# Agent-specific settings for indexing the site.
#
User-agent: GoogleBot
# Google ignores Crawl-delay
# Crawl-delay: 5
# URL prefixes
Disallow: /admin/
Disallow: /cart/
# Prevent scraping of a particular PDF
# /content/routledg/gwst/2003/00000032/00000004/art00003
# (disallow needs to be at directory level, ie issue level)
Disallow: /content/routledg/gwst/2003/00000032/00000004/
Disallow: /marked-list/
Disallow: /profile/
Disallow: /register/
Disallow: /search/
Disallow: /search;
Disallow: /search?
Disallow: /searching/Mark
Disallow: /searching/UnMark
Disallow: /session/
Disallow: /content/docdel/
Disallow: /validate/

# 
# Generic settings for indexing the site.
#
User-agent: *
Crawl-delay: 5
# URL prefixes
Disallow: /admin/
Disallow: /cart/
# Prevent scraping of a particular PDF
# /content/routledg/gwst/2003/00000032/00000004/art00003
# (disallow needs to be at directory level, ie issue level)
Disallow: /content/routledg/gwst/2003/00000032/00000004/
Disallow: /marked-list/
Disallow: /profile/
Disallow: /register/
Disallow: /search/
Disallow: /search;
Disallow: /search?
Disallow: /searching/Mark
Disallow: /searching/UnMark
Disallow: /session/
Disallow: /content/docdel/
Disallow: /validate/

