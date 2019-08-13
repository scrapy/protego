# robots.txt file for www.bdjobs.com

# All other agents will not spider 
User-agent: *
Disallow: /App_Data/
Disallow: /apps/
Disallow: /class/
Disallow: /css/
Disallow: /Data/
Disallow: /datalog/
Disallow: /datepicker/
Disallow: /image/
Disallow: /images/
Disallow: /image_career/
Disallow: /include_file/
Disallow: /mis/
Disallow: /stat_data/


# Google will not spider 
User-agent: Googlebot 
Disallow:

# Google Ad Sense
User-agent: Mediapartners-Google
Disallow:

# Yahoo 
User-agent: Slurp 
Disallow:

# Bing
User-agent: Bingbot
Disallow:

# GA Checker 
User-agent: GA Checker
Disallow:

# Screaming Frog SEO Spider 
User-agent: Screaming Frog SEO Spider
Disallow:

# Visual SEO Studio 
User-agent: Pigafetta
Disallow:

# LinkedInBot
User-agent: LinkedInBot 
Disallow: /

# All other agents will not spider 
User-agent: * 
Disallow: /
