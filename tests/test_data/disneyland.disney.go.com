User-agent: *

# Directory Excludes: Alphabetically ordered

Disallow: /calendar/daily/
Disallow: /calendars/20*
Disallow: /calendars/day/20*
Disallow: /calendars/park-hours/20*
Disallow: /calendars/five-day/20*
Disallow: /calendars/month/20*
Disallow: /calendars/disneyland/20*
Disallow: /calendars/disney-california-adventure/20*
Disallow: /calendars/events/date/20*
Disallow: /*?*day=*
Disallow: /*/cart/*
Disallow: /cart/
Disallow: /*/error/*
Disallow: /*/link/*
Disallow: /*/price/*
Disallow: /*?*price*
Disallow: /*/reservations/

Disallow: /reservations/
Disallow: /*?*searchQuery=*
Disallow: /*/search/
Disallow: /*/search-results/
Disallow: /store/checkout/

# Announce Sitemap Locations

Sitemap: https://disneyland.disney.go.com/sitemap.xml
Sitemap: https://disneyland.disney.go.com/au/sitemap.xml
Sitemap: https://disneyland.disney.go.com/ca/sitemap.xml
Sitemap: https://disneyland.disney.go.com/es/sitemap.xml