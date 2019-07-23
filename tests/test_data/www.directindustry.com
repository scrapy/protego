User-agent: Ocelli
Disallow: /


User-agent: psbot
Disallow: /


User-agent: TurnitinBot
Disallow: /


User-agent: *
Disallow: /images_*/2ai/
Disallow: /restricted/
Disallow: /*/restricted/
Disallow: /r/
Disallow: /*/r/
Disallow: /scripts/
Disallow: /*/scripts/
Disallow: /tab/
Disallow: /*/tab/
Disallow: /pdf/tab/
Disallow: /*/pdf/tab/
Disallow: /*/pdf-en/
Disallow: /cache_*/
Disallow: /pdf/*/Show/
Disallow: /*/pdf/*/Show/
Disallow: /pdf/incat/
Disallow: /*/pdf/incat/
Disallow: /pdf/incatsoc/
Disallow: /*/pdf/incatsoc/
Disallow: /*favicon.ico
Disallow: /*.pdf$
Disallow: /pdf-en/
Disallow: /ajax/
Disallow: /*/ajax/
Disallow: /static/ressources/
Disallow: /*/static/ressources/
Disallow: /*.json$
Disallow: /request*$
Disallow: /*/request*$
Disallow: /images/*$
Disallow: /localization/country/list.html$
Disallow: /*/localization/country/list.html
Disallow: /*?*
Disallow: /myspace/
Disallow: /*/myspace/
Disallow: /tracking/*
Disallow: /*/images_*/2ai/
Disallow: /*/images/*
Disallow: /*/tracking/*
Disallow: /pdf/*-_*.html
Disallow: /*/pdf/*-_*.html
Disallow: /discover-us/thank-you.html