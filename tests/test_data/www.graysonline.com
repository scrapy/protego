Sitemap: https://www.graysonline.com/sitemap.xml
User-agent: *
Disallow: /*.axd$
Disallow: /Services/*
Disallow: /Mobile/*
Disallow: /mobile/*
Disallow: /?webslices?/*
Disallow: /?mygrays?/*
Disallow: /search.aspx
Disallow: /cartsummary.aspx
Disallow: /changetimezone.aspx
Disallow: /login.aspx
Disallow: /?q=?/*