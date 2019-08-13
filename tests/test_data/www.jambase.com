User-agent: *
Disallow: /?blackhole

User-agent: Cliqzbot
Disallow: / 

#Exabot/3.0 - France proxy scraper
User-agent: Exabot/3.0
Disallow: /

#Exalead proxy scraper  France 
User-agent: Exalead
Disallow: /

User-agent: ExaLead Crawler
Disallow: /