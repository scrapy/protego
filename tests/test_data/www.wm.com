User-agent: *

Disallow: /images/
Disallow: /WEB-INF/
Disallow: /pods/
Disallow: /layout/
Disallow: /_assets/
Disallow: /_ui/
Disallow: */wmezpay/inserts/*
Disallow: /outage-message.html
Disallow: /outage-message_with_time_window.html
Disallow: /sustainability-center.jsp
Disallow: /sustainability-center/
Disallow: /holiday-schedule.jsp
Disallow: /holiday.jsp
Disallow: */us/mypreferences/*
Disallow: wmqa2.wm.com/*
Disallow: wmezpay.wm.com/*




Sitemap: https://www.wm.com/legacy-sitemap.xml
Sitemap: https://www.wm.com/sitemap.xml
Sitemap: https://www.wm.com/merged-sitemap.xml
Sitemap: https://www.wm.com/self-service-sitemap.xml


User-agent: AdsBot-Google
Disallow:
