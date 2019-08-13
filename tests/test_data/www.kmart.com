# 20190428
# www.kmart.com
User-agent: Comodo-Webinspector-Crawler
Disallow: /

User-agent: *
Disallow: /*_10154
Disallow: /*_10153
Disallow: /*_10175
Disallow: /*_10155
Disallow: /*_23151
Disallow: *{manageAccount}*
Disallow: *%7BmanageAccount%7D*
Disallow: *{manageaccount}*
Disallow: *%7Bmanageaccount%7D*
Disallow: */shc/s/UserAccountView*
Disallow: *shccas/shcLogin
Disallow: *universalprofile*
Disallow: *{orderCenter}*
Disallow: *{ordercenter}*
Disallow: *%7BorderCenter%7D*
Disallow: *%7Bordercenter%7D*
Disallow: *%7Bprofile%7D*
Disallow: *{profile}*
Disallow: /search=*Craftmatic*
Disallow: /search=*craftmatic*
Disallow: ?sid=*
Disallow: *%7BsearsCard%7D*
Disallow: *{searsCard}*
Disallow: *p_10153_12605_SPM8112375429*
Disallow: *p_10153_12605_SPM1057955601*
Disallow: */undefineduniversalprofile/*

Disallow: /shc/s/*
Disallow: */undefined/img/*

Disallow: /live-eyewear*
Disallow: */p-0000000000000002676500000000000000518194P

#Lumen #18359173
Disallow: */p-A021608286
Disallow: */p-SPM14554341515

# Category
Sitemap: https://www.kmart.com/Sitemap_Category_Index.xml

# Product
Sitemap: https://www.kmart.com/Sitemap_Index_Product_1.xml
#Sitemap: https://www.kmart.com/Sitemap_Index_Product_MP_1.xml

# Misc
Sitemap: https://www.kmart.com/Sitemap_Kmart_Local.xml.gz
Sitemap: https://www.kmart.com/Sitemap_Kmart_Filterlist_Index.xml

#Images
#Sitemap: https://www.kmart.com/Sitemap_Index_Image_1.xml
#Sitemap: https://www.kmart.com/Sitemap_Index_Image_MP_1.xml
