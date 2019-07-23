Sitemap: https://www.101greatgoals.com/sitemap_index.xml
User-agent:  *
Crawl-delay: 10
# Allow Java and CSS
Allow: /*.js***************
Allow: /*.css**************
# Disallow system folders
Disallow: /cgi-bin/
Disallow: /recommended/
Disallow: /trackback/
Disallow: /xmlrpc.php
Disallow: /videodisplay/
Disallow: /plugins/feedback.php
Disallow: /wp-json/
# Disallow Wordpress folders
Disallow: */feed/
Disallow: /tag/
Disallow: /clipboard-action
Disallow: /closest
Disallow: /*/closest
Disallow: /*/clipboard-action
