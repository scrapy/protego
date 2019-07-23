User-agent: *
Disallow: /wp-admin/
Disallow: /forumtest/
Disallow: /AU_a/
Disallow: /brand/
Disallow: /iphone/binding/
Disallow: /facebook/
Disallow: /blog/author/.*\?.*
Allow: /wp-admin/admin-ajax.php
Noindex: /mobile-appsblog/tags/*


Sitemap: https://www.freshbooks.com/blog/sitemap.xml
Sitemap: https://www.freshbooks.com/sitemap_index.xml
