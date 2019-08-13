# Prod Test
# The use of robots, crawlers, spiders, rovers, scrapers or other automated
# means to access or mine data from any Boats Group hosted web sites
# ( including, but not limited to, boats.com, yachtworld.com, boatwizard.com,
# and soldboats.com ) without the express written permission of Boats Group
# is strictly prohibited.

# Boats Group may permit access to Boats Group hosted web sites for the
# limited purpose of including content in publicly available search engines,
# but only if those search engines are not specific to the marine industry
# and do not frame or otherwise obscure any Boats Group hosted web sites.

# Please read our Terms of Use at
# http://www.yachtworld.com/core/globalnav/termOfUse.jsp for more information.

User-agent: *
Disallow: /includes/
Disallow: /byp/yellowpages/changebyppasswd.cgi*
Disallow: /byp/yellowpages/editbyplisting.cgi*
Disallow: /byp/bypemail.cgi*
Disallow: /*email.cgi*
Noindex: /core/byp/yellowpages/changebyppassword.jsp
Noindex: /core/rendering/print-boat.htm
Noindex: /core/listing/*
Noindex: /core/globalnav/localeSelect.jsp
Noindex: /core/members/memberAccess.jsp
Disallow: /boats-beta/
Disallow: /privatelabel/listing/*
Disallow: /locale/*
Disallow: /listing/*
Disallow: /core/listing*
Disallow: /core/sponsored*
Disallow: /252108799/Yachtworld*
Disallow: /core/byp*
Disallow: /core/rendering*
Noindex: /boats-for-sale/?N=

Sitemap: https://www.yachtworld.com/prod_sitemap_index_https.xml
