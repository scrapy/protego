User-agent: *

Allow: /blog/wp-admin/admin-ajax.php
Disallow: /blog/wp-admin/
Disallow: /images/
Disallow: /bus-travel-review/wp-admin/
Disallow: /bus-travel-review/wp-content/plugins/
Disallow: /bus-travel-review/wp-comments-post.php

Disallow: /check/
Disallow: /guides/
Disallow: /static/

Disallow: /downtime.php
Disallow: /search/
Disallow: /*/account/
Disallow: /*/depart/
Disallow: /*/return/
Disallow: /*/checkout
Disallow: /*/newsletter/
Disallow: /*/tripsummary/
Disallow: /*/travel-review/

Noindex: /*/account/
Noindex: /*/depart/
Noindex: /*/return/
Noindex: /*/checkout
Noindex: /*/newsletter/
Noindex: /*/tripsummary/
Noindex: /*/explore/*/
Noindex: /*/tickets/
Noindex: /*/stations/
Noindex: /*/estaciones/

Disallow: /cheap-unicorn-tickets/
Disallow: /maps/stationMap
Disallow: /popups/

Disallow: /fr/billets-de-autobus/
Disallow: /fr/billets-de-train/
Disallow: /fr/stations/
Disallow: /fr/autobuses-et-trains/

Disallow: /app/css/
Disallow: /Wcookie.php

Sitemap: https://www.wanderu.com/sitemap.xml
Sitemap: https://www.wanderu.com/blog/sitemap_index.xml