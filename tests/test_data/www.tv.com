# robots.txt for http://www.tv.com/
# Note: There should not be any new lines between Disallow statements unless
# we have switched user-agent 
User-agent: *
Crawl-delay: 1
Disallow: /users/
Disallow: /lists/
Disallow: /account/
Disallow: /auth*
Disallow: /search*
Disallow: /*.php
Disallow: /*.html
Disallow: /*write_review*/
Disallow: /users*/
Disallow: /*comment/
Disallow: /*get_items_for_tag
Disallow: /*action=abuse
Disallow: /*user_rating=*&rating_ref_type=*
Disallow: /?ajax=*
Disallow: /8264*
Sitemap: http://www.tv.com/sitemap/sitemap.xml
# save with unix line endings
