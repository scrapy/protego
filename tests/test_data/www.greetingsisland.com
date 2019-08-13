User-agent: *
Disallow: /ecard/
Disallow: /eCard/
Disallow: /einvitation/
Disallow: /invites/
Disallow: /members/
Disallow: /search/



#allowing twitter bot so ecard will show in ticket
User-agent: Twitterbot
Disallow:

Sitemap: http://www.greetingsisland.com/sitemap.xml

