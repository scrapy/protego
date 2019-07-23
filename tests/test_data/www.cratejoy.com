#
# robots.txt
#
user-agent: *

disallow: /admin/
disallow: /api/
disallow: /*?*sort_by=