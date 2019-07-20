User-agent: *
Sitemap: https://www.vmware.com/files/sitemaps/sitemap-index.xml
Sitemap: https://www.vmware.com/files/sitemaps/href-sitemap-index.xml
Sitemap: https://www.vmware.com/files/sitemaps/href-support-sitemap-index.xml

Sitemap: https://www.vmware.com/files/sitemaps/navigation.xml
Sitemap: https://www.vmware.com/files/sitemaps/pdf-sitemap-index.xml
Sitemap: https://www.vmware.com/files/sitemaps/images_sitemap.xml

# List folders crawlers are not allowed to Index.

DisAllow: /go/management-cloud-services-blog

Disallow: /img/
Disallow: /inc/
Disallow: /*support/developer*
Disallow: /*download/eula*
Disallow: /*search/views*
Disallow: /*news/*/1999*
Disallow: /*news/*/2000*
Disallow: /*news/*/2001*
Disallow: /*news/*/2002*
Disallow: /*news/*/2003*
Disallow: /*news/*/2004*
Disallow: /*news/*/2005*
Disallow: /*news/*/2006*
Disallow: /*news/*/2007*
Disallow: /*news/*/2008*
Disallow: /*news/*/2009*
Disallow: /*news/*/2010*
Disallow: /*news/*/2011*
Disallow: /*news/*/2012*
Disallow: /*news/*/2013*
Disallow: /*news/*/2014*
Disallow: /*news/*/2015*
Disallow: /content/microsites/multiple-clouds-with-cloud-management-platform/managing-multiple-clouds.html
Disallow: /*cn/partners/north.html 
Disallow: /*cn/partners/south.html
Disallow: /*cn/partners/west.html
Disallow: /*cn/partners/east.html


Disallow: /*eventType=*
Disallow: /*region=*
Disallow: /*type=*
Disallow: /*topic=*
Disallow: /*resultVal=*
 
Allow: /*eventType=All_Events&region=All-Events&type=All&topic=All&resultVal=10*
Allow: /*region=All-Events&type=All&resultVal=10&eventType=All_Events*

Disallow: *htmlhttp*
Disallow: *html.html*