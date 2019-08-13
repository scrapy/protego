# Squarespace Robots Txt

User-agent: AdsBot-Google
Disallow: /config
Disallow: /search
Disallow: /commerce$
Disallow: /commerce/
Disallow: /checkout$
Disallow: /checkout/
Disallow: /cart$
Disallow: /cart/
Disallow: /account$
Disallow: /account/
Disallow: /api/
Disallow: /static/
Disallow:/*?author=*
Disallow:/*&author=*
Disallow:/*?tag=*
Disallow:/*&tag=*
Disallow:/*?month=*
Disallow:/*&month=*
Disallow:/*?view=*
Disallow:/*&view=*
Disallow:/*?format=json
Disallow:/*&format=json
Disallow:/*?format=page-context
Disallow:/*&format=page-context
Disallow:/*?format=main-content
Disallow:/*&format=main-content
Disallow:/*?format=json-pretty
Disallow:/*&format=json-pretty
Disallow:/*?format=ical
Disallow:/*&format=ical
Disallow:/*?reversePaginate=*
Disallow:/*&reversePaginate=*
# WWW Additions

Allow: /commerce$
Allow: /commerce/
Allow: /api/taxonomy$
Allow: /api/taxonomy/
Allow: /templates$
Allow: /templates/
Allow: /tour$
Allow: /tour/
Disallow: /offers$
Disallow: /offers/*
Disallow: /beta-flag$
Disallow: /beta-flag/
Disallow: /typography$
Disallow: /typography/
Disallow: /archived$
Disallow: /archived/
Disallow: /noindex$
Disallow: /noindex/
Disallow: /api/1/wp-rum/record
Disallow: /api/census/RecordHit
Disallow: /api/census/button-render
Disallow: /login


User-agent: AdsBot-Google-Mobile
Disallow: /config
Disallow: /search
Disallow: /commerce$
Disallow: /commerce/
Disallow: /checkout$
Disallow: /checkout/
Disallow: /cart$
Disallow: /cart/
Disallow: /account$
Disallow: /account/
Disallow: /api/
Disallow: /static/
Disallow:/*?author=*
Disallow:/*&author=*
Disallow:/*?tag=*
Disallow:/*&tag=*
Disallow:/*?month=*
Disallow:/*&month=*
Disallow:/*?view=*
Disallow:/*&view=*
Disallow:/*?format=json
Disallow:/*&format=json
Disallow:/*?format=page-context
Disallow:/*&format=page-context
Disallow:/*?format=main-content
Disallow:/*&format=main-content
Disallow:/*?format=json-pretty
Disallow:/*&format=json-pretty
Disallow:/*?format=ical
Disallow:/*&format=ical
Disallow:/*?reversePaginate=*
Disallow:/*&reversePaginate=*
# WWW Additions

Allow: /commerce$
Allow: /commerce/
Allow: /api/taxonomy$
Allow: /api/taxonomy/
Allow: /templates$
Allow: /templates/
Allow: /tour$
Allow: /tour/
Disallow: /offers$
Disallow: /offers/*
Disallow: /beta-flag$
Disallow: /beta-flag/
Disallow: /typography$
Disallow: /typography/
Disallow: /archived$
Disallow: /archived/
Disallow: /noindex$
Disallow: /noindex/
Disallow: /api/1/wp-rum/record
Disallow: /api/census/RecordHit
Disallow: /api/census/button-render
Disallow: /login


User-agent: AdsBot-Google-Mobile-Apps
Disallow: /config
Disallow: /search
Disallow: /commerce$
Disallow: /commerce/
Disallow: /checkout$
Disallow: /checkout/
Disallow: /cart$
Disallow: /cart/
Disallow: /account$
Disallow: /account/
Disallow: /api/
Disallow: /static/
Disallow:/*?author=*
Disallow:/*&author=*
Disallow:/*?tag=*
Disallow:/*&tag=*
Disallow:/*?month=*
Disallow:/*&month=*
Disallow:/*?view=*
Disallow:/*&view=*
Disallow:/*?format=json
Disallow:/*&format=json
Disallow:/*?format=page-context
Disallow:/*&format=page-context
Disallow:/*?format=main-content
Disallow:/*&format=main-content
Disallow:/*?format=json-pretty
Disallow:/*&format=json-pretty
Disallow:/*?format=ical
Disallow:/*&format=ical
Disallow:/*?reversePaginate=*
Disallow:/*&reversePaginate=*
# WWW Additions

Allow: /commerce$
Allow: /commerce/
Allow: /api/taxonomy$
Allow: /api/taxonomy/
Allow: /templates$
Allow: /templates/
Allow: /tour$
Allow: /tour/
Disallow: /offers$
Disallow: /offers/*
Disallow: /beta-flag$
Disallow: /beta-flag/
Disallow: /typography$
Disallow: /typography/
Disallow: /archived$
Disallow: /archived/
Disallow: /noindex$
Disallow: /noindex/
Disallow: /api/1/wp-rum/record
Disallow: /api/census/RecordHit
Disallow: /api/census/button-render
Disallow: /login


User-agent: *
Disallow: /config
Disallow: /search
Disallow: /commerce$
Disallow: /commerce/
Disallow: /checkout$
Disallow: /checkout/
Disallow: /cart$
Disallow: /cart/
Disallow: /account$
Disallow: /account/
Disallow: /api/
Disallow: /static/
Disallow:/*?author=*
Disallow:/*&author=*
Disallow:/*?tag=*
Disallow:/*&tag=*
Disallow:/*?month=*
Disallow:/*&month=*
Disallow:/*?view=*
Disallow:/*&view=*
Disallow:/*?format=json
Disallow:/*&format=json
Disallow:/*?format=page-context
Disallow:/*&format=page-context
Disallow:/*?format=main-content
Disallow:/*&format=main-content
Disallow:/*?format=json-pretty
Disallow:/*&format=json-pretty
Disallow:/*?format=ical
Disallow:/*&format=ical
Disallow:/*?reversePaginate=*
Disallow:/*&reversePaginate=*
# WWW Additions

Allow: /commerce$
Allow: /commerce/
Allow: /api/taxonomy$
Allow: /api/taxonomy/
Allow: /templates$
Allow: /templates/
Allow: /tour$
Allow: /tour/
Disallow: /offers$
Disallow: /offers/*
Disallow: /beta-flag$
Disallow: /beta-flag/
Disallow: /typography$
Disallow: /typography/
Disallow: /archived$
Disallow: /archived/
Disallow: /noindex$
Disallow: /noindex/
Disallow: /api/1/wp-rum/record
Disallow: /api/census/RecordHit
Disallow: /api/census/button-render
Disallow: /login


Sitemap: https://www.squarespace.com/assets/sitemap.xml
