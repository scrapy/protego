# If you are not a robot sniffing around in this file,
# We might be looking for you to join our SEO team
# Contact us here: search.advertising@tnt.com
#
#  _____ _  _ _____ 
# |_   _| \| |_   _|
#   | | | .` | | |  
#   |_| |_|\_| |_|  
#                   


Sitemap: https://www.tnt.com/sitemap_index.xml


User-agent: *

Disallow: /*securedoc*
Disallow: /pricing/common/*
Disallow: /pricing/en_GB/*
Disallow: /*/apps/process_flow/*
Disallow: /_css/*
Disallow: /_js/*
Disallow: /express/generic/en_gm.html
Disallow: /express/generic/en_mo.html
Disallow: /wwtt/Prepopulator?null
Disallow: /yourtnt/*
Disallow: /webtracker/common/*
Disallow: /webtracker/ukitemtracking.do*
Disallow: /webtracker/ukpodimage.do*
Disallow: /*?navigation=0*
Disallow: /express/qa_gc/*
Disallow: *alertbar.json
Disallow: */corporatecareer/ScriptResource.axd*
Disallow: */corporatecareer/WebResource.axd*

User-agent: Baiduspider
Allow: */zh_cn/*
Allow: */en_cn/*
Allow: */zh_tw/*
Allow: */zh_hk/*
Allow: */en_hk/*
Allow: /corporate/*
Allow: /assets/*
Allow: /dam/*
Allow: /content/*
Allow: *.js
Allow: *.css
Allow: /$
Allow: /app$
Allow: /mytnt$
Disallow: /*

User-agent: Yandex
Host: www.tnt.com
