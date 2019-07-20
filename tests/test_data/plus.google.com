User-agent: *

Allow: /_/PlusAppUi/
Allow: /_/apps-static/
Allow: /_/blank
Allow: /_/data
Allow: /_/explore
Allow: /_/initialdata
Allow: /_/scs/
Allow: /_/setbrowserprefs
Allow: /_/socialgraph/lookup/hovercards
Allow: /_/stream

Disallow: /_/
Disallow: /s/
Disallow: /app/basic/s/
Disallow: /up/accesssuspended
Disallow: /wm/
