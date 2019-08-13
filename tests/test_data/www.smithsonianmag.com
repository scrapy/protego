user-agent: *
Disallow: /click?
Disallow: /search?
Disallow: /rss?
Disallow: /?epl=
Disallow: /*?epl=
Disallow: /*?*&epl=
Disallow: /article/preview/*/
Disallow: /tours/sid-*/
Disallow: /tours/*/js/
Disallow: /*/national-parks-existential-crisis-180964880/

User-agent: ia_archiver
Disallow: /

sitemap: https://www.smithsonianmag.com/sitemap.xml
