User-agent: Sogou Pic Spider/3.0(+http://www.sogou.com/docs/help/webmasters.htm#07)
Disallow: /
#YisouSpider  China
User-agent: YisouSpider
Disallow: /
 
User-agent: Baiduspider
Disallow: /
 
User-agent: Baiduspider+
Disallow: /
 
User-agent: Baiduspider+(+http://www.baidu.com/search/spider.htm)
Disallow: /
 
User-agent: Baiduspider/2.0;+http://www.baidu.com/search/spider.html
Disallow: /
 
User-agent: Baiduspider/2.0
Disallow: /
 
User-agent: +Baiduspider
Disallow: /
 
User-agent: +Baiduspider/2.0
Disallow: /
 
User-agent: +Baiduspider/2.0;++http://www.baidu.com/search/spider.html
Disallow: /
 
User-agent: Mozilla/5.0(compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)
Disallow: /
 
User-agent: Baiduspider-image+(+http://www.baidu.com/search/spider.htm)
Disallow: /
 
User-agent: Mozilla/5.0 (compatible; Sosospider/2.0; +http://help.soso.com/webspider.htm)
Disallow: /
 
User-agent: Mozilla/5.0 (compatible; JikeSpider; +http://shoulu.jike.com/spider.html)
Disallow: /

User-agent: Twitterbot
Allow: /oicms/

User-agent: *
Disallow: /oicms/
Disallow: /ca/oicms/
Disallow: /fr-ca/oicms/
Disallow: /in/oicms/
Disallow: /content/intuit_com/
Disallow: /company/press-room/press-releases/
Disallow: /ca/company/press-room/press-releases/
Disallow: /fr-ca/company/press-room/press-releases/
Disallow: /commerce/
Disallow: /search/?search_term=*
Disallow: /ai/labs

Sitemap: https://www.intuit.com/sitemap.xml
Sitemap: https://www.intuit.com/ca/sitemap.xml
Sitemap: https://www.intuit.com/fr-ca/sitemap.xml
Sitemap: https://www.intuit.com/in/sitemap.xml
Sitemap: https://www.intuit.com/blog/sitemap.xml
                                                                                                                                                                                                      
#    Intuit is hiring and
#    looking for talented people.
#
#    Learn more at:
#    https://www.intuit.com/careers/
#
#                                                                                                                    
#   ******       ************     *****************  *****        *****    ******  *****************  
#   ******    ******************  ****************   *****        *****    ******  *****************  
#   ******    ******      ******       ******        *****        *****    ******       ******        
#   ******    ******      ******       ******        *****        *****    ******       ******        
#   ******    ******      ******       ******        *****        *****    ******       ******        
#   ******    ******      ******       ******        ******      ******    ******       ******        
#   ******    ******      ******       ******        ******************    ******       ******        
#   ******    ******      ******       ******         ****************     ******       ******        
#   ******    ******      ******       ******           ************       ******       ******                                                                                                      
