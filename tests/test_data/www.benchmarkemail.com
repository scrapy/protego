User-agent: * 
Sitemap: https://benchmarkemail.com/sitemap.xml
Sitemap: https://benchmarkemail.com/sitemap_video.xml 
Sitemap: https://benchmarkemail.com/sitemap_images.xml
Sitemap: https://kb.benchmarkemail.com/sitemap_index.xml

Disallow:/c/*
Disallow:/TemplatePreview*
Disallow:/mx
Disallow:/mx/*

User-agent: Googlebot 
Disallow: /b/
Disallow: /features/emaildesigner/b/
Disallow: /pricing/b/