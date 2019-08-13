# See http://www.robotstxt.org/robotstxt.html for documentation on how to use the robots.txt file
User-agent: *
Disallow: /checkouts
Disallow: /orders
Disallow: /countries
Disallow: /line_items
Disallow: /modals
Disallow: /password_resets
Disallow: /states
Disallow: /user_sessions
Allow: /users/sign_in
Disallow: /users
Disallow: /videos
Disallow: /applicants/thank_you*
Disallow: /integrations/trello

Sitemap: https://www.usertesting.com/sitemap.xml
