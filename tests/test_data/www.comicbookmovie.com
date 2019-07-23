# Dont allow search engines to index specific folder
User-agent: *
Crawl-delay: 10
Sitemap: http://www.comicbookmovie.com/sitemap.aspx
Disallow: /members
Disallow: */.axd$
Disallow: /*.axd
Disallow: /ScriptResource.axd
Disallow: /WebResource.axd
Disallow: /scriptresource.axd
Disallow: /webresource.axd