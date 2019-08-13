# robots_www.txt

User-agent: *
Disallow: /processing_login.jsp
Disallow: /default/create.jsp
Disallow: /*/processing_login.jsp
Disallow: /*/default/create.jsp

#SEO
Disallow: /opt-out.jsp
Disallow: /opt-out-info.jsp
Disallow: /legal/*

Sitemap: https://www.constantcontact.com/sitemap.xml
