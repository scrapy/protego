
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

Sitemap: https://www.silverscreenandroll.com/sitemaps
Sitemap: https://www.silverscreenandroll.com/sitemaps/authors
Sitemap: https://www.silverscreenandroll.com/sitemaps/groups
Sitemap: https://www.silverscreenandroll.com/sitemaps/videos

Sitemap: https://www.silverscreenandroll.com/sitemaps/google_news

