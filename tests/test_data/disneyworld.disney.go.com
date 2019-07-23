User-agent: *

# Directory Excludes: Domestic - Alphabetically ordered - Bedrock test
Disallow: /calendars/20*/
Disallow: /calendars/animal-kingdom/20*/
Disallow: /calendars/blizzard-beach/20*/
Disallow: /calendars/downtown-disney/20*/
Disallow: /calendars/epcot/20*/
Disallow: /calendars/events/date/20*/
Disallow: /calendars/hollywood-studios/20*/
Disallow: /calendars/magic-kingdom/20*/
Disallow: /calendars/typhoon-lagoon/20*/
Disallow: /calendars/wide-world-of-sports/20*/
Disallow: /search/
Disallow: /store/checkout/
Disallow: /reservations/

# Directory Excludes: International/Locale - Alphabetically ordered
Disallow: /*/calendars/20*/
Disallow: /*/calendars/animal-kingdom/20*/
Disallow: /*/calendars/blizzard-beach/20*/
Disallow: /*/calendars/downtown-disney/20*/
Disallow: /*/calendars/epcot/20*/
Disallow: /*/calendars/events/date/20*/
Disallow: /*/calendars/hollywood-studios/20*/
Disallow: /*/calendars/magic-kingdom/20*/
Disallow: /*/calendars/typhoon-lagoon/20*/
Disallow: /*/calendars/wide-world-of-sports/20*/
Disallow: /*/search/
Disallow: /*/search-results/
Disallow: /*/reservations/

# Variable Excludes - Alphabetically ordered (legacy support included)
Disallow: /*?*searchQuery=
Disallow: /*?*price

# Announce Sitemap Locations
Sitemap: https://disneyworld.disney.go.com/sitemap.xml
Sitemap: https://disneyworld.disney.go.com/es-us/sitemap.xml
Sitemap: https://disneyworld.disney.go.com/es-ar/sitemap.xml
Sitemap: https://disneyworld.disney.go.com/es-cl/sitemap.xml
Sitemap: https://disneyworld.disney.go.com/es-co/sitemap.xml
Sitemap: https://disneyworld.disney.go.com/es-mx/sitemap.xml
Sitemap: https://disneyworld.disney.go.com/es-pe/sitemap.xml
Sitemap: https://disneyworld.disney.go.com/fr-ca/sitemap.xml
Sitemap: https://disneyworld.disney.go.com/pt-br/sitemap.xml
Sitemap: https://disneyworld.disney.go.com/en_GB/sitemap.xml
Sitemap: https://disneyworld.disney.go.com/en_CA/sitemap.xml
Sitemap: https://disneyworld.disney.go.com/en-eu/sitemap.xml
