User-agent: *
User-agent: Googlebot
User-agent: AdsBot-Google
User-agent: Googlebot-Image
User-agent: OAI-SearchBot
User-agent: GPTBot
User-agent: ChatGPT-User
User-agent: PerplexityBot
User-agent: Google-Extended
Disallow:
Disallow: /*/business/search/
Disallow: /*/parking
Disallow: /*/parking/
Disallow: /*/search/
Disallow: /*/ai-search/
Disallow: /*/business/ai-search/
Disallow: /*/aisearch/
Disallow: /*/business/aisearch/
Disallow: /*/system/*
Allow: /uk/info/contactus/email-the-ceo/
Disallow: /*/info/contactus/email-the-ceo/
Disallow: /*/c/p/
Disallow: /de/aboutsamsung/inner-circle-2017/
Disallow: /ru/cdm/*
Disallow: /uk/*productcompare
Disallow: /uk/wdc/*
Disallow: /us/dealer/*
Disallow: /us/epp/*
Disallow: /us/support/service/agent/*
Disallow: /us/business/search/
Disallow: /us/api/
Disallow: /us/trade-in/program-violation/
Disallow: /sg/ab/*
Disallow: /*/*bvstate*
Disallow: /*/_jcr_content/*
Disallow: /*/galaxy-s10-buy-test/*
Disallow: /*/connected-living/content-library/*
Disallow: /se/info/privacy/officecctv/
Disallow: /au/referral/referred-friend/
Disallow: /*/common/review/
Disallow: /*/edm/
Disallow: /au/email/
Disallow: /au/emailtest/
Disallow: /*/testhome/
Disallow: /*/home_gnb/
Disallow: /*/home_hq/
Disallow: /*/home_3rd/
Disallow: /*/home_notag/
Disallow: /*/home_75/
Disallow: /*/home_50/
Disallow: /*/home_25/
Disallow: /*/speedtest/*
Disallow: /us/business/new/*
Allow: /in/multistore/*
Allow: /hu/multistore/diakkedvezmenyek/
Allow: /es/multistore/es_samsungdeals/
Allow: /sg/multistore/sg_eppfinancing/offers_epp/sc_premium/
Allow: /es/multistore/es_canary_islands/
Allow: /co/multistore/co_epp_members/
Allow: /co/multistore/co_epp_corp_gointegro/
Allow: /co/multistore/co_epp_outlet/
Allow: /co/multistore/co_epp_secret/
Allow: /co/multistore/gobierno_co/
Allow: /co/multistore/pymes_co/
Allow: /pe/multistore/membersshop/
Allow: /cl/multistore/members/
Allow: /ca/multistore/offers/back-to-school/
Allow: /ca_fr/multistore/offers/back-to-school/
Disallow: /*/multistore/*
Disallow: /ru/srr/
Disallow: /in/web/emi/*
Disallow: /chat/api/livechat/*
Disallow: /sec/search/searchresultB2c/*
Disallow: /sec/business/search/searchresult/*
Disallow: *jsessionid=*

User-agent: Yandex
Allow: /
Disallow: /ru/cdm/*
Disallow: /*/search/
Disallow: /ru/multistore/*
Disallow: /*/c/p/
Disallow: *jsessionid=*
Clean-param: utm
Clean-param: cid
Clean-param: bvstate
Clean-param: bvroute
Clean-param: samid
Clean-param: __BVSUBMISSIONPARAMETERS__&bvdisplaycode
Clean-param: dclid
Clean-param: frommarket
Clean-param: guid
Clean-param: _escaped_fragment_
Clean-param: adobe_mc_sdid
Clean-param: search
Clean-param: searchvalue
Clean-param: nm
Clean-param: 0utm_00000000content
Clean-param: action
Clean-param: adobe_mc_ref
Clean-param: AID
Clean-param: ampampampamp
Clean-param: ampamp
Clean-param: yclid
Clean-param: amp
Clean-param: at_preview_token
Clean-param: awc
Clean-param: bvaction
Clean-param: cjevent
Clean-param: clid
Clean-param: clr
Clean-param: electricfrom
Clean-param: email
Clean-param: eucid
Clean-param: from
Clean-param: gbraid
Clean-param: gclsrc
Clean-param: hcb
Clean-param: keyword
Clean-param: mdid
Clean-param: merchant
Clean-param: msk
Clean-param: nm
Clean-param: nw
Clean-param: offerId
Clean-param: oTyp
Clean-param: page
Clean-param: productId
Clean-param: products
Clean-param: q
Clean-param: ref
Clean-param: refx
Clean-param: ru_paid_ppc_yandex_none_ecommerce_smartbanner-cross-2019-ecom_pla_none_remarketingfrom
Clean-param: sa
Clean-param: segment
Clean-param: showroom
Clean-param: siteCode
Clean-param: smartphonesawc
Clean-param: soundbar-q-seriesmdid
Clean-param: spm
Clean-param: state
Clean-param: tag
Clean-param: trade-inmdid
Clean-param: twclid
Clean-param: uhd
Clean-param: utmn_term
Clean-param: zarsrc
Clean-param: pid
Clean-param: id
Clean-param: lang
Clean-param: rootpath
Clean-param: anchor
Clean-param: uid
Clean-param: source
Clean-param: tab
Clean-param: type
Clean-param: model
Clean-param: locale
Disallow: /africa_en/
Disallow: /africa_fr/
Disallow: /africa_pt/
Disallow: /al/
Disallow: /ar/
Disallow: /au/
Disallow: /at/
Disallow: /ba/
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
Disallow: /ps/
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
Disallow: /ae/
Disallow: /ae_ar/
Disallow: /uk/
Disallow: /uy/
Disallow: /us/
Disallow: /vn/
Disallow: /bd/
Disallow: /iq_ar/
Disallow: /iq_ku/
Disallow: /lb/
Disallow: /mn/
Disallow: /ru/srr/
Disallow: /jp/
Disallow: /ge/

User-Agent: Sitereport
Allow: /ru*
Disallow: /

User-agent: proximic
Disallow: /in/

#DaumWebMasterTool:4d08be0d0bd15c674e8ef34874ed14afbb8693a24e1a91f1cf630b03f6b02300:wLHQFbkWgWsLISzjhU4qLA==

# Sitemap files
Sitemap:https://www.samsung.com/sitemap.xml
Sitemap:https://www.samsung.com/africa_en/sitemap.xml
Sitemap:https://www.samsung.com/africa_fr/sitemap.xml
Sitemap:https://www.samsung.com/africa_pt/sitemap.xml
Sitemap:https://www.samsung.com/al/sitemap.xml
Sitemap:https://www.samsung.com/ar/sitemap.xml
Sitemap:https://www.samsung.com/au/sitemap.xml
Sitemap:https://www.samsung.com/at/sitemap.xml
Sitemap:https://www.samsung.com/az/sitemap.xml
Sitemap:https://www.samsung.com/ba/sitemap.xml
Sitemap:https://www.samsung.com/bd/sitemap.xml
Sitemap:https://www.samsung.com/be/sitemap.xml
Sitemap:https://www.samsung.com/be_fr/sitemap.xml
Sitemap:https://www.samsung.com/br/sitemap.xml
Sitemap:https://www.samsung.com/bg/sitemap.xml
Sitemap:https://www.samsung.com/ca/sitemap.xml
Sitemap:https://www.samsung.com/ca_fr/sitemap.xml
Sitemap:https://www.samsung.com/cl/sitemap.xml
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
Sitemap:https://www.samsung.com/ps/sitemap.xml
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
Sitemap:https://www.samsung.com/uz_uz/sitemap.xml
Sitemap:https://www.samsung.com/uz_ru/sitemap.xml
Sitemap:https://www.samsung.com/vn/sitemap.xml
Sitemap:https://www.samsung.com/iq_ar/sitemap.xml
Sitemap:https://www.samsung.com/iq_ku/sitemap.xml
Sitemap:https://www.samsung.com/lb/sitemap.xml
Sitemap:https://www.samsung.com/mn/sitemap.xml
Sitemap:https://www.samsung.com/jp/sitemap.xml
Sitemap:https://www.samsung.com/sec/sitemap.xml
Sitemap:https://www.samsung.com/global/business/sitemap.xml
Sitemap:https://www.samsung.com/sec/sustainability/main/sitemap.xml
Sitemap:https://www.samsung.com/global/sustainability/main/sitemap.xml

Host: www.samsung.com

