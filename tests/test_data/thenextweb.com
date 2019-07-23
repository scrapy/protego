User-agent: *
Disallow: *?p=*
Disallow: /wp-includes/
Disallow: /wp-login.php
Disallow: /wp-admin/*
Disallow: /wp-content/themes/cyberdelia/includes/*
Disallow: */tag/*
Disallow: /outbound/*
Disallow: *?audioselect=*
Disallow: /?logout&redirect_to=
Disallow: *?switch=*
Disallow: *?r=*
Disallow: *?fb-instant=*
Disallow: *?s=*
Disallow: *?q=*
Disallow: /search/*
Disallow: /search*
Disallow: /author/fb*
Disallow: /uncategorized/*
Disallow: */item/*
Disallow: /xhprof/*

Allow: /wp-content/blogs.dir/
Allow: /wp-includes/js/*

User-agent: Mediapartners-Google
Disallow:

User-agent: googlebot-news
Disallow: /shareables/


Sitemap: https://thenextweb.com/sitemap_index.xml
Sitemap: https://thenextweb.com/news-sitemap.xml