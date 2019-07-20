User-agent: *
Allow: /
Disallow: /*/lgecs.downloadFile.ldwf*
Disallow: /*/support/product-help/doc*
Disallow: /*/support/videos/videos-tutorials-layer*
Disallow: /*/support/error-pages
Disallow: /error
Disallow: /common/bug
Disallow: /common/content_*
Disallow: /common/error
Disallow: /common/search/
Disallow: /common/support
Disallow: /templatedata
Disallow: /war
Disallow: /download/support/contactus
Disallow: /adm
Disallow: /Admin
Disallow: /download/support
Disallow: /*.ajax$
Disallow: /us/about-lg/investor-relations/
Disallow: /*gclid
Disallow: /us/includes/
Disallow: /us/cms-templates/
Disallow: /us/common/
Disallow: /us/compare/
Disallow: /us/sys/
Disallow: /us/application-data
Disallow: /us/secure
Disallow: /*/products/wtb*
Disallow: /compare.lg?*
Disallow: /*/*.swf$
Disallow: /mylg/
Disallow: /flash/
Disallow: /*/*/reviews/product/*
Disallow: /lgecs.downloadFile.ldwf?*
Disallow: /es/HEProductExperiencePage
Disallow: /es/HEProductExperiencePage/
Disallow: /es/HEProductExperiencePage/tv/main
Disallow: /*/srch*
Disallow: /*?search=*
Disallow: /*?bvrrp=*
Disallow: /*_escaped_fragment*
Disallow: /*?lgeurl=*
Disallow: /*/response/*
Disallow: /*/popup/*
Disallow: /*/search.lg*
Disallow: /au/pdfs/*
Disallow: /nz/pdfs/*
Disallow: /*.jsp?subCatId
Disallow: /*.jsp?value
Disallow: /*.jsp?contextPath
Disallow: /*.jsp?ref_no
Disallow: /*.jsp?s_kwcid
Disallow: /*.jsp?cmpid
Disallow: /jp/support/repair-warranty/locate-repair-center-detail/*
Disallow: /jp/mobile-phones/download-page/* 

User-agent: Baiduspider
Disallow: /*/wtb?modelName=*
Disallow: /*/my-support
Disallow: /*/mylg-login
Disallow: /*?cmpid
Disallow: /*/player?videoId=
Disallow: /*/embedded-player?videoId=

User-agent: Yandex
Allow: /
Disallow: /error
Disallow: /common/bug
Disallow: /common/content_*
Disallow: /common/error
Disallow: /common/support
Disallow: /templatedata
Disallow: /war
Disallow: /download/support/contactus
Disallow: /adm
Disallow: /Admin
Disallow: /download/support
Disallow: /*.ajax$
Disallow: /us/about-lg/investor-relations/
Disallow: /es/HEProductExperiencePage
Disallow: /es/HEProductExperiencePage/
Disallow: /es/HEProductExperiencePage/tv/main
Disallow: /*cmpid*
Disallow: /*product-help/CT
Disallow: /*locate-repair-center-detail/
Disallow: /*video-tutorials/CT
Disallow: /*utm_
Disallow: /*/search.lg*
Disallow: /*/response/*
Disallow: /*?search=*
Disallow: /*/popup/*
Disallow: /*?bvrrp=*
Disallow: /*/srch*
Clean-param: utm_source&utm_medium&utm_term&utm_campaign&utm_content / 
Clean-param: gclid /
Clean-param:countryCd /*.jsp
Clean-param:subCatId /*.jsp
Clean-param:value /*.jsp
Clean-param:contextPath /*.jsp
Clean-param:ref_no /*.jsp
Clean-param:s_kwcid /*.jsp
Clean-param:cmpid /*.jsp


# Sitemap files
Sitemap: https://www.lg.com/sitemap.xml

Host: www.lg.com

User-agent: Mediapartners-Google
Allow:/*.jsp?cmpid

User-agent: AdsBot-Google
Allow: /*.jsp?cmpid

User-agent: AdsBot-Google-Mobile
Allow: /*.jsp?cmpid