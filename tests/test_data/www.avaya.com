Sitemap: https://www.avaya.com/Sitemapindex.xml
User-agent: *
Disallow:/cs/Satellite*
Disallow:/cs/blobserver*
Disallow:/*href*
Disallow:*/results/*
Disallow:*/filter.htm*
Disallow:*/false*
Disallow:*/news-releases/2010/*
Disallow:*/news-releases/2009/*
Disallow:*/news-releases/2008/*
Disallow:*/news-releases/2007/*
Disallow:*/news-releases/2006/*
Disallow:*/news-releases/2005/*
Disallow:*/news-releases/2004/*
Disallow:*/news-releases/2003/*
Disallow:*/news-releases/2002/*
Disallow:*/news-releases/2001/*
Disallow:*/news-releases/2000/*
Disallow:/*&Wrapper=Print&View=ProdPrint
Disallow:/*&R=y*
Disallow:*?R=y*
Disallow:*/documents/gated/*
Disallow:*/confirm/*
User-agent: 360Spider
Disallow: /
Host: www.avaya.com
