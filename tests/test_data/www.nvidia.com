# Welcome to NVIDIA
# We like people who read our code!
# Cruise by our careers section while you're here
# https://nvidia.wd5.myworkdayjobs.com/NVIDIAExternalCareerSite
# Or check out our YouTube channel for our latest
# https://www.youtube.com/user/nvidia
# Last updated 17th July 2019

sitemap: https://www.nvidia.com/content/dam/sitemaps/sitemap_index.xml

User-agent: *
Disallow: /content/license/driver_license.aspx

Disallow: /attach/

Disallow: /props/

Disallow: /ddl2*

Disallow: /processFind*

Disallow: /admin/

Disallow: /*.swf$

Disallow: /content/gated-pdfs/*

Disallow: /content/g/pdfs/*

Disallow: /content/g/html/*

Disallow: /content/g/video/*

Disallow: /email-verify/

Disallow: /gated-resources/*