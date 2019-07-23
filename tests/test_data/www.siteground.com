User-agent: *
Disallow: /go/*
Disallow: /fastajax/*
Disallow: /fastajax/order/*
Disallow: /fastajax/order/tax/*
Disallow: /fastajax/order/tax/validatevat*
Disallow: *ajax?*
