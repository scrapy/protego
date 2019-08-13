# WRAL.com robots.txt

User-agent: bingbot
User-agent: bing
User-agent: Facebot
User-agent: facebookexternalhit
User-agent: googlebot
User-agent: google
User-agent: Mediapartners-Google
User-agent: Slurp
User-agent: Twitterbot
Sitemap: http://www.wral.com/sitemap_index.xml
Disallow:/apps/
Disallow:/*?print_friendly
Disallow:/golo/page/1896337/
Disallow:/rs/page/2173068/
Disallow:/weather/page/1010362/?id=*
Disallow:/weather/?wc_img=*
Disallow:/arrest-photos/8981628/
Disallow:/sports/
Disallow:/search/

User-agent: *
Disallow: /