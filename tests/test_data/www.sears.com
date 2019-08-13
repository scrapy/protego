# 20190428-B 
# Sears SEO Team 
# www.sears.com
User-agent: Comodo-Webinspector-Crawler
Disallow: /

User-agent: *
Disallow: /*_10175
Disallow: /*_10154
Disallow: /*_10151
Disallow: *{searsCard}*
Disallow: *%7BsearsCard%7D*
Disallow: *{searscard}*
Disallow: *%7Bsearscard%7D*
Disallow: *{profile}*
Disallow: *%7Bprofile%7D*
Disallow: *{orderCenter}*
Disallow: *%7BorderCenter%7D*
Disallow: *{ordercenter}*
Disallow: *%7Bordercenter%7D*
Disallow: *{paySearsCard}*
Disallow: *%7BpaySearsCard%7D*
Disallow: *{paysearscard}*
Disallow: *%7Bpaysearscard%7D*

Disallow: /universalprofile/*
Disallow: /search=walmart tv ears
Disallow: /search=*tv ears*
Disallow: /search=*Craftmatic*
Disallow: /search=*craftmatic*
Disallow: ?sid=*

Disallow: *p_10153_12605_SPM8112375429*
Disallow: *p_10153_12605_SPM1057955601*
Disallow: */undefineduniversalprofile/*

Disallow: /shc/s/*
Disallow: */undefined/img/*

Disallow: /live-eyewear*
Disallow: */p-0000000000000002676500000000000000518194P
Disallow: *xnxx*
Disallow: /es/us/*

#Lumen #17857110
Disallow: */p-SPM10019094022

#Legal #04012019
Disallow: */WarrantiesandManufacturerContactInformationpdfbd06d713-39a7-49aa-9ae2-b3048772d6d3

#Lumen #18359173
Disallow: */p-A021608286
Disallow: */p-SPM14554341515

# Category
Sitemap: https://www.sears.com/Sitemap_Category_Index.xml

# Product
Sitemap: https://www.sears.com/Sitemap_Index_Product_1.xml
Sitemap: https://www.sears.com/Sitemap_Index_Product_MP_1.xml

# Misc
Sitemap: https://www.sears.com/Sitemap_Local.xml.gz
Sitemap: https://www.sears.com/Sitemap_Knowledge_Center.xml.gz 
Sitemap: https://www.sears.com/Sitemap_Search_Whitelist_Index.xml
Sitemap: https://www.sears.com/Sitemap_Brands.xml.gz

# Marketplace Sellers
Sitemap: https://www.sears.com/Sitemap_Seller_1.xml.gz

# Brands Extended 
Sitemap: https://www.sears.com/Sitemap_PLP_filterList_Brand_Index.xml

# Images
#Sitemap: http://www.sears.com/Sitemap_Index_Image_1.xml
#Sitemap: http://www.sears.com/Sitemap_Index_Image_MP_1.xml