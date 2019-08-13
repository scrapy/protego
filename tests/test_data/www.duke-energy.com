User-agent: *
Disallow: /gsa-sitemap
Disallow: /includes/*
Disallow: /_/media/*
Disallow: /pdfs/*
Disallow: /docs/*
Disallow: /_assets/*
Disallow: /Error/*
Disallow: /error/*
Disallow: /~/link.aspx*
Disallow: /info/unindexed/*
Allow: /_/media/images/share/

Sitemap: https://www.duke-energy.com/sitemap.ashx