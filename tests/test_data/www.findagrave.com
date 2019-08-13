# robots.txt file for Find A Grave

User-agent: *
Disallow: /missing.html
Disallow: /500.html
Disallow: /memorial/search
Disallow: /cemetery/*/memorial-search

## Below disallows are to accomodate user requests to remove a name from search results. ##

user-agent: *
Disallow: /memorial/23143754
Disallow: /memorial/68743825

#Updated 2/25/2019
