# Website Sitemap
Sitemap: http://www.soundsnap.com/sitemap.xml

user-agent: *
Disallow: /audio/download/
Disallow: /audio/mp3/
Disallow: /files/
Disallow: /search/
Disallow: /favorite_nodes/
Disallow: /user-name/
Disallow: /user/
Disallow: /u/
Disallow: /streamers/

#Directories
Disallow: /themes/
Disallow: /modules/

#URLs
Disallow: /*/feed$
Disallow: /node/add