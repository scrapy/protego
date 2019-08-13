
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

Sitemap: https://chicago.suntimes.com/sitemaps
Sitemap: https://chicago.suntimes.com/sitemaps/authors
Sitemap: https://chicago.suntimes.com/sitemaps/groups
Sitemap: https://chicago.suntimes.com/sitemaps/videos

Sitemap: https://chicago.suntimes.com/sitemaps/google_news

