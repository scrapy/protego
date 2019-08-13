# robots.txt for https://www.filemaker.com/

User-agent: Charlotte
Disallow: /

User-agent: *
Disallow: /*/community/
Disallow: /learning/devcon/2014/
Disallow: /learning/devcon/2015/
Disallow: /learning/devcon/2016/
Disallow: /learning/devcon/2017/
Disallow: /*/11help/
Disallow: /*/help_9/
Disallow: /help/*
Disallow: /eight_five/
Disallow: /esd/
Disallow: /store/*
Disallow: /downloads/software/*
Disallow: /downloads/software_old/*
Disallow: /software/
Disallow: /purchase/resellers/docs/

Sitemap: https://www.filemaker.com/sitemap.xml