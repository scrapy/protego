User-Agent: MJ12bot
Disallow:

User-agent: Mediapartners-Google*
Disallow: 

User-agent: *
Disallow: /search/
Disallow: /phprint.php
Disallow: /cgi-bin/mt/mt-search.cgi
Disallow: /cgi-bin/mt/mt-cp.cgi
Disallow: /cgi-bin/mt/mt-comments.cgi
Disallow: /cgi-bin/links/
Disallow: /profiles/view/*/contributions/
Disallow: /shop/cart.php

Allow: /members/login.php
Disallow: /members/

Noindex: /cgi-bin/links/
Noindex: /members/
Noindex: /profiles/view/*/contributions/
Noindex: /shop/cart.php

Disallow: /forum/ajax.php
Disallow: /forum/attachment.php
Disallow: /forum/calendar.php
Disallow: /forum/cron.php
Disallow: /forum/editpost.php
Disallow: /forum/faq.php
Disallow: /forum/global.php
Disallow: /forum/image.php
Disallow: /forum/inlinemod.php
Disallow: /forum/joinrequests.php
Disallow: /forum/login.php
Disallow: /forum/member.php
Disallow: /forum/memberlist.php
Disallow: /forum/misc.php
Disallow: /forum/moderator.php
Disallow: /forum/newattachment.php
Disallow: /forum/newreply.php
Disallow: /forum/newthread.php
Disallow: /forum/online.php
Disallow: /forum/poll.php
Disallow: /forum/postings.php
Disallow: /forum/printthread.php
Disallow: /forum/private.php
Disallow: /forum/profile.php
Disallow: /forum/register.php
Disallow: /forum/report.php
Disallow: /forum/reputation.php
Disallow: /forum/search.php
Disallow: /forum/sendmessage.php
Disallow: /forum/showgroups.php
Disallow: /forum/subscription.php
Disallow: /forum/threadrate.php
Disallow: /forum/usercp.php
Disallow: /forum/usernote.php

Disallow: /forum/admincp/
Disallow: /forum/posthistory.php
Disallow: /forum/*do=markread
Disallow: /forum/tags/
Disallow: /forum/tags.php
Disallow: /forum/members/
Disallow: /forum/thanks.php
Disallow: /forum/*viewfull=*
Disallow: /forum/*p=*
Disallow: /forum/general-members-discussions/
Disallow: /forum/forums/6-Members-Area
Disallow: /forum/forums/11-Fun-and-Games
Disallow: /forum/forums/16-General-Members-Discussions
Disallow: /forum/forums/17-Poetry-Prose-amp-Songs
Disallow: /forum/forums/18-Other-Languages
Disallow: /forum/forums/26-PenPals
Disallow: /forum/forums/54-Book-Reviews

Noindex: /forum/admincp/
Noindex: /forum/posthistory.php
Noindex: /forum/*do=markread
Noindex: /forum/tags/
Noindex: /forum/tags.php
Noindex: /forum/members/
Noindex: /forum/thanks.php
Noindex: /forum/*viewfull=*
Noindex: /forum/*p=*
Noindex: /forum/general-members-discussions/
Noindex: /forum/forums/6-Members-Area
Noindex: /forum/forums/11-Fun-and-Games
Noindex: /forum/forums/16-General-Members-Discussions
Noindex: /forum/forums/17-Poetry-Prose-amp-Songs
Noindex: /forum/forums/18-Other-Languages
Noindex: /forum/forums/26-PenPals
Noindex: /forum/forums/54-Book-Reviews


Sitemap: https://www.usingenglish.com/sitemap.xml
