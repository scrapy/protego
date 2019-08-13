# Begin robots.txt file 
#/-----------------------------------------------\ 
#| In single portal/domain situations, uncomment the sitmap line and enter domain name 
#\-----------------------------------------------/ 
Sitemap: https://www.dickblick.com/sitemap.aspx 


User-agent: * 
Disallow: /admin/ 
Disallow: /App_Browsers/ 
Disallow: /App_Code/ 
Disallow: /App_Data/ 
Disallow: /App_GlobalResources/ 
Disallow: /bin/ 
Disallow: /Install/ 
Disallow: /Activity-Feed/userId/	# Do not index user profiles 
Disallow: */scheme #Do not index */scheme pages (ex. /products/abc/scheme) : Ticket: WDP-2624 
Disallow: */scheme/ #Do not index */scheme pages (ex. /products/abc/scheme) : Ticket: WDP-2624
Disallow: *error* 
Disallow: /orders* 
Disallow: /checkout* 
Disallow: /search* 
Disallow: /lists/wishlist/* 
Disallow: /desktopmodules/* 
Disallow: /DesktopModules/* 
Disallow: /iiscode* 

User-agent: Blick-gsa-crawler 
Disallow: /zz* #Do not index ZZ pages E.G (/zz123/123/): Ticket: HD-13195 

User-agent: gsa-crawler 
Disallow: /zz* #Do not index ZZ pages E.G (/zz123/123/): Ticket: HD-13195 

# End of robots.txt file 