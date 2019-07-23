#SGH
User-agent: *
# Sitemap: https://www.sunglasshut.com/sitemap.xml
# Sitemap: https://www.sunglasshut.com/au/sitemap.xml
# Sitemap: https://www.sunglasshut.com/ca/sitemap.xml
# Sitemap: https://www.sunglasshut.com/uk/sitemap.xml
# Sitemap: https://www.sunglasshut.com/za/sitemap.xml

Disallow: /images/*
Disallow: /sghus.cfm?
Disallow: /sgh-ca-sgh-ca/
Disallow: /m20/en/sgh-ca-sgh-ca/
Disallow: /sunglasses-sale/
Disallow: /OrderCalculate?*
Disallow: /*/SearchDisplay?*
Disallow: /*/MyFavoritesView?*
Disallow: /MyAccountView?*
Disallow: /m20SearchDisplayView?*
Disallow: /*/AjaxStoreLocatorDisplayView?*
Disallow: /*/*/*?krypto=*
