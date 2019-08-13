

#
# robots.txt
#
User-agent: *
Disallow: */login?*
Disallow: */popups/*
Disallow: */pro-connect/b/*
Disallow: */results.aspx?*
Disallow: */retrieve?*
Disallow: */search.aspx?*
Disallow: */search?q=*
Disallow: */shared/jsoncontent/*
Disallow: *?app=*
Disallow: *?regionsite=*
Disallow: /api/dpp/*
Disallow: /api/package/*
Disallow: /community/*/highlight/true
Disallow: /community/badges/
Disallow: /community/community/categorypage.childnodelisttaplet.boardlist_0.grid.columns:sort/
Disallow: /community/community/categorypage.disableautocomplete:disableautocomplete
Disallow: /community/community/page.childnodelisttaplet.boardlist_0.grid.columns:sort/
Disallow: /community/community/page.liabase.basebody.valuesurveylauncher.valuesurveylauncher:lightboxrendercomponent
Disallow: /community/errors/errorpage/
Disallow: /community/forums/editpage/
Disallow: /community/forums/filteredbylabelpage/
Disallow: /community/forums/forumpage.disableautocomplete:disableautocomplete
Disallow: /community/forums/forumpage.liabase.basebody.valuesurveylauncher.valuesurveylauncher:lightboxrendercomponent
Disallow: /community/forums/forumpage.searchform/
Disallow: /community/forums/forumtopicpage.disableautocomplete:disableautocomplete
Disallow: /community/forums/forumtopicpage.liabase.basebody.valuesurveylauncher.valuesurveylauncher:lightboxrendercomponent
Disallow: /community/forums/forumtopicpage.lineardisplay/
Disallow: /community/forums/forumtopicpage.lineardisplay_0.lineardisplaymessageviewwrapper:renderinlineeditform
Disallow: /community/forums/forumtopicpage.searchform.usersearchfield.usersearchfield:autocomplete
Disallow: /community/forums/forumtopicpage.searchform.usersearchfield/
Disallow: /community/forums/forumtopicpage.searchform.usersearchfield:userexistsquery
Disallow: /community/forums/forumtopicprintpage.kudosbuttonv2.kudoentity:kudoentity/
Disallow: /community/forums/forumtopicprintpage/
Disallow: /community/forums/postpage/
Disallow: /community/forums/recentpostspage.searchform.messagesearchfield/
Disallow: /community/forums/replypage/board-id/
Disallow: /community/forums/searchpage.searchauthorfilter/
Disallow: /community/forums/tagdetailpage.liabase.basebody.valuesurveylauncher.valuesurveylauncher:lightboxrendercomponent
Disallow: /community/forums/unansweredtopicspage.disableautocomplete:disableautocomplete
Disallow: /community/forums/v3_1/forumtopicpage.liabase.basebody.valuesurveylauncher.valuesurveylauncher:lightboxrendercomponent
Disallow: /community/forums/v3_1/forumtopicpage.lineardisplay_0.lineardisplaymessageviewwrapper:renderinlineeditform
Disallow: /community/forums/v3_1/forumtopicpage.lineardisplay_1.lineardisplaymessageviewwrapper:renderinlineeditform
Disallow: /community/forums/v4/forumtopicpage.kudosbuttonv2.kudoentity:kudoentity/
Disallow: /community/forumtopicpage.kudosbuttonv2.kudoentity:kudoentity/message-uid/
Disallow: /community/groups/
Disallow: /community/kudos/
Disallow: /community/media/
Disallow: /community/notifications/
Disallow: /community/search/discussions/
Disallow: /community/tagging/tagviewpage.disableautocomplete:disableautocomplete
Disallow: /community/tagging/tagviewpage.liabase.basebody.valuesurveylauncher.valuesurveylauncher:lightboxrendercomponent
Disallow: /community/tagging/tagviewpage.searchform.messagesearchfield.messagesearchfield:autocomplete
Disallow: /community/tagging/tagviewpage.searchform.notesearchfield.notesearchfield:autocomplete
Disallow: /community/tagging/tagviewpage.searchform.tkbmessagesearchfield.messagesearchfield:autocomplete
Disallow: /community/tagging/tagviewpage.searchform.usersearchfield.usersearchfield:autocomplete
Disallow: /community/tagging/tagviewpage.searchform.usersearchfield:userexistsquery
Disallow: /community/tagging/tagviewpage.searchform/
Disallow: /community/user/
Disallow: /community/user/v2/viewprofilepage.disableautocomplete:disableautocomplete
Disallow: /community/user/v2/viewprofilepage.liabase.basebody.valuesurveylauncher.valuesurveylauncher:lightboxrendercomponent
Disallow: /community/user/v2/viewprofilepage.searchform.messagesearchfield.messagesearchfield:autocomplete
Disallow: /community/user/v2/viewprofilepage.searchform.tkbmessagesearchfield.messagesearchfield:autocomplete
Disallow: /community/user/v2/viewprofilepage.searchform.usersearchfield:userexistsquery
Disallow: /community/user/v2/viewprofilepage.searchform/
Disallow: /community/util/
Disallow: /domainsearch/find*
Disallow: /domain-value-appraisal/appraisal/?*
Disallow: /dpp/find?
Disallow: /garage/advert/
Disallow: /garage/wp-admin/
Disallow: /garage/wp-content/plugins/
Disallow: /getstarted/*
Allow: /help/api/sitemap/google/
Allow: /help/api/v1/related-links?*
Disallow: /help/api/
Disallow: /help/website-templates/
Disallow: /pro-connect/b/
Disallow: /wordpress-themes/*-1*
Disallow: /wordpress-themes/*-2*
Disallow: /wordpress-themes/*-3*
Disallow: /wordpress-themes/*-4*
Disallow: /wordpress-themes/*-5*
Disallow: /wordpress-themes/*-6*
Disallow: /wordpress-themes/*-7*
Disallow: /wordpress-themes/*-8*
Disallow: /wordpress-themes/*-9*

Allow: *.js
Allow: *.css

Sitemap: https://in.godaddy.com/sitemap.xml
Sitemap: https://in.godaddy.com/help/api/sitemap/google/
Sitemap: https://in.godaddy.com/wordpress-themes/sitemap.xml

Sitemap: https://in.godaddy.com/blog/sitemap_index.xml/








Sitemap: https://in.godaddy.com/blog/sitemap-hreflang-in.xml







