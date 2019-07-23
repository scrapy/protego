
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

Sitemap: https://www.eater.com/sitemaps
Sitemap: https://www.eater.com/sitemaps/authors
Sitemap: https://www.eater.com/sitemaps/groups
Sitemap: https://www.eater.com/sitemaps/videos

Sitemap: https://www.eater.com/sitemaps/google_news

