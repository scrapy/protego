#Ask Jared G before you edit this file
#Robot Experience Management 




#community rules 
user-agent: *
disallow: /community/*/tag?*
disallow: /community/*/tagged/*
disallow: /community/*/markread?*
disallow: /community/*/quote/*
disallow: /community/*?reaction=*
disallow: /community/*/post/*
disallow: /community/*/bookmark/*
disallow: /community/*/vanilla/*
disallow: /community/*/comment/*
disallow: /community/*/dashboard/*
#disallow: /community/*/bestof/*
#disallow: /community/*/archives/*
disallow: /community/*/react/*
disallow: /community/*/messages/*
disallow: /community/*/browse?keywords*
disallow: /community/entry/*
Disallow: /community/profile/*
Disallow: */feed.rss
Disallow: /community/profile/*
Noindex: /community/discussion/708/did-you-take-the-psychology-questionnaire-used-by-cambridge-analytica-lets-talk


##Support site
Disallow: /support/tag/*
Disallow: /support/category/*
Disallow: /support/custom_resource/*
Disallow: /custom_banner/*


Disallow: *$(this).fadeOut();*


#WP rules
disallow: */feed/
disallow: */rss2/
disallow: /blog/search/ 
disallow: /blog/topic/


#content rules per crawley 
Disallow: /docs/
Noindex: /docs/


#in product frames
disallow: /in-product/
disallow: /total-leadership/
noindex: /total-leadership/
noindex:  /in-product/




Sitemap: https://www.qualtrics.com/hreflang.xml
Sitemap: https://www.qualtrics.com/uk/sitemap_index.xml
Sitemap: https://www.qualtrics.com/sitemap_index.xml
Sitemap: https://www.qualtrics.com/eng/sitemap_index.xml
Sitemap: https://www.qualtrics.com/support/sitemap_index.xml
Sitemap: https://www.qualtrics.com/blog/sitemap_index.xml
Sitemap: https://www.qualtrics.com/community/sitemapindex.xml
Sitemap: https://www.qualtrics.com/jp/sitemap_index.xml
Sitemap: https://www.qualtrics.com/fr/sitemap_index.xml
Sitemap: https://www.qualtrics.com/de/sitemap_index.xml
Sitemap: https://www.qualtrics.com/au/sitemap_index.xml
Sitemap: https://www.qualtrics.com/content_hub-sitemap.xml
Sitemap: https://www.qualtrics.com/es/sitemap_index.xml
Sitemap: https://www.qualtrics.com/it/sitemap_index.xml
Sitemap: https://www.qualtrics.com/marketplace/sitemap_index.xml
Sitemap: https://www.qualtrics.com/partnerships/sitemap_index.xml