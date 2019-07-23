sitemap: https://www.directv.com/city/citysitemap.xml
sitemap: https://www.directv.com/content/dam/dtv/directv_marketing/sitemap/sitemap.xml
sitemap: https://www.directv.com/sitemapfiles/dtv_movies_sitemap.xml
sitemap: https://www.directv.com/sitemapfiles/dtv_tv_sitemap.xml
sitemap: https://www.directv.com/sitemapfiles/dtv_sports_sitemap.xml

User-agent: *
Allow: /

Disallow: /DTVAPP/login/
Allow: /DTVAPP/login/login.jsp
Disallow: /DTVAPP/compare/printablePackageChannels.jsp*
Disallow: /DTVAPP/content/telco/
Disallow: /DTVAPP/global/moreInfoText.jsp*
Disallow: /DTVAPP/global/secondaryIndex.jsp
Disallow: /DTVAPP/packProg/channelChart2.jsp*
Disallow: /DTVAPP/pepod/component/printablePackageChannels.jsp*
Disallow: /DTVAPP/search/
Disallow: /adult/*
Disallow: /buy/
Disallow: /entertainment/data/
Disallow: /learn/
Disallow: /see/

