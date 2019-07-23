User-agent: Yandex
Disallow: /music/royalty-free/mp3-royaltyfree/ # blocks access to mp3s

User-agent: Mediapartners-Google
Disallow: /home/ 

Disallow:
User-agent: *
Disallow: /web-bin/ 
Disallow: /users/ 
Disallow: /stats/ 
Disallow: /home/ 
Disallow: /gallimaufry/bad/ 
Disallow: /gallimaufry/study.html 
Disallow: /beta/cal-yearly/cpdfs/
Disallow: /beta/cal-yearly/configurable/
Disallow: /beta/cal-monthly/pdfs/
Disallow: /named/thankYou.html
Disallow: /named/named.txt
Disallow: /named/namegenderlist.txt
Disallow: /named/nameonlylist.txt
Disallow: /music/royalty-free/Downloads/
Disallow: /music/royalty-free/mp3-preview2/


User-agent: Atomz/1.0
Disallow: /

User-agent: linkwalker
Disallow: /

User-agent: RMA
Disallow: /


