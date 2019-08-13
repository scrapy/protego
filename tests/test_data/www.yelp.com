# By accessing Yelp's website you agree to Yelp's Terms of Service, available at
# https://www.yelp.com/static?country=US&p=tos
#
# If you would like to inquire about crawling Yelp, please contact us at
# https://www.yelp.com/contact
#
# As always, Asimov's Three Laws are in effect:
# 1. A robot may not injure a human being or, through inaction, allow a human
#    being to come to harm.
# 2. A robot must obey orders given it by human beings except where such
#    orders would conflict with the First Law.
# 3. A robot must protect its own existence as long as such protection does
#    not conflict with the First or Second Law.

User-Agent: AdsBot-Google
User-Agent: Applebot
User-Agent: BingPreview
User-Agent: DeepCrawl
User-Agent: Googlebot
User-Agent: Googlebot-Image
User-Agent: Googlebot-Mobile
User-Agent: Mediapartners-Google
User-Agent: STC-bot
User-Agent: ScoutJet
User-Agent: SearchmetricsBot
User-Agent: SeznamBot
User-Agent: TelegramBot
User-Agent: Twitterbot
User-Agent: Yahoo! Slurp
User-Agent: Yandex
User-Agent: archive.org_bot
User-Agent: bingbot
User-Agent: ia_archiver
User-Agent: msnbot
Disallow: /1014943
Disallow: /3584794
Disallow: /5787254
Disallow: /ad_acknowledgment
Disallow: /ad_spice
Disallow: /ad_visibility
Disallow: /adredir?
Disallow: /adtrack
Disallow: /advertise?
Disallow: /biz/*/daisychaining_search/
Disallow: /biz/*?*&translate=1*
Disallow: /biz/*?*&translate=True*
Disallow: /biz/*?translate=1*
Disallow: /biz/*?translate=True*
Disallow: /biz/impression/*
Disallow: /biz/outlook-autumn-market-fundamental-catwalk-flimsy-roost-legibility-individualism-grocer-predestination-0
Disallow: /biz/outlook-autumn-market-fundamental-catwalk-flimsy-roost-legibility-individualism-grocer-predestination-1
Disallow: /biz/outlook-autumn-market-fundamental-catwalk-flimsy-roost-legibility-individualism-grocer-predestination-2
Disallow: /biz/outlook-autumn-market-fundamental-catwalk-flimsy-roost-legibility-individualism-grocer-predestination-3
Disallow: /biz/outlook-autumn-market-fundamental-catwalk-flimsy-roost-legibility-individualism-grocer-predestination-4
Disallow: /biz/outlook-autumn-market-fundamental-catwalk-flimsy-roost-legibility-individualism-grocer-predestination-5
Disallow: /biz/outlook-autumn-market-fundamental-catwalk-flimsy-roost-legibility-individualism-grocer-predestination-6
Disallow: /biz/outlook-autumn-market-fundamental-catwalk-flimsy-roost-legibility-individualism-grocer-predestination-7
Disallow: /biz/outlook-autumn-market-fundamental-catwalk-flimsy-roost-legibility-individualism-grocer-predestination-8
Disallow: /biz/outlook-autumn-market-fundamental-catwalk-flimsy-roost-legibility-individualism-grocer-predestination-9
Disallow: /biz_attribute
Disallow: /biz_link
Disallow: /biz_photos/*/log
Disallow: /biz_photos/*/log_views
Disallow: /biz_photos/feedback/
Disallow: /biz_redir
Disallow: /biz_share
Disallow: /biz_update
Disallow: /bookmark?
Disallow: /browse/reviews/recent
Disallow: /client_errors
Disallow: /elite?
Disallow: /events/export/
Disallow: /facebook_connect
Disallow: /flag_content?
Disallow: /gamtarget
Disallow: /location_suggest
Disallow: /mail?
Disallow: /menu/*/feedback_form
Disallow: /message_the_business
Disallow: /mtb_composer
Disallow: /not_recommended_reviews/preview
Disallow: /possible_biz_owner
Disallow: /px.gif
Disallow: /redir?
Disallow: /review_feed_auto_fetch
Disallow: /search_suggest
Disallow: /send_to_friend
Disallow: /sit_rep
Disallow: /spice
Disallow: /start_order
Disallow: /syndicate
Disallow: /talk/new_topic
Disallow: /thanx?
Disallow: /transaction_platform/start_order
Disallow: /user_details_answers_given
Disallow: /user_details_bookmarks
Disallow: /user_details_friends
Disallow: /user_details_reviews_self
Disallow: /user_details_thanx
Disallow: /user_photos
Disallow: /weekly/signup
Disallow: /writeareview/
Disallow: /yuv

User-Agent: bingbot
Disallow: /search*start=

User-Agent: *
Disallow: /
