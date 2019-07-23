# See http://www.robotstxt.org/wc/norobots.html for documentation on how to use the robots.txt file
User-agent: *
Crawl-delay: 60
Disallow: /checkouts
Disallow: /orders
Disallow: /countries
Disallow: /line_items
Disallow: /password_resets
Disallow: /states
Disallow: /user_sessions
Disallow: /users
Disallow: /user_session
Disallow: /favorites
Disallow: /carts
Disallow: /api
Disallow: /search

User-agent: WeSEE
Disallow: /
