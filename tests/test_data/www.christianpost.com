User-agent: *
Allow: /

Disallow: /signup
Disallow: /login
Disallow: /customer/iforgot
Disallow: /*?mobile=true
Disallow: /*?mobile=false
Disallow: /*.js$
Disallow: /*.css$
Disallow: /*.php$
Disallow: /*?p=*&
Disallow: /*?SID=
Disallow: /*?limit=all