Sitemap: https://https://www.garuda-indonesia.com/sitemap.xml

User-agent: Googlebot
Disallow: /cgi-bin/
Disallow: /*css$
Disallow: /*.inc$
Disallow: /*js$
Disallow: /*.php$
Disallow: /*?*
Disallow: /*?

User-agent: Googlebot-Image
Disallow: /*.gif$
Disallow: /*.ico$
Disallow: /*.png$
Allow: /*.jpeg$
Allow: /*.jpg$
Allow: /images
Allow: /z/i/

User-agent: Yahoo
Disallow: /cgi-bin/
Disallow: /*css$
Disallow: /*.inc$
Disallow: /*js$
Disallow: /*.php$
Disallow: /*?*
Disallow: /*?

User-agent: ia_archiver
Disallow: /cgi-bin/
Disallow: /*css$
Disallow: /*.inc$
Disallow: /*js$
Disallow: /*.php$
Disallow: /*?*
Disallow: /*?

User-agent: *
Disallow: /cgi-bin/
Disallow: /*css$
Disallow: /*.inc$
Disallow: /*js$
Disallow: /*.php$
Disallow: /*?*
Disallow: /*?