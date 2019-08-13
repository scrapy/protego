#
# robots.txt
#

# Excludes
User-agent: *
Disallow: /AssetManager/
Disallow: /Dashboard/
Disallow: /Download/
Disallow: /Error/
Disallow: /HDView/
Disallow: /License/
Disallow: /Login/
Disallow: /MemberInfo/
Disallow: /Register/
Disallow: /RegisterGmax/
Disallow: /Report/
Disallow: /ReportAbuse/
Disallow: /Seller/
Disallow: /ShoppingCart/
Disallow: /Upload/

User-agent: TurnitinBot
Disallow: /            #Will disallow all urls on your site

# XML Sitemap
Sitemap: http://www.turbosquid.com/Sitemap/Index.xml
