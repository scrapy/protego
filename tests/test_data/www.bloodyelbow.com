
User-agent: Googlebot-News
Disallow: /admin
Disallow: /newfanshot
Disallow: /users/*/replies
Disallow: /search
Disallow: /account
Disallow: /login
Disallow: /chorus_auth
Disallow: /sso
Disallow: /networks/enter_private_mode_password
Disallow: /ad
Disallow: /sponsored
Disallow: /*blog
Allow: /blogs
Allow: /blog-
Allow: /*-blog
Allow: /*blog-

User-agent: *
Disallow: /admin
Disallow: /newfanshot
Disallow: /users/*/replies
Disallow: /search
Disallow: /account
Disallow: /login
Disallow: /chorus_auth
Disallow: /sso
Disallow: /networks/enter_private_mode_password
Disallow: /*blog
Allow: /blogs
Allow: /blog-
Allow: /*-blog
Allow: /*blog-

Sitemap: https://www.bloodyelbow.com/sitemaps
Sitemap: https://www.bloodyelbow.com/sitemaps/authors
Sitemap: https://www.bloodyelbow.com/sitemaps/groups
Sitemap: https://www.bloodyelbow.com/sitemaps/videos

Sitemap: https://www.bloodyelbow.com/sitemaps/google_news

