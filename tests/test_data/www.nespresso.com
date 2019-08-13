# Sitemap
Sitemap: https://www.nespresso.com/shared_res/sitemap.xml

# Russia
User-agent: *
Disallow: /ru/*cid*
Disallow: /ru/*ref*
Disallow: /ru/*/customer/account/login/referer/*
Disallow: /ru/*?*color=*
Disallow: /ru/*?*limit=*
Disallow: /ru/*?*price=*
Disallow: /ru/*?*___from_store=*
Disallow: /ru/*?*dir=*
Disallow: /ru/*?*order=
Disallow: /ru/*jsessionid=*
Disallow: /ultimate-coffee-creations/*/ru/*search*
Disallow: /ru/*_test*
Disallow: /ru/*_preview*

# Quickview
Disallow: /*/*/quickView/*

# Mosaic
Disallow: /mosaic/*
Allow: /mosaic/_ui/*

# At work
Disallow: /myoffice

# Scrappers
User-agent: 008
Disallow: /

# Responsive
User-agent: *

Disallow: /mobile/ar/*
Allow: /mobile/ar/en/_ui/*
Allow: /mobile/ar/es/_ui/*

Disallow: /mobile/au/*
Allow: /mobile/au/en/_ui/*

Disallow: /mobile/ch/*
Allow: /mobile/ch/en/_ui/*
Allow: /mobile/ch/fr/_ui/*
Allow: /mobile/ch/de/_ui/*
Allow: /mobile/ch/it/_ui/*

Disallow: /mobile/cl/*
Allow: /mobile/cl/en/_ui/*
Allow: /mobile/cl/es/_ui/*

Disallow: /mobile/co/*
Allow: /mobile/co/en/_ui/*
Allow: /mobile/co/es/_ui/*

Disallow: /mobile/es/*
Allow: /mobile/es/en/_ui/*
Allow: /mobile/es/es/_ui/*
Allow: /mobile/es/ca/_ui/*

Disallow: /mobile/mx/*
Allow: /mobile/mx/en/_ui/*
Allow: /mobile/mx/es/_ui/*

Disallow: /mobile/nz/*
Allow: /mobile/nz/en/_ui/*

Disallow: /mobile/uk/*
Allow: /mobile/uk/en/_ui/*

Disallow: /mobile/ie/*
Allow: /mobile/ie/en/_ui/*

Disallow: /mobile/fr/*
Allow: /mobile/fr/en/_ui/*
Allow: /mobile/fr/fr/_ui/*

Disallow: /mobile/th/*
Allow: /mobile/th/en/_ui/*
Allow: /mobile/th/th/_ui/*

Disallow: /mobile/tw/*
Allow: /mobile/tw/en/_ui/*
Allow: /mobile/tw/zh/_ui/*

Disallow: /mobile/sg/*
Allow: /mobile/sg/en/_ui/*

Disallow: /mobile/hk/*
Allow: /mobile/hk/en/_ui/*
Allow: /mobile/hk/zh/_ui/*

Disallow: /mobile/my/*
Allow: /mobile/my/en/_ui/*
Allow: /mobile/my/ms/_ui/*

Disallow: /mobile/jp/*
Allow: /mobile/jp/en/_ui/*
Allow: /mobile/jp/ja/_ui/*

Disallow: /mobile/kr/*
Allow: /mobile/kr/en/_ui/*
Allow: /mobile/kr/ko/_ui/*

Disallow: /mobile/at/*
Allow: /mobile/at/en/_ui/*
Allow: /mobile/at/de/_ui/*

Disallow: /mobile/de/*
Allow: /mobile/de/en/_ui/*
Allow: /mobile/de/de/_ui/*

Disallow: /mobile/it/*
Allow: /mobile/it/en/_ui/*
Allow: /mobile/it/it/_ui/*

Disallow: /mobile/pt/*
Allow: /mobile/pt/en/_ui/*
Allow: /mobile/pt/pt/_ui/*

Disallow: /mobile/us/*
Allow: /mobile/us/en/_ui/*

Disallow: /mobile/ca/*
Allow: /mobile/ca/en/_ui/*
Allow: /mobile/ca/fr/_ui/*

Disallow: /mobile/be/*
Allow: /mobile/be/en/_ui/*
Allow: /mobile/be/fr/_ui/*
Allow: /mobile/be/nl/_ui/*

Disallow: /mobile/nl/*
Allow: /mobile/nl/en/_ui/*
Allow: /mobile/nl/nl/_ui/*

Disallow: /mobile/lu/*
Allow: /mobile/lu/en/_ui/*
Allow: /mobile/lu/fr/_ui/*

Disallow: /mobile/se/*
Allow: /mobile/se/en/_ui/*
Allow: /mobile/se/se/_ui/*

Disallow: /mobile/dk/*
Allow: /mobile/dk/en/_ui/*
Allow: /mobile/dk/da/_ui/*

Disallow: /mobile/fi/*
Allow: /mobile/fi/en/_ui/*
Allow: /mobile/fi/fi/_ui/*

Disallow: /mobile/no/*
Allow: /mobile/no/en/_ui/*
Allow: /mobile/no/no/_ui/*

Disallow: /mobile/cn/*
Allow: /mobile/cn/en/_ui/*
Allow: /mobile/cn/cn/_ui/*

Disallow: /mobile/br/*
Allow: /mobile/br/en/_ui/*
Allow: /mobile/br/pt/_ui/*

Disallow: /mobile/gr/*
Allow: /mobile/gr/en/_ui/*
Allow: /mobile/gr/el/_ui/*

Disallow: /mobile/ro/*
Allow: /mobile/ro/en/_ui/*
Allow: /mobile/ro/ro/_ui/*

Disallow: /mobile/sk/*
Allow: /mobile/sk/en/_ui/*
Allow: /mobile/sk/sk/_ui/*

Disallow: /mobile/hu/*
Allow: /mobile/hu/en/_ui/*
Allow: /mobile/hu/hu/_ui/*

Disallow: /mobile/pl/*
Allow: /mobile/pl/en/_ui/*
Allow: /mobile/pl/pl/_ui/*

Disallow: /mobile/cz/*
Allow: /mobile/cz/en/_ui/*
Allow: /mobile/cz/cz/_ui/*
