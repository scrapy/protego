# http://www.google.com/adsbot.html - AdsBot ignores * wildcard
User-agent: Googlebot
Disallow: /rest/
Disallow: /xml/
Disallow: /json/
Disallow: /atom/
Disallow: /opml/
Disallow: /widget/
Disallow: /register
Disallow: /review
Disallow: /orderconfirmation
Disallow: /venues/
Disallow: /affiliate-register?*
Disallow: /tickets-external?*
Disallow: /preview?*
Disallow: /myevents?*
Disallow: /rss/
Disallow: /rsvp-update-response
Disallow: /inviteunsubscribe
Disallow: /affirm_checkout
Disallow: /bancontact_checkout
Disallow: /esi_cache/
Disallow: /esi_nocache/
Disallow: /passes/
Disallow: /payment-options
Disallow: /orderstart
Disallow: /things-to-do/
Disallow: /event/
Disallow: /events/rss/
Disallow: /events/atom/
Disallow: /myevent/
Disallow: /org/
Disallow: /upload/
Disallow: /directory/
Allow: /directory/sitemap/
Disallow: *&ter*
Disallow: *?ter*
Disallow: *&referrer*
Disallow: *?referrer*
Disallow: *&tid*
Disallow: *?tid*
Disallow: *&is_paid*
Disallow: *?is_paid*
Disallow: *&user_type*
Disallow: *?user_type*
Disallow: *&user_type_sig*
Disallow: *?user_type_sig*
Disallow: *&calendar*
Disallow: *?calendar*
Disallow: *&ref*
Disallow: *?ref*
Disallow: *&past*
Disallow: *?past*
Disallow: *&show_onboarding*
Disallow: *?show_onboarding*
Disallow: *&rank*
Disallow: *?rank*
Disallow: *&is_miles*
Disallow: *?is_miles*
Disallow: *&radius*
Disallow: *?radius*
Disallow: *&lat*
Disallow: *?lat*
Disallow: *&lng*
Disallow: *?lng*
Disallow: *&slat*
Disallow: *?slat*
Disallow: *&slng*
Disallow: *?slng*
Disallow: *&sid*
Disallow: *?sid*
Disallow: *&vp_ne_lat*
Disallow: *?vp_ne_lat*
Disallow: *&vp_sw_lat*
Disallow: *?vp_sw_lat*
Disallow: *&vp_ne_lng*
Disallow: *?vp_ne_lng*
Disallow: *&vp_sw_lng*
Disallow: *?vp_sw_lng*
Disallow: *&source*
Disallow: *?source*
Disallow: *&lid*
Disallow: *?lid*
Disallow: *&spot*
Disallow: *?spot*
Disallow: *&date*
Disallow: *?date*
Disallow: *&view*
Disallow: *?view*
Disallow: *&__hstc*
Disallow: *?__hstc*
Disallow: *&__hssc*
Disallow: *?__hssc*
Disallow: *&__hsfp*
Disallow: *?__hsfp*
Disallow: *&_eboga*
Disallow: *?_eboga*
Disallow: *&loc*
Disallow: *?loc*
Disallow: *&discount*
Disallow: *?discount*
Disallow: *&nomo*
Disallow: *?nomo*
Disallow: *&nopas*
Disallow: *?nopas*
Disallow: *&team_reg_type*
Disallow: *?team_reg_type*
Disallow: *&q*
Disallow: *?q*
Disallow: *&city*
Disallow: *?city*
Disallow: *&sort*
Disallow: *?sort*
Disallow: *&invite*
Disallow: *?invite*
Disallow: *&price*
Disallow: *?price*
Disallow: *&err*
Disallow: *?err*
Disallow: *&afu*
Disallow: *?afu*
Disallow: *&mc_cid*
Disallow: *?mc_cid*
Disallow: *&mc_eid*
Disallow: *?mc_eid*
Disallow: *&cart_uuid*
Disallow: *?cart_uuid*
Disallow: *&crt*
Disallow: *?crt*
Disallow: *&nocache*
Disallow: *?nocache*
Disallow: *&cloc*
Disallow: *?cloc*
Disallow: *&DB_OEM_ID*
Disallow: *?DB_OEM_ID*
Disallow: *&SPSID*
Disallow: *?SPSID*
Disallow: *&x*
Disallow: *?x*
Disallow: *&platform*
Disallow: *?platform*
Disallow: *&SPID*
Disallow: *?SPID*
Disallow: *&srnk*
Disallow: *?srnk*
Disallow: *&orderid*
Disallow: *?orderid*
Disallow: *&i*
Disallow: *?i*
Disallow: *&client_token*
Disallow: *?client_token*
Disallow: *&subcat*
Disallow: *?subcat*
Disallow: *&tracking_code*
Disallow: *?tracking_code*
Disallow: *&format*
Disallow: *?format*
Disallow: *&crumb*
Disallow: *?crumb*
Disallow: *&access*
Disallow: *?access*
Disallow: *&gonnado_ads*
Disallow: *?gonnado_ads*
Disallow: *&webSyncID*
Disallow: *?webSyncID*
Disallow: *&sessionGUID*
Disallow: *?sessionGUID*
Disallow: *&_ga*
Disallow: *?_ga*
Disallow: *&affiliate*
Disallow: *?affiliate*
Disallow: *&eventpassword*
Disallow: *?eventpassword*
Disallow: *&team_token*
Disallow: *?team_token*
Disallow: *&mode*
Disallow: *?mode*
Disallow: *&amp%3Binvite*
Disallow: *?amp%3Binvite*
Disallow: *&ct*
Disallow: *?ct*
Disallow: *&ebtv*
Disallow: *?ebtv*
Disallow: *&__utmx*
Disallow: *?__utmx*
Disallow: *&__utmz*
Disallow: *?__utmz*
Disallow: *&__utmb*
Disallow: *?__utmb*
Disallow: *&__utmc*
Disallow: *?__utmc*
Disallow: *&__utma*
Disallow: *?__utma*
Disallow: *&__utmk*
Disallow: *?__utmk*
Disallow: *&__utmv*
Disallow: *?__utmv*
Disallow: *&internal_ref*
Disallow: *?internal_ref*
Disallow: *&id*
Disallow: *?id*
Disallow: *&paged_section*
Disallow: *?paged_section*
Disallow: *&_hsenc*
Disallow: *?_hsenc*
Disallow: *&_hsmi*
Disallow: *?_hsmi*
Disallow: *&r*
Disallow: *?r*
Disallow: *&do*
Disallow: *?do*
Disallow: *&amp*
Disallow: *?amp*
Disallow: *&name*
Disallow: *?name*
Disallow: *&viwe*
Disallow: *?viwe*
Disallow: *&sig*
Disallow: *?sig*
Disallow: *&hsCtaTracking*
Disallow: *?hsCtaTracking*
Disallow: *&location*
Disallow: *?location*
Disallow: *&option*
Disallow: *?option*
Disallow: *&showPrivate*
Disallow: *?showPrivate*
Disallow: *&selecteddate*
Disallow: *?selecteddate*
Disallow: *&Itemid*
Disallow: *?Itemid*
Disallow: *&amp;ref*
Disallow: *?amp;ref*
Disallow: *&w*
Disallow: *?w*
Disallow: *&start*
Disallow: *?start*
Disallow: *&src*
Disallow: *?src*
Disallow: *&fb_action_ids*
Disallow: *?fb_action_ids*
Disallow: *&fb_action_types*
Disallow: *?fb_action_types*
Disallow: *&mkt_tok*
Disallow: *?mkt_tok*
Disallow: *&jvi*
Disallow: *?jvi*
Disallow: *&_cldee*
Disallow: *?_cldee*
Disallow: *&afftrack*
Disallow: *?afftrack*
Disallow: *&%3Bref*
Disallow: *?%3Bref*
Disallow: *&%3Bv*
Disallow: *?%3Bv*
Disallow: *&event_types*
Disallow: *?event_types*
Disallow: *&height*
Disallow: *?height*
Disallow: *&width*
Disallow: *?width*
Disallow: *&action*
Disallow: *?action*
Disallow: *&affid*
Disallow: *?affid*
Disallow: *&o*
Disallow: *?o*
Disallow: *&url*
Disallow: *?url*
Disallow: *&page_id*
Disallow: *?page_id*
Disallow: *&wmode*
Disallow: *?wmode*
Disallow: *&CFID*
Disallow: *?CFID*
Disallow: *&CFTOKEN*
Disallow: *?CFTOKEN*
Disallow: *&gclid*
Disallow: *?gclid*
Disallow: *&kw*
Disallow: *?kw*
Disallow: *&spellcheck*
Disallow: *?spellcheck*
Disallow: *&cr*
Disallow: *?cr*
Disallow: *&oid*
Disallow: *?oid*
Disallow: *&reg*
Disallow: *?reg*
Disallow: *&utm-term*
Disallow: *?utm-term*
Disallow: *&utm_term*
Disallow: *?utm_term*
Disallow: *&utm_content*
Disallow: *?utm_content*
Disallow: *&utm-content*
Disallow: *?utm-content*
Disallow: *&utm-source*
Disallow: *?utm-source*
Disallow: *&utm_media*
Disallow: *?utm_media*
Disallow: *&utm_compaign*
Disallow: *?utm_compaign*
Disallow: *&amp;utm-content*
Disallow: *?amp;utm-content*
Disallow: *&amp;utm-term*
Disallow: *?amp;utm-term*
Disallow: *&amp;utm_term*
Disallow: *?amp;utm_term*

User-agent: Facebot
Crawl-delay: 0.5
Disallow: /rest/
Disallow: /xml/
Disallow: /json/
Disallow: /atom/
Disallow: /opml/
Disallow: /widget/
Disallow: /register
Disallow: /review
Disallow: /orderconfirmation
Disallow: /venues/
Disallow: /affiliate-register?*
Disallow: /tickets-external?*
Disallow: /preview?*
Disallow: /myevents?*
Disallow: /rss/
Disallow: /rsvp-update-response
Disallow: /inviteunsubscribe
Disallow: /affirm_checkout
Disallow: /bancontact_checkout
Disallow: /esi_cache/
Disallow: /esi_nocache/
Disallow: /passes/
Disallow: /payment-options
Disallow: /orderstart
Disallow: /things-to-do/
Disallow: /event/
Disallow: /events/rss/
Disallow: /events/atom/
Disallow: /myevent/
Disallow: /org/
Disallow: /upload/
Disallow: /directory/
Allow: /directory/sitemap/
Disallow: *&ter*
Disallow: *?ter*
Disallow: *&referrer*
Disallow: *?referrer*
Disallow: *&tid*
Disallow: *?tid*
Disallow: *&is_paid*
Disallow: *?is_paid*
Disallow: *&user_type*
Disallow: *?user_type*
Disallow: *&user_type_sig*
Disallow: *?user_type_sig*
Disallow: *&calendar*
Disallow: *?calendar*
Disallow: *&ref*
Disallow: *?ref*
Disallow: *&past*
Disallow: *?past*
Disallow: *&show_onboarding*
Disallow: *?show_onboarding*
Disallow: *&rank*
Disallow: *?rank*
Disallow: *&s*
Disallow: *?s*
Disallow: *&is_miles*
Disallow: *?is_miles*
Disallow: *&radius*
Disallow: *?radius*
Disallow: *&lat*
Disallow: *?lat*
Disallow: *&lng*
Disallow: *?lng*
Disallow: *&slat*
Disallow: *?slat*
Disallow: *&slng*
Disallow: *?slng*
Disallow: *&sid*
Disallow: *?sid*
Disallow: *&vp_ne_lat*
Disallow: *?vp_ne_lat*
Disallow: *&vp_sw_lat*
Disallow: *?vp_sw_lat*
Disallow: *&vp_ne_lng*
Disallow: *?vp_ne_lng*
Disallow: *&vp_sw_lng*
Disallow: *?vp_sw_lng*
Disallow: *&source*
Disallow: *?source*
Disallow: *&lid*
Disallow: *?lid*
Disallow: *&spot*
Disallow: *?spot*
Disallow: *&date*
Disallow: *?date*
Disallow: *&view*
Disallow: *?view*
Disallow: *&__hstc*
Disallow: *?__hstc*
Disallow: *&__hssc*
Disallow: *?__hssc*
Disallow: *&__hsfp*
Disallow: *?__hsfp*
Disallow: *&_eboga*
Disallow: *?_eboga*
Disallow: *&loc*
Disallow: *?loc*
Disallow: *&discount*
Disallow: *?discount*
Disallow: *&nomo*
Disallow: *?nomo*
Disallow: *&nopas*
Disallow: *?nopas*
Disallow: *&team_reg_type*
Disallow: *?team_reg_type*
Disallow: *&q*
Disallow: *?q*
Disallow: *&city*
Disallow: *?city*
Disallow: *&sort*
Disallow: *?sort*
Disallow: *&invite*
Disallow: *?invite*
Disallow: *&price*
Disallow: *?price*
Disallow: *&err*
Disallow: *?err*
Disallow: *&afu*
Disallow: *?afu*
Disallow: *&mc_cid*
Disallow: *?mc_cid*
Disallow: *&mc_eid*
Disallow: *?mc_eid*
Disallow: *&cart_uuid*
Disallow: *?cart_uuid*
Disallow: *&cat*
Disallow: *?cat*
Disallow: *&crt*
Disallow: *?crt*
Disallow: *&nocache*
Disallow: *?nocache*
Disallow: *&cloc*
Disallow: *?cloc*
Disallow: *&DB_OEM_ID*
Disallow: *?DB_OEM_ID*
Disallow: *&SPSID*
Disallow: *?SPSID*
Disallow: *&x*
Disallow: *?x*
Disallow: *&platform*
Disallow: *?platform*
Disallow: *&SPID*
Disallow: *?SPID*
Disallow: *&srnk*
Disallow: *?srnk*
Disallow: *&orderid*
Disallow: *?orderid*
Disallow: *&i*
Disallow: *?i*
Disallow: *&client_token*
Disallow: *?client_token*
Disallow: *&subcat*
Disallow: *?subcat*
Disallow: *&tracking_code*
Disallow: *?tracking_code*
Disallow: *&format*
Disallow: *?format*
Disallow: *&crumb*
Disallow: *?crumb*
Disallow: *&access*
Disallow: *?access*
Disallow: *&gonnado_ads*
Disallow: *?gonnado_ads*
Disallow: *&webSyncID*
Disallow: *?webSyncID*
Disallow: *&sessionGUID*
Disallow: *?sessionGUID*
Disallow: *&_ga*
Disallow: *?_ga*
Disallow: *&affiliate*
Disallow: *?affiliate*
Disallow: *&eventpassword*
Disallow: *?eventpassword*
Disallow: *&team_token*
Disallow: *?team_token*
Disallow: *&mode*
Disallow: *?mode*
Disallow: *&amp%3Binvite*
Disallow: *?amp%3Binvite*
Disallow: *&ct*
Disallow: *?ct*
Disallow: *&ebtv*
Disallow: *?ebtv*
Disallow: *&__utmx*
Disallow: *?__utmx*
Disallow: *&__utmz*
Disallow: *?__utmz*
Disallow: *&__utmb*
Disallow: *?__utmb*
Disallow: *&__utmc*
Disallow: *?__utmc*
Disallow: *&__utma*
Disallow: *?__utma*
Disallow: *&__utmk*
Disallow: *?__utmk*
Disallow: *&__utmv*
Disallow: *?__utmv*
Disallow: *&internal_ref*
Disallow: *?internal_ref*
Disallow: *&id*
Disallow: *?id*
Disallow: *&paged_section*
Disallow: *?paged_section*
Disallow: *&_hsenc*
Disallow: *?_hsenc*
Disallow: *&_hsmi*
Disallow: *?_hsmi*
Disallow: *&r*
Disallow: *?r*
Disallow: *&do*
Disallow: *?do*
Disallow: *&amp*
Disallow: *?amp*
Disallow: *&name*
Disallow: *?name*
Disallow: *&viwe*
Disallow: *?viwe*
Disallow: *&sig*
Disallow: *?sig*
Disallow: *&hsCtaTracking*
Disallow: *?hsCtaTracking*
Disallow: *&location*
Disallow: *?location*
Disallow: *&option*
Disallow: *?option*
Disallow: *&showPrivate*
Disallow: *?showPrivate*
Disallow: *&selecteddate*
Disallow: *?selecteddate*
Disallow: *&Itemid*
Disallow: *?Itemid*
Disallow: *&amp;ref*
Disallow: *?amp;ref*
Disallow: *&w*
Disallow: *?w*
Disallow: *&start*
Disallow: *?start*
Disallow: *&src*
Disallow: *?src*
Disallow: *&categories*
Disallow: *?categories*
Disallow: *&fb_action_ids*
Disallow: *?fb_action_ids*
Disallow: *&fb_action_types*
Disallow: *?fb_action_types*
Disallow: *&mkt_tok*
Disallow: *?mkt_tok*
Disallow: *&jvi*
Disallow: *?jvi*
Disallow: *&_cldee*
Disallow: *?_cldee*
Disallow: *&afftrack*
Disallow: *?afftrack*
Disallow: *&%3Bref*
Disallow: *?%3Bref*
Disallow: *&%3Bv*
Disallow: *?%3Bv*
Disallow: *&event_types*
Disallow: *?event_types*
Disallow: *&height*
Disallow: *?height*
Disallow: *&width*
Disallow: *?width*
Disallow: *&action*
Disallow: *?action*
Disallow: *&affid*
Disallow: *?affid*
Disallow: *&o*
Disallow: *?o*
Disallow: *&url*
Disallow: *?url*
Disallow: *&page_id*
Disallow: *?page_id*
Disallow: *&wmode*
Disallow: *?wmode*
Disallow: *&CFID*
Disallow: *?CFID*
Disallow: *&CFTOKEN*
Disallow: *?CFTOKEN*
Disallow: *&gclid*
Disallow: *?gclid*
Disallow: *&kw*
Disallow: *?kw*
Disallow: *&spellcheck*
Disallow: *?spellcheck*
Disallow: *&cr*
Disallow: *?cr*
Disallow: *&oid*
Disallow: *?oid*
Disallow: *&reg*
Disallow: *?reg*
Disallow: *&utm-term*
Disallow: *?utm-term*
Disallow: *&utm_term*
Disallow: *?utm_term*
Disallow: *&utm_content*
Disallow: *?utm_content*
Disallow: *&utm-content*
Disallow: *?utm-content*
Disallow: *&utm-source*
Disallow: *?utm-source*
Disallow: *&utm_media*
Disallow: *?utm_media*
Disallow: *&utm_compaign*
Disallow: *?utm_compaign*
Disallow: *&amp;utm-content*
Disallow: *?amp;utm-content*
Disallow: *&amp;utm-term*
Disallow: *?amp;utm-term*
Disallow: *&amp;utm_term*
Disallow: *?amp;utm_term*

User-agent: AhrefsBot
crawl-delay: 2
Disallow: /rest/
Disallow: /xml/
Disallow: /json/
Disallow: /atom/
Disallow: /opml/
Disallow: /widget/
Disallow: /register
Disallow: /review
Disallow: /orderconfirmation
Disallow: /venues/
Disallow: /affiliate-register?*
Disallow: /tickets-external?*
Disallow: /preview?*
Disallow: /myevents?*
Disallow: /rss/
Disallow: /rsvp-update-response
Disallow: /inviteunsubscribe
Disallow: /affirm_checkout
Disallow: /bancontact_checkout
Disallow: /esi_cache/
Disallow: /esi_nocache/
Disallow: /passes/
Disallow: /payment-options
Disallow: /orderstart
Disallow: /things-to-do/
Disallow: /event/
Disallow: /events/rss/
Disallow: /events/atom/
Disallow: /myevent/
Disallow: /org/
Disallow: /upload/
Disallow: /directory/
Allow: /directory/sitemap/
Disallow: *&ter*
Disallow: *?ter*
Disallow: *&referrer*
Disallow: *?referrer*
Disallow: *&tid*
Disallow: *?tid*
Disallow: *&is_paid*
Disallow: *?is_paid*
Disallow: *&user_type*
Disallow: *?user_type*
Disallow: *&user_type_sig*
Disallow: *?user_type_sig*
Disallow: *&calendar*
Disallow: *?calendar*
Disallow: *&ref*
Disallow: *?ref*
Disallow: *&past*
Disallow: *?past*
Disallow: *&show_onboarding*
Disallow: *?show_onboarding*
Disallow: *&rank*
Disallow: *?rank*
Disallow: *&s*
Disallow: *?s*
Disallow: *&is_miles*
Disallow: *?is_miles*
Disallow: *&radius*
Disallow: *?radius*
Disallow: *&lat*
Disallow: *?lat*
Disallow: *&lng*
Disallow: *?lng*
Disallow: *&slat*
Disallow: *?slat*
Disallow: *&slng*
Disallow: *?slng*
Disallow: *&sid*
Disallow: *?sid*
Disallow: *&vp_ne_lat*
Disallow: *?vp_ne_lat*
Disallow: *&vp_sw_lat*
Disallow: *?vp_sw_lat*
Disallow: *&vp_ne_lng*
Disallow: *?vp_ne_lng*
Disallow: *&vp_sw_lng*
Disallow: *?vp_sw_lng*
Disallow: *&source*
Disallow: *?source*
Disallow: *&lid*
Disallow: *?lid*
Disallow: *&spot*
Disallow: *?spot*
Disallow: *&date*
Disallow: *?date*
Disallow: *&view*
Disallow: *?view*
Disallow: *&__hstc*
Disallow: *?__hstc*
Disallow: *&__hssc*
Disallow: *?__hssc*
Disallow: *&__hsfp*
Disallow: *?__hsfp*
Disallow: *&_eboga*
Disallow: *?_eboga*
Disallow: *&loc*
Disallow: *?loc*
Disallow: *&discount*
Disallow: *?discount*
Disallow: *&nomo*
Disallow: *?nomo*
Disallow: *&nopas*
Disallow: *?nopas*
Disallow: *&team_reg_type*
Disallow: *?team_reg_type*
Disallow: *&q*
Disallow: *?q*
Disallow: *&city*
Disallow: *?city*
Disallow: *&sort*
Disallow: *?sort*
Disallow: *&invite*
Disallow: *?invite*
Disallow: *&price*
Disallow: *?price*
Disallow: *&err*
Disallow: *?err*
Disallow: *&afu*
Disallow: *?afu*
Disallow: *&mc_cid*
Disallow: *?mc_cid*
Disallow: *&mc_eid*
Disallow: *?mc_eid*
Disallow: *&cart_uuid*
Disallow: *?cart_uuid*
Disallow: *&cat*
Disallow: *?cat*
Disallow: *&crt*
Disallow: *?crt*
Disallow: *&nocache*
Disallow: *?nocache*
Disallow: *&cloc*
Disallow: *?cloc*
Disallow: *&DB_OEM_ID*
Disallow: *?DB_OEM_ID*
Disallow: *&SPSID*
Disallow: *?SPSID*
Disallow: *&x*
Disallow: *?x*
Disallow: *&platform*
Disallow: *?platform*
Disallow: *&SPID*
Disallow: *?SPID*
Disallow: *&srnk*
Disallow: *?srnk*
Disallow: *&orderid*
Disallow: *?orderid*
Disallow: *&i*
Disallow: *?i*
Disallow: *&client_token*
Disallow: *?client_token*
Disallow: *&subcat*
Disallow: *?subcat*
Disallow: *&tracking_code*
Disallow: *?tracking_code*
Disallow: *&format*
Disallow: *?format*
Disallow: *&crumb*
Disallow: *?crumb*
Disallow: *&access*
Disallow: *?access*
Disallow: *&gonnado_ads*
Disallow: *?gonnado_ads*
Disallow: *&webSyncID*
Disallow: *?webSyncID*
Disallow: *&sessionGUID*
Disallow: *?sessionGUID*
Disallow: *&_ga*
Disallow: *?_ga*
Disallow: *&affiliate*
Disallow: *?affiliate*
Disallow: *&eventpassword*
Disallow: *?eventpassword*
Disallow: *&team_token*
Disallow: *?team_token*
Disallow: *&mode*
Disallow: *?mode*
Disallow: *&amp%3Binvite*
Disallow: *?amp%3Binvite*
Disallow: *&ct*
Disallow: *?ct*
Disallow: *&ebtv*
Disallow: *?ebtv*
Disallow: *&__utmx*
Disallow: *?__utmx*
Disallow: *&__utmz*
Disallow: *?__utmz*
Disallow: *&__utmb*
Disallow: *?__utmb*
Disallow: *&__utmc*
Disallow: *?__utmc*
Disallow: *&__utma*
Disallow: *?__utma*
Disallow: *&__utmk*
Disallow: *?__utmk*
Disallow: *&__utmv*
Disallow: *?__utmv*
Disallow: *&internal_ref*
Disallow: *?internal_ref*
Disallow: *&id*
Disallow: *?id*
Disallow: *&paged_section*
Disallow: *?paged_section*
Disallow: *&_hsenc*
Disallow: *?_hsenc*
Disallow: *&_hsmi*
Disallow: *?_hsmi*
Disallow: *&r*
Disallow: *?r*
Disallow: *&do*
Disallow: *?do*
Disallow: *&amp*
Disallow: *?amp*
Disallow: *&name*
Disallow: *?name*
Disallow: *&viwe*
Disallow: *?viwe*
Disallow: *&sig*
Disallow: *?sig*
Disallow: *&hsCtaTracking*
Disallow: *?hsCtaTracking*
Disallow: *&location*
Disallow: *?location*
Disallow: *&option*
Disallow: *?option*
Disallow: *&showPrivate*
Disallow: *?showPrivate*
Disallow: *&selecteddate*
Disallow: *?selecteddate*
Disallow: *&Itemid*
Disallow: *?Itemid*
Disallow: *&amp;ref*
Disallow: *?amp;ref*
Disallow: *&w*
Disallow: *?w*
Disallow: *&start*
Disallow: *?start*
Disallow: *&src*
Disallow: *?src*
Disallow: *&categories*
Disallow: *?categories*
Disallow: *&fb_action_ids*
Disallow: *?fb_action_ids*
Disallow: *&fb_action_types*
Disallow: *?fb_action_types*
Disallow: *&mkt_tok*
Disallow: *?mkt_tok*
Disallow: *&jvi*
Disallow: *?jvi*
Disallow: *&_cldee*
Disallow: *?_cldee*
Disallow: *&afftrack*
Disallow: *?afftrack*
Disallow: *&%3Bref*
Disallow: *?%3Bref*
Disallow: *&%3Bv*
Disallow: *?%3Bv*
Disallow: *&event_types*
Disallow: *?event_types*
Disallow: *&height*
Disallow: *?height*
Disallow: *&width*
Disallow: *?width*
Disallow: *&action*
Disallow: *?action*
Disallow: *&affid*
Disallow: *?affid*
Disallow: *&o*
Disallow: *?o*
Disallow: *&url*
Disallow: *?url*
Disallow: *&page_id*
Disallow: *?page_id*
Disallow: *&wmode*
Disallow: *?wmode*
Disallow: *&CFID*
Disallow: *?CFID*
Disallow: *&CFTOKEN*
Disallow: *?CFTOKEN*
Disallow: *&gclid*
Disallow: *?gclid*
Disallow: *&kw*
Disallow: *?kw*
Disallow: *&spellcheck*
Disallow: *?spellcheck*
Disallow: *&cr*
Disallow: *?cr*
Disallow: *&oid*
Disallow: *?oid*
Disallow: *&reg*
Disallow: *?reg*
Disallow: *&utm-term*
Disallow: *?utm-term*
Disallow: *&utm_term*
Disallow: *?utm_term*
Disallow: *&utm_content*
Disallow: *?utm_content*
Disallow: *&utm-content*
Disallow: *?utm-content*
Disallow: *&utm-source*
Disallow: *?utm-source*
Disallow: *&utm_media*
Disallow: *?utm_media*
Disallow: *&utm_compaign*
Disallow: *?utm_compaign*
Disallow: *&amp;utm-content*
Disallow: *?amp;utm-content*
Disallow: *&amp;utm-term*
Disallow: *?amp;utm-term*
Disallow: *&amp;utm_term*
Disallow: *?amp;utm_term*

Sitemap: https://www.eventbrite.com/sitemap_xml/sitemap_index.xml

User-agent: Slurp
crawl-delay: 0.7

User-agent: CCBot
crawl-delay: 0.7

User-agent: Balihoo
Disallow: /

User-agent: BotRightHere
Disallow: /

User-agent: WebZip
Disallow: /

User-agent: larbin
Disallow: /

User-agent: b2w/0.1
Disallow: /

User-agent: Copernic
Disallow: /

User-agent: psbot
Disallow: /

User-agent: Python-urllib
Disallow: /

User-agent: NetMechanic
Disallow: /

User-agent: URL_Spider_Pro
Disallow: /

User-agent: CherryPicker
Disallow: /

User-agent: EmailCollector
Disallow: /

User-agent: EmailSiphon
Disallow: /

User-agent: WebBandit
Disallow: /

User-agent: EmailWolf
Disallow: /

User-agent: ExtractorPro
Disallow: /

User-agent: CopyRightCheck
Disallow: /

User-agent: Crescent
Disallow: /

User-agent: SiteSnagger
Disallow: /

User-agent: ProWebWalker
Disallow: /

User-agent: CheeseBot
Disallow: /

User-agent: LNSpiderguy
Disallow: /

User-agent: Alexibot
Disallow: /

User-agent: Teleport
Disallow: /

User-agent: TeleportPro
Disallow: /

User-agent: MIIxpc
Disallow: /

User-agent: Telesoft
Disallow: /

User-agent: Website Quester
Disallow: /

User-agent: WebZip
Disallow: /

User-agent: moget/2.1
Disallow: /

User-agent: WebZip/4.0
Disallow: /

User-agent: WebStripper
Disallow: /

User-agent: WebSauger
Disallow: /

User-agent: WebCopier
Disallow: /

User-agent: NetAnts
Disallow: /

User-agent: Mister PiX
Disallow: /

User-agent: WebAuto
Disallow: /

User-agent: TheNomad
Disallow: /

User-agent: WWW-Collector-E
Disallow: /

User-agent: RMA
Disallow: /

User-agent: libWeb/clsHTTP
Disallow: /

User-agent: asterias
Disallow: /

User-agent: httplib
Disallow: /

User-agent: turingos
Disallow: /

User-agent: spanner
Disallow: /

User-agent: InfoNaviRobot
Disallow: /

User-agent: Harvest/1.5
Disallow: /

User-agent: Bullseye/1.0
Disallow: /

User-agent: Mozilla/4.0 (compatible; BullsEye; Windows 95)
Disallow: /

User-agent: Crescent Internet ToolPak HTTP OLE Control v.1.0
Disallow: /

User-agent: CherryPickerSE/1.0
Disallow: /

User-agent: CherryPickerElite/1.0
Disallow: /

User-agent: WebBandit/3.50
Disallow: /

User-agent: NICErsPRO
Disallow: /

User-agent: Microsoft URL Control - 5.01.4511
Disallow: /

User-agent: DittoSpyder
Disallow: /

User-agent: Foobot
Disallow: /

User-agent: SpankBot
Disallow: /

User-agent: BotALot
Disallow: /

User-agent: lwp-trivial/1.34
Disallow: /

User-agent: lwp-trivial
Disallow: /

User-agent: BunnySlippers
Disallow: /

User-agent: Microsoft URL Control - 6.00.8169
Disallow: /

User-agent: URLy Warning
Disallow: /

User-agent: Wget/1.6
Disallow: /

User-agent: Wget/1.5.3
Disallow: /

User-agent: Wget
Disallow: /

User-agent: LinkWalker
Disallow: /

User-agent: cosmos
Disallow: /

User-agent: moget
Disallow: /

User-agent: hloader
Disallow: /

User-agent: humanlinks
Disallow: /

User-agent: LinkextractorPro
Disallow: /

User-agent: Offline Explorer
Disallow: /

User-agent: Mata Hari
Disallow: /

User-agent: LexiBot
Disallow: /

User-agent: Web Image Collector
Disallow: /

User-agent: The Intraformant
Disallow: /

User-agent: True_Robot/1.0
Disallow: /

User-agent: True_Robot
Disallow: /

User-agent: BlowFish/1.0
Disallow: /

User-agent: JennyBot
Disallow: /

User-agent: MIIxpc/4.2
Disallow: /

User-agent: BuiltBotTough
Disallow: /

User-agent: ProPowerBot/2.14
Disallow: /

User-agent: BackDoorBot/1.0
Disallow: /

User-agent: toCrawl/UrlDispatcher
Disallow: /

User-agent: WebEnhancer
Disallow: /

User-agent: suzuran
Disallow: /

User-agent: TightTwatBot
Disallow: /

User-agent: VCI WebViewer VCI WebViewer Win32
Disallow: /

User-agent: VCI
Disallow: /

User-agent: Szukacz/1.4
Disallow: /

User-agent: QueryN Metasearch
Disallow: /

User-agent: Openfind data gatherer
Disallow: /

User-agent: Openfind
Disallow: /

User-agent: Xenu's Link Sleuth 1.1c
Disallow: /

User-agent: Xenu's
Disallow: /

User-agent: Zeus
Disallow: /

User-agent: RepoMonkey Bait & Tackle/v1.01
Disallow: /

User-agent: RepoMonkey
Disallow: /

User-agent: Microsoft URL Control
Disallow: /

User-agent: Openbot
Disallow: /

User-agent: URL Control
Disallow: /

User-agent: Zeus Link Scout
Disallow: /

User-agent: Zeus 32297 Webster Pro V2.9 Win32
Disallow: /

User-agent: Webster Pro
Disallow: /

User-agent: EroCrawler
Disallow: /

User-agent: LinkScan/8.1a Unix
Disallow: /

User-agent: Keyword Density/0.9
Disallow: /

User-agent: Kenjin Spider
Disallow: /

User-agent: Iron33/1.0.2
Disallow: /

User-agent: Bookmark search tool
Disallow: /

User-agent: GetRight/4.2
Disallow: /

User-agent: FairAd Client
Disallow: /

User-agent: Gaisbot
Disallow: /

User-agent: Aqua_Products
Disallow: /

User-agent: Radiation Retriever 1.1
Disallow: /

User-agent: Flaming AttackBot
Disallow: /

User-agent: Oracle Ultra Search
Disallow: /

User-agent: MSIECrawler
Disallow: /

User-agent: PerMan
Disallow: /

User-agent: searchpreview
Disallow: /

User-agent: TurnitinBot
Disallow: /

User-agent: wget
Disallow: /

User-agent: ExtractorPro
Disallow: /

User-agent: WebZIP/4.21
Disallow: /

User-agent: WebZIP/5.0
Disallow: /

User-agent: HTTrack 3.0
Disallow: /

User-agent: TurnitinBot/1.5
Disallow: /

User-agent: WebCopier v3.2a
Disallow: /

User-agent: WebCapture 2.0
Disallow: /

User-agent: WebCopier v.2.2
Disallow: /

User-agent: Spinn3r
Disallow: /

User-agent: Tailrank
Disallow: /

User-agent: 008
Disallow: /

User-agent: *
Disallow: /rest/
Disallow: /xml/
Disallow: /json/
Disallow: /atom/
Disallow: /opml/
Disallow: /widget/
Disallow: /register
Disallow: /review
Disallow: /orderconfirmation
Disallow: /venues/
Disallow: /affiliate-register?*
Disallow: /tickets-external?*
Disallow: /preview?*
Disallow: /myevents?*
Disallow: /rss/
Disallow: /rsvp-update-response
Disallow: /inviteunsubscribe
Disallow: /affirm_checkout
Disallow: /bancontact_checkout
Disallow: /esi_cache/
Disallow: /esi_nocache/
Disallow: /passes/
Disallow: /payment-options
Disallow: /orderstart
Disallow: /things-to-do/
Disallow: /event/
Disallow: /events/rss/
Disallow: /events/atom/
Disallow: /myevent/
Disallow: /org/
Disallow: /upload/
Disallow: /directory/
Allow: /directory/sitemap/
Disallow: *&ter*
Disallow: *?ter*
Disallow: *&referrer*
Disallow: *?referrer*
Disallow: *&tid*
Disallow: *?tid*
Disallow: *&is_paid*
Disallow: *?is_paid*
Disallow: *&user_type*
Disallow: *?user_type*
Disallow: *&user_type_sig*
Disallow: *?user_type_sig*
Disallow: *&calendar*
Disallow: *?calendar*
Disallow: *&ref*
Disallow: *?ref*
Disallow: *&past*
Disallow: *?past*
Disallow: *&show_onboarding*
Disallow: *?show_onboarding*
Disallow: *&rank*
Disallow: *?rank*
Disallow: *&s*
Disallow: *?s*
Disallow: *&is_miles*
Disallow: *?is_miles*
Disallow: *&radius*
Disallow: *?radius*
Disallow: *&lat*
Disallow: *?lat*
Disallow: *&lng*
Disallow: *?lng*
Disallow: *&slat*
Disallow: *?slat*
Disallow: *&slng*
Disallow: *?slng*
Disallow: *&sid*
Disallow: *?sid*
Disallow: *&vp_ne_lat*
Disallow: *?vp_ne_lat*
Disallow: *&vp_sw_lat*
Disallow: *?vp_sw_lat*
Disallow: *&vp_ne_lng*
Disallow: *?vp_ne_lng*
Disallow: *&vp_sw_lng*
Disallow: *?vp_sw_lng*
Disallow: *&source*
Disallow: *?source*
Disallow: *&lid*
Disallow: *?lid*
Disallow: *&spot*
Disallow: *?spot*
Disallow: *&date*
Disallow: *?date*
Disallow: *&view*
Disallow: *?view*
Disallow: *&__hstc*
Disallow: *?__hstc*
Disallow: *&__hssc*
Disallow: *?__hssc*
Disallow: *&__hsfp*
Disallow: *?__hsfp*
Disallow: *&_eboga*
Disallow: *?_eboga*
Disallow: *&loc*
Disallow: *?loc*
Disallow: *&discount*
Disallow: *?discount*
Disallow: *&nomo*
Disallow: *?nomo*
Disallow: *&nopas*
Disallow: *?nopas*
Disallow: *&team_reg_type*
Disallow: *?team_reg_type*
Disallow: *&q*
Disallow: *?q*
Disallow: *&city*
Disallow: *?city*
Disallow: *&sort*
Disallow: *?sort*
Disallow: *&invite*
Disallow: *?invite*
Disallow: *&price*
Disallow: *?price*
Disallow: *&err*
Disallow: *?err*
Disallow: *&afu*
Disallow: *?afu*
Disallow: *&mc_cid*
Disallow: *?mc_cid*
Disallow: *&mc_eid*
Disallow: *?mc_eid*
Disallow: *&cart_uuid*
Disallow: *?cart_uuid*
Disallow: *&cat*
Disallow: *?cat*
Disallow: *&crt*
Disallow: *?crt*
Disallow: *&nocache*
Disallow: *?nocache*
Disallow: *&cloc*
Disallow: *?cloc*
Disallow: *&DB_OEM_ID*
Disallow: *?DB_OEM_ID*
Disallow: *&SPSID*
Disallow: *?SPSID*
Disallow: *&x*
Disallow: *?x*
Disallow: *&platform*
Disallow: *?platform*
Disallow: *&SPID*
Disallow: *?SPID*
Disallow: *&srnk*
Disallow: *?srnk*
Disallow: *&orderid*
Disallow: *?orderid*
Disallow: *&i*
Disallow: *?i*
Disallow: *&client_token*
Disallow: *?client_token*
Disallow: *&subcat*
Disallow: *?subcat*
Disallow: *&tracking_code*
Disallow: *?tracking_code*
Disallow: *&format*
Disallow: *?format*
Disallow: *&crumb*
Disallow: *?crumb*
Disallow: *&access*
Disallow: *?access*
Disallow: *&gonnado_ads*
Disallow: *?gonnado_ads*
Disallow: *&webSyncID*
Disallow: *?webSyncID*
Disallow: *&sessionGUID*
Disallow: *?sessionGUID*
Disallow: *&_ga*
Disallow: *?_ga*
Disallow: *&affiliate*
Disallow: *?affiliate*
Disallow: *&eventpassword*
Disallow: *?eventpassword*
Disallow: *&team_token*
Disallow: *?team_token*
Disallow: *&mode*
Disallow: *?mode*
Disallow: *&amp%3Binvite*
Disallow: *?amp%3Binvite*
Disallow: *&ct*
Disallow: *?ct*
Disallow: *&ebtv*
Disallow: *?ebtv*
Disallow: *&__utmx*
Disallow: *?__utmx*
Disallow: *&__utmz*
Disallow: *?__utmz*
Disallow: *&__utmb*
Disallow: *?__utmb*
Disallow: *&__utmc*
Disallow: *?__utmc*
Disallow: *&__utma*
Disallow: *?__utma*
Disallow: *&__utmk*
Disallow: *?__utmk*
Disallow: *&__utmv*
Disallow: *?__utmv*
Disallow: *&internal_ref*
Disallow: *?internal_ref*
Disallow: *&id*
Disallow: *?id*
Disallow: *&paged_section*
Disallow: *?paged_section*
Disallow: *&_hsenc*
Disallow: *?_hsenc*
Disallow: *&_hsmi*
Disallow: *?_hsmi*
Disallow: *&r*
Disallow: *?r*
Disallow: *&do*
Disallow: *?do*
Disallow: *&amp*
Disallow: *?amp*
Disallow: *&name*
Disallow: *?name*
Disallow: *&viwe*
Disallow: *?viwe*
Disallow: *&sig*
Disallow: *?sig*
Disallow: *&hsCtaTracking*
Disallow: *?hsCtaTracking*
Disallow: *&location*
Disallow: *?location*
Disallow: *&option*
Disallow: *?option*
Disallow: *&showPrivate*
Disallow: *?showPrivate*
Disallow: *&selecteddate*
Disallow: *?selecteddate*
Disallow: *&Itemid*
Disallow: *?Itemid*
Disallow: *&amp;ref*
Disallow: *?amp;ref*
Disallow: *&w*
Disallow: *?w*
Disallow: *&start*
Disallow: *?start*
Disallow: *&src*
Disallow: *?src*
Disallow: *&categories*
Disallow: *?categories*
Disallow: *&fb_action_ids*
Disallow: *?fb_action_ids*
Disallow: *&fb_action_types*
Disallow: *?fb_action_types*
Disallow: *&mkt_tok*
Disallow: *?mkt_tok*
Disallow: *&jvi*
Disallow: *?jvi*
Disallow: *&_cldee*
Disallow: *?_cldee*
Disallow: *&afftrack*
Disallow: *?afftrack*
Disallow: *&%3Bref*
Disallow: *?%3Bref*
Disallow: *&%3Bv*
Disallow: *?%3Bv*
Disallow: *&event_types*
Disallow: *?event_types*
Disallow: *&height*
Disallow: *?height*
Disallow: *&width*
Disallow: *?width*
Disallow: *&action*
Disallow: *?action*
Disallow: *&affid*
Disallow: *?affid*
Disallow: *&o*
Disallow: *?o*
Disallow: *&url*
Disallow: *?url*
Disallow: *&page_id*
Disallow: *?page_id*
Disallow: *&wmode*
Disallow: *?wmode*
Disallow: *&CFID*
Disallow: *?CFID*
Disallow: *&CFTOKEN*
Disallow: *?CFTOKEN*
Disallow: *&gclid*
Disallow: *?gclid*
Disallow: *&kw*
Disallow: *?kw*
Disallow: *&spellcheck*
Disallow: *?spellcheck*
Disallow: *&cr*
Disallow: *?cr*
Disallow: *&oid*
Disallow: *?oid*
Disallow: *&reg*
Disallow: *?reg*
Disallow: *&utm-term*
Disallow: *?utm-term*
Disallow: *&utm_term*
Disallow: *?utm_term*
Disallow: *&utm_content*
Disallow: *?utm_content*
Disallow: *&utm-content*
Disallow: *?utm-content*
Disallow: *&utm-source*
Disallow: *?utm-source*
Disallow: *&utm_media*
Disallow: *?utm_media*
Disallow: *&utm_compaign*
Disallow: *?utm_compaign*
Disallow: *&amp;utm-content*
Disallow: *?amp;utm-content*
Disallow: *&amp;utm-term*
Disallow: *?amp;utm-term*
Disallow: *&amp;utm_term*
Disallow: *?amp;utm_term*

