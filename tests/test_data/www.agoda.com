#	   (                 (          
#	   )\    (  (        )\ )    )  
#	((((_)(  )\))(  (   (()/( ( /(  
#	 )\ _ )\((_))\  )\   ((_)))(_)) 
#	 (_)_\(_)(()(_)((_)  _| |((_)_  
#	  / _ \ / _` |/ _ \/ _` |/ _` | 
#	 /_/ \_\\__, |\___/\__,_|\__,_| 
#	        |___/      
#
#
# If you like bots this much, then why not help us rank for all the things. Email seoPros@agoda.com
#
#
User-agent: *
Disallow: /*/hotel/all/
Disallow: /account/
Disallow: /*/account/

User-agent: Googlebot
Disallow: /*/hotel/all/
Disallow: /partners/partnersearch.aspx
Disallow: /*/partners/partnersearch.aspx
Disallow: /account/
Disallow: /*/account/

User-agent: google-hoteladsverifier
Disallow:

User-agent: AdsBot-Google
Disallow: /zn-hk/

User-agent: TurnitinBot
Disallow: /

User-agent: NPBot-1/2.0
Disallow: /

User-agent: NPBot
Disallow: /

User-agent: psbot
Disallow: /

Sitemap: https://www.agoda.com/sitemaps.xml
Sitemap: https://www.agoda.com/fr-fr/sitemaps.xml
Sitemap: https://www.agoda.com/de-de/sitemaps.xml
Sitemap: https://www.agoda.com/it-it/sitemaps.xml
Sitemap: https://www.agoda.com/es-es/sitemaps.xml
Sitemap: https://www.agoda.com/ja-jp/sitemaps.xml
Sitemap: https://www.agoda.com/zh-hk/sitemaps.xml
Sitemap: https://www.agoda.com/zh-cn/sitemaps.xml
Sitemap: https://www.agoda.com/ko-kr/sitemaps.xml
Sitemap: https://www.agoda.com/el-gr/sitemaps.xml
Sitemap: https://www.agoda.com/ru-ru/sitemaps.xml
Sitemap: https://www.agoda.com/pt-pt/sitemaps.xml
Sitemap: https://www.agoda.com/nl-nl/sitemaps.xml
Sitemap: https://www.agoda.com/en-ca/sitemaps.xml
Sitemap: https://www.agoda.com/en-in/sitemaps.xml
Sitemap: https://www.agoda.com/en-gb/sitemaps.xml
Sitemap: https://www.agoda.com/en-za/sitemaps.xml
Sitemap: https://www.agoda.com/en-au/sitemaps.xml
Sitemap: https://www.agoda.com/en-sg/sitemaps.xml
Sitemap: https://www.agoda.com/zh-tw/sitemaps.xml
Sitemap: https://www.agoda.com/en-nz/sitemaps.xml
Sitemap: https://www.agoda.com/th-th/sitemaps.xml
Sitemap: https://www.agoda.com/ms-my/sitemaps.xml
Sitemap: https://www.agoda.com/vi-vn/sitemaps.xml
Sitemap: https://www.agoda.com/sv-se/sitemaps.xml
Sitemap: https://www.agoda.com/id-id/sitemaps.xml
Sitemap: https://www.agoda.com/pl-pl/sitemaps.xml
Sitemap: https://www.agoda.com/nb-no/sitemaps.xml
Sitemap: https://www.agoda.com/da-dk/sitemaps.xml
Sitemap: https://www.agoda.com/fi-fi/sitemaps.xml
Sitemap: https://www.agoda.com/cs-cz/sitemaps.xml
Sitemap: https://www.agoda.com/tr-tr/sitemaps.xml
Sitemap: https://www.agoda.com/ca-es/sitemaps.xml
Sitemap: https://www.agoda.com/hu-hu/sitemaps.xml
Sitemap: https://www.agoda.com/bg-bg/sitemaps.xml
Sitemap: https://www.agoda.com/ro-ro/sitemaps.xml
Sitemap: https://www.agoda.com/sl-si/sitemaps.xml
Sitemap: https://www.agoda.com/he-il/sitemaps.xml
Sitemap: https://www.agoda.com/ar-ae/sitemaps.xml
Sitemap: https://www.agoda.com/nl-be/sitemaps.xml
Sitemap: https://www.agoda.com/en-ie/sitemaps.xml
Sitemap: https://www.agoda.com/pt-br/sitemaps.xml
Sitemap: https://www.agoda.com/es-ar/sitemaps.xml
Sitemap: https://www.agoda.com/es-mx/sitemaps.xml
Sitemap: https://www.agoda.com/lt-lt/sitemaps.xml
Sitemap: https://www.agoda.com/lv-lv/sitemaps.xml
Sitemap: https://www.agoda.com/hr-hr/sitemaps.xml
Sitemap: https://www.agoda.com/et-ee/sitemaps.xml
Sitemap: https://www.agoda.com/uk-ua/sitemaps.xml