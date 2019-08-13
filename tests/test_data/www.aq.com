#hide site from the waybackmachine
User-agent: ia_archiver
Disallow: /

#hide certain folders and files from ALL crawlers
User-agent: *
Disallow: /archive/designnotes/
Disallow: /help/
Disallow: /layout/
Disallow: /email/
Disallow: /character.asp?id=
Disallow: /aw-character.asp?id=
Disallow: /nix.asp?id=
