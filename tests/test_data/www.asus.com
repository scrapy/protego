User-agent: *

Disallow: /999/
Disallow: /*/999/

Disallow: /zentalk/api/
Disallow: /zentalk/*/api/

Disallow: /zentalk/data/
Allow: /zentalk/data/attachment/
Allow: /zentalk/data/cache/
Allow: /zentalk/data/diy/
Allow: /zentalk/data/template/
Disallow: /zentalk/*/data/
Allow: /zentalk/*/data/attachment/
Allow: /zentalk/*/data/cache/
Allow: /zentalk/*/data/diy/
Allow: /zentalk/*/data/template/

Disallow: /zentalk/source/
Disallow: /zentalk/*/source/

Disallow: /zentalk/install/
Disallow: /zentalk/*/install/

Disallow: /zentalk/template/default/
Disallow: /zentalk/*/template/default/

Disallow: /zentalk/template/strong_mobile/
Disallow: /zentalk/*/template/strong_mobile/

Disallow: /zentalk/config/
Disallow: /zentalk/*/config/

Disallow: /zentalk/uc_client/
Disallow: /zentalk/*/uc_client/

Disallow: /zentalk/uc_server/
Disallow: /zentalk/*/uc_server/

Disallow: /zentalk/static/
Allow: /zentalk/static/js/
Disallow: /zentalk/*/static/
Allow: /zentalk/*/static/js/

Disallow: /zentalk/admin.php
Disallow: /zentalk/*/admin.php

Disallow: /zentalk/search.php
Disallow: /zentalk/*/search.php

Disallow: /zentalk/member.php
Disallow: /zentalk/*/member.php

Disallow: /zentalk/api.php
Disallow: /zentalk/*/api.php

Disallow: /zentalk/misc.php
Disallow: /zentalk/*/misc.php

Disallow: /zentalk/connect.php
Disallow: /zentalk/*/connect.php

Disallow: /zentalk/forum.php?*mod=redirect
Disallow: /zentalk/*/forum.php?*mod=redirect

Disallow: /zentalk/forum.php?*mod=post
Disallow: /zentalk/*/forum.php?*mod=post

Disallow: /zentalk/forum.php?*mod=image
Disallow: /zentalk/*/forum.php?*mod=image

Disallow: /zentalk/home.php?*mod=spacecp
Disallow: /zentalk/*/home.php?*mod=spacecp

Disallow: /zentalk/userapp.php?*mod=app&
Disallow: /zentalk/*/userapp.php?*mod=app&

Disallow: /zentalk/*?*mod=misc
Disallow: /zentalk/*?*mod=attachment
Disallow: /zentalk/*?*mobile=yes

Sitemap: https://www.asus.com/sitemap.xml
