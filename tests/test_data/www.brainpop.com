User-agent: *
Disallow: /cgi-bin/

User-agent: *
Disallow: /*.txt$

User-agent: *
Disallow: /index2.weml$

User-agent: *
Disallow: /*quiz.swf$

User-agent: *
Disallow: /account/loginfailed/*

User-agent: *
Disallow: /*.plist$

User-agent: *
Disallow: /*.xml$

User-agent: *
Allow: /educators/community/*.xml$

User-agent: ltx71 - (http://ltx71.com/)
Disallow: *