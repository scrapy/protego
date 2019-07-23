User-Agent: *
Disallow: /I/
Disallow: /C/

Allow: /C/*/*/index
Allow: /C/*/*/contents/
Allow: /C/*/*/booking/
Allow: /C/*/*/ready/
Allow: /C/*/*/travel/
Allow: /C/*/*/club/
Allow: /C/*/*/customer/
Allow: /C/*/*/event/
Allow: /C/*/*/company/
Allow: /C/*/*/etc/
Allow: /C/*/*/ecard/sns/*
Allow: /C/*/*/ecard/sns/*/*

Disallow: /C/*/*/event/end/
Disallow: /C/*/*/event/winner/
