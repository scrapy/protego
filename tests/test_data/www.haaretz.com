User-agent: SemrushBoth
Disallow: /

user-agent: AhrefsBot
disallow: / 

User-agent: IfatSearch
disallow: / 
User-agent: Googlebot-News
Disallow: /haaretz-labels*
Disallow: /nyt*

#allow: /meta/Tag/Israel%20news

User-agent: *
Disallow: */mypromotions
Disallow: */misc/sitemap-page
Disallow: */misc/article-print-page/*
Disallow: */misc/iphone-blog-article/*
Disallow: */misc/comment-page/*
Disallow: */hasen/*
Disallow: */captain/*
Disallow: */9401/*
Disallow: */nyt*
Disallow: */mobile/*
Disallow: */news/international/*
Disallow: /9039763/*
Disallow: */misc/comment-page/*
Disallow: */misc/adxtest1/*
Disallow: */misc/search-results/*
Disallow: */misc/search-results
Disallow: */misc/all-today-s-headlines/*
Disallow: */misc/iphone-article/* 
Disallow: */misc/haaretzcomsmartphoneapp* 
Disallow: */son/cmlink/*
Disallow: */smadar*
Disallow: */breaking*
Disallow: /*2.12984*
Disallow: */papi*
Disallow: *1.5460918*
Disallow: */wires*
Disallow: *1.7362185*


Noindex: /.premium-how-one-israeli-s-dream-of-burger-riches-went-up-in-smoke-1.5482157

sitemap: https://www.haaretz.com/sitemap-2013.xml
sitemap: https://www.haaretz.com/sitemap-2014.xml
sitemap: https://www.haaretz.com/sitemap-2015.xml
sitemap: https://www.haaretz.com/sitemap-2016.xml
sitemap: https://www.haaretz.com/sitemap-2017.xml
sitemap: https://www.haaretz.com/sitemap-2018.xml
sitemap: https://www.haaretz.com/sitemap-2019.xml
sitemap: https://www.haaretz.com/news.xml
