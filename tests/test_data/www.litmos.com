User-agent: *

Disallow:*/plugins*
Disallow:*/lenny-prod*
Disallow:*/wp-includes*
Allow:*/waypoints.min.js?ver=5.4.5

sitemap: https://www.litmos.com/sitemap_index.xml