User-agent: magpie-crawler
Disallow: /

User-agent:*
Disallow: /*?s=*
Disallow: /*?page_id=*
Disallow: /*?dtdemo=*
Disallow: /*?debug=*
Disallow: /*?attachment_id=*
Disallow: /*?mcsf_action=*
Disallow: */go/*
Disallow: */gp/*
Disallow: /*?orderby=*
Disallow: /*?order=*
Disallow: /*.html


Sitemap: https://www.digitaltrends.com/sitemap_index.xml
Sitemap: https://www.digitaltrends.com/news.sitemap.google.xml
Sitemap: https://www.digitaltrends.com/image-sitemap-index.xml