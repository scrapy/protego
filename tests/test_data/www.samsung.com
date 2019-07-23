User-agent: *
Disallow: /*.notfound.html
Disallow: /*.redirect.html
Disallow: /*/*/*.html/*
Disallow: /*/api/*
Disallow: /*/business/search/
Disallow: /*/parking
Disallow: /*/parking/
Disallow: /*/search/
Disallow: /*/system/*
Disallow: /*/info/contactus/email-the-ceo/
Disallow: /*/c/p/
Disallow: /ae/*.do
Disallow: /ae/*.swf
Disallow: /ae_ar/*.do
Disallow: /ae_ar/*.swf
Disallow: /de/api/*
Disallow: /de/business/api/*
Disallow: /de/system/*
Disallow: /de/aboutsamsung/inner-circle-2017/
Disallow: /de/offer/kinotickets_gewinnspiel_30082018/
Disallow: /es/api/*
Disallow: /fr/*.doc$
Disallow: /fr/*.docx$
Disallow: /fr/*.pdf$
Disallow: /fr/*.ppt$
Disallow: /fr/*.pptx$
Disallow: /ie/pdf/
Disallow: /nl/meekijken/
Disallow: /nz/edm/n9/w1/crown-pre-order/
Disallow: /ru/*?group=*
Disallow: /ru/*printPage.sic
Disallow: /ru/*productcompare
Disallow: /ru/*search
Disallow: /ru/*share-with-colleagues-form.do?
Disallow: /ru/cdm/*
Disallow: /ru/offer/*
Disallow: /smartphone/galaxys/video/*.swf$
Disallow: /smartphone/galaxy-s-2/video/*.swf$
Disallow: /smartphone/galaxy-tab/video/*.swf$
Disallow: /smartphone/navigon/XML_Content/*.xml
Disallow: /smartphone/omnia/icon/*.swf$
Disallow: /smartphone/omnia/pro/*.swf$
Disallow: /smartphone/smartphone/wave/video/*.swf$
Disallow: /smartphone/technology/video/*.swf$
Disallow: /uk/*productcompare
Disallow: /uk/wdc/*
Disallow: /uk/*.pdf$
Disallow: /uk/pdf/
Disallow: /uk/smartphones/galaxy-s9/3rdparty*
Disallow: /uk/smartphones/galaxy-s9/headtest/*
Disallow: /us/dealer/*
Disallow: /us/epp/*
Disallow: /us/support/service/agent/*
Disallow: /us/business/search/
Disallow: /us/api/
Disallow: /us/trade-in/program-violation/
Disallow: /qled-tv/
Disallow: /*/smartphones/galaxy-note9/loadingtest/dtm
Disallow: /*/smartphones/galaxy-note9/loadingtest/launch
Disallow: /*/smartphones/galaxy-note9/loadingtest/etc
Disallow: /sg/ab/*
Disallow: /*/?bvstate*

User-agent: Yandex
Allow: /
Disallow: /ru/cdm/*
Disallow: /ru/offer/*
Clean-param: utm
Clean-param: cid
Disallow: /africa_en/
Disallow: /africa_fr/
Disallow: /africa_pt/
Disallow: /al/
Disallow: /ar/
Disallow: /au/
Disallow: /at/
Disallow: /be/
Disallow: /be_fr/
Disallow: /br/
Disallow: /bg/
Disallow: /ca/
Disallow: /ca_fr/
Disallow: /cl/
Disallow: /cn/
Disallow: /co/
Disallow: /hr/
Disallow: /cz/
Disallow: /dk/
Disallow: /eg/
Disallow: /ee/
Disallow: /fi/
Disallow: /fr/
Disallow: /de/
Disallow: /gr/
Disallow: /hk/
Disallow: /hk_en/
Disallow: /hu/
Disallow: /in/
Disallow: /id/
Disallow: /iran/
Disallow: /ie/
Disallow: /il/
Disallow: /it/
Disallow: /sec/
Disallow: /lv/
Disallow: /levant/
Disallow: /levant_ar/
Disallow: /lt/
Disallow: /my/
Disallow: /mx/
Disallow: /mm/
Disallow: /nl/
Disallow: /nz/
Disallow: /n_africa/
Disallow: /no/
Disallow: /pk/
Disallow: /latin/
Disallow: /latin_en/
Disallow: /py/
Disallow: /pe/
Disallow: /ph/
Disallow: /pl/
Disallow: /pt/
Disallow: /ro/
Disallow: /sa/
Disallow: /sa_en/
Disallow: /rs/
Disallow: /sg/
Disallow: /sk/
Disallow: /si/
Disallow: /za/
Disallow: /es/
Disallow: /se/
Disallow: /ch/
Disallow: /ch_fr/
Disallow: /tw/
Disallow: /th/
Disallow: /tr/
Disallow: /ae/
Disallow: /ae_ar/
Disallow: /uk/
Disallow: /uy/
Disallow: /us/
Disallow: /vn/

User-Agent: Sitereport
Allow: /ru*
Disallow: /

User-agent: Googlebot
Disallow:

User-Agent: Googlebot-image
Disallow:

# Sitemap files
Sitemap:https://www.samsung.com/sitemap.xml
Sitemap:https://www.samsung.com/africa_en/sitemap.xml
Sitemap:https://www.samsung.com/africa_fr/sitemap.xml
Sitemap:https://www.samsung.com/africa_pt/sitemap.xml
Sitemap:https://www.samsung.com/al/sitemap.xml
Sitemap:https://www.samsung.com/ar/sitemap.xml
Sitemap:https://www.samsung.com/au/sitemap.xml
Sitemap:https://www.samsung.com/at/sitemap.xml
Sitemap:https://www.samsung.com/be/sitemap.xml
Sitemap:https://www.samsung.com/be_fr/sitemap.xml
Sitemap:https://www.samsung.com/br/sitemap.xml
Sitemap:https://www.samsung.com/bg/sitemap.xml
Sitemap:https://www.samsung.com/ca/sitemap.xml
Sitemap:https://www.samsung.com/ca_fr/sitemap.xml
Sitemap:https://www.samsung.com/cl/sitemap.xml
Sitemap:https://www.samsung.com/cn/sitemap.xml
Sitemap:https://www.samsung.com/co/sitemap.xml
Sitemap:https://www.samsung.com/hr/sitemap.xml
Sitemap:https://www.samsung.com/cz/sitemap.xml
Sitemap:https://www.samsung.com/dk/sitemap.xml
Sitemap:https://www.samsung.com/eg/sitemap.xml
Sitemap:https://www.samsung.com/ee/sitemap.xml
Sitemap:https://www.samsung.com/fi/sitemap.xml
Sitemap:https://www.samsung.com/fr/sitemap.xml
Sitemap:https://www.samsung.com/de/sitemap.xml
Sitemap:https://www.samsung.com/gr/sitemap.xml
Sitemap:https://www.samsung.com/hk/sitemap.xml
Sitemap:https://www.samsung.com/hk_en/sitemap.xml
Sitemap:https://www.samsung.com/hu/sitemap.xml
Sitemap:https://www.samsung.com/in/sitemap.xml
Sitemap:https://www.samsung.com/id/sitemap.xml
Sitemap:https://www.samsung.com/iran/sitemap.xml
Sitemap:https://www.samsung.com/ie/sitemap.xml
Sitemap:https://www.samsung.com/il/sitemap.xml
Sitemap:https://www.samsung.com/it/sitemap.xml
Sitemap:https://www.samsung.com/kz_kz/sitemap.xml
Sitemap:https://www.samsung.com/kz_ru/sitemap.xml
Sitemap:https://www.samsung.com/sec/sitemap.xml
Sitemap:https://www.samsung.com/lv/sitemap.xml
Sitemap:https://www.samsung.com/levant/sitemap.xml
Sitemap:https://www.samsung.com/levant_ar/sitemap.xml
Sitemap:https://www.samsung.com/lt/sitemap.xml
Sitemap:https://www.samsung.com/my/sitemap.xml
Sitemap:https://www.samsung.com/mx/sitemap.xml
Sitemap:https://www.samsung.com/mm/sitemap.xml
Sitemap:https://www.samsung.com/mk/sitemap.xml
Sitemap:https://www.samsung.com/nl/sitemap.xml
Sitemap:https://www.samsung.com/nz/sitemap.xml
Sitemap:https://www.samsung.com/n_africa/sitemap.xml
Sitemap:https://www.samsung.com/no/sitemap.xml
Sitemap:https://www.samsung.com/pk/sitemap.xml
Sitemap:https://www.samsung.com/latin/sitemap.xml
Sitemap:https://www.samsung.com/latin_en/sitemap.xml
Sitemap:https://www.samsung.com/py/sitemap.xml
Sitemap:https://www.samsung.com/pe/sitemap.xml
Sitemap:https://www.samsung.com/ph/sitemap.xml
Sitemap:https://www.samsung.com/pl/sitemap.xml
Sitemap:https://www.samsung.com/pt/sitemap.xml
Sitemap:https://www.samsung.com/ro/sitemap.xml
Sitemap:https://www.samsung.com/ru/sitemap.xml
Sitemap:https://www.samsung.com/sa/sitemap.xml
Sitemap:https://www.samsung.com/sa_en/sitemap.xml
Sitemap:https://www.samsung.com/rs/sitemap.xml
Sitemap:https://www.samsung.com/sg/sitemap.xml
Sitemap:https://www.samsung.com/sk/sitemap.xml
Sitemap:https://www.samsung.com/si/sitemap.xml
Sitemap:https://www.samsung.com/za/sitemap.xml
Sitemap:https://www.samsung.com/es/sitemap.xml
Sitemap:https://www.samsung.com/se/sitemap.xml
Sitemap:https://www.samsung.com/ch/sitemap.xml
Sitemap:https://www.samsung.com/ch_fr/sitemap.xml
Sitemap:https://www.samsung.com/tw/sitemap.xml
Sitemap:https://www.samsung.com/th/sitemap.xml
Sitemap:https://www.samsung.com/tr/sitemap.xml
Sitemap:https://www.samsung.com/ae/sitemap.xml
Sitemap:https://www.samsung.com/ae_ar/sitemap.xml
Sitemap:https://www.samsung.com/uk/sitemap.xml
Sitemap:https://www.samsung.com/ua/sitemap.xml
Sitemap:https://www.samsung.com/uy/sitemap.xml
Sitemap:https://www.samsung.com/us/sitemap.xml
Sitemap:https://www.samsung.com/vn/sitemap.xml
Host: www.samsung.com
