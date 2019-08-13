User-agent: *
Disallow: /mitest/

Disallow: /calendar/
Disallow: /itcalendar/
Disallow: /escalendar/
Disallow: /frcalendar/
Disallow: /rucalendar/

Disallow: /gallery/
Disallow: /itgallery/
Disallow: /esgallery/
Disallow: /frgallery/
Disallow: /rugallery/

Disallow: /tag/
Disallow: /user/

Disallow: /newsletter/
Disallow: /destination/

# WordPress exclusions

Disallow: ?wptheme=
Disallow: ?comments=
Disallow: ?replytocom
Disallow: */comment-page-
Disallow: */feed/
Disallow: */comments/
Disallow: */wp-admin/
Disallow: */wp-includes/
Disallow: */xmlrpc.php
Disallow: */wp-
Disallow: */trackback/
Disallow: *?s$
Disallow: */wp-content/plugins/
Disallow: */wp-content/cache/
Disallow: */wp-content/themes/

Disallow: /fr/teacher-training
Disallow: /it/teacher-training
Disallow: /pt/teacher-training
Disallow: /ru/teacher-training
Disallow: /es/teacher-training
Disallow: /ar/teacher-training
Disallow: /ja/teacher-training
Disallow: /tr/teacher-training

Sitemap: https://www.ecenglish.com/sitemap.xml
