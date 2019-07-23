# robots.txt for https://www.consumeraffairs.com/ - Last updated 2019-07-02

Sitemap: https://www.consumeraffairs.com/sitemap.xml
User-agent: *
Disallow: /ab/
Disallow: /ac4eb782/
Disallow: /account/
Disallow: /admin/
Disallow: /ads/
Disallow: /api/
Disallow: /brands/app/
Disallow: /brands/facebook-tab/
Disallow: /brands/forgot_password/
Disallow: /brands/login/
Disallow: /brands/logout/
Disallow: /brands/more_info/
Disallow: /brands/new-customer-info/
Disallow: /brands/reset/
Disallow: /brands/signup/
Disallow: /brands/starter_tos/
Disallow: /brands/support_team/
Disallow: /captcha/image/
Disallow: /cms/
Disallow: /demo/
Disallow: /disclosure_tooltip.htm
Disallow: /flgrtkihawf/
Disallow: /go/
Disallow: /js/disallowed/
Disallow: /leadgen/
Disallow: /login/
Disallow: /profile/
Disallow: /newsletter/
Disallow: /related.html
Disallow: /syndication/
Disallow: /news/checking-up-on-instantcheckmate-010714.html
Disallow: /medical-alert-alternatives.html
Disallow: /serp_tests/
Disallow: /metrics/
Disallow: /canews/spon/
Disallow: /freshdesk/
Noindex: */go/

User-agent: Mediapartners-Google*
Disallow:

User-agent: Googlebot-News
Disallow: /articles/
