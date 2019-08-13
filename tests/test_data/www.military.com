User-agent: *

Allow: /core/*.css$
Allow: /core/*.css?
Allow: /core/*.js$
Allow: /core/*.js?
Allow: /core/*.gif
Allow: /core/*.jpg
Allow: /core/*.jpeg
Allow: /core/*.png
Allow: /core/*.svg
Allow: /profiles/*.css$
Allow: /profiles/*.css?
Allow: /profiles/*.js$
Allow: /profiles/*.js?
Allow: /profiles/*.gif
Allow: /profiles/*.jpg
Allow: /profiles/*.jpeg
Allow: /profiles/*.png
Allow: /profiles/*.svg

Disallow: /core/
Disallow: /profiles/

Disallow: /README.txt
Disallow: /web.config

Disallow: /admin/
Disallow: /comment/reply/
Disallow: /filter/tips/
Disallow: /node/add/
Disallow: /search/
Disallow: /user/register/
Disallow: /user/password/
Disallow: /user/login/
Disallow: /user/logout/

Disallow: /index.php/admin/
Disallow: /index.php/comment/reply/
Disallow: /index.php/filter/tips/
Disallow: /index.php/node/add/
Disallow: /index.php/search/
Disallow: /index.php/user/password/
Disallow: /index.php/user/register/
Disallow: /index.php/user/login/
Disallow: /index.php/user/logout/

Disallow: /wh=
Disallow: /?col=
Disallow: /esrc=
Disallow: /ContentFiles/NEW%20_Retirement_HR_1588.htm
Disallow: /Education/SchoolHelp.htm
Disallow: /Resources/ResourceFileView/
Disallow: /Resources/tools/
Disallow: /cs/
Disallow: /javascripts/
Disallow: /nav/
Disallow: /ppt/
Disallow: /thymeleaf/
Disallow: /member-reg/
Disallow: /newmember/
Disallow: /video/related-videos/
Disallow: /newmembers/
Disallow: /profile/
Disallow: /video/search?

User-agent: MJ12Bot
Disallow: /
User-agent: Megaindex
Disallow: /