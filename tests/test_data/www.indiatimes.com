#robots_https.txt 
User-agent: *
Allow: /
Disallow: /*.php*
Disallow: /whatshot