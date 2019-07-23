Sitemap: https://www.biggerpockets.com/sitemaps/sitemap.xml.gz
Sitemap: https://www.biggerpockets.com/rei/sitemap.xml
Sitemap: https://www.biggerpockets.com/mortgage/sitemap.xml

# BiggerPockets.com: robots.txt
#
# This file is used to allow crawlers to index our site.
# It is NOT used for any other purpose.
#
User-agent: Becomebot
Disallow: /

User-agent: BoardTracker
Disallow: /

User-agent: omgilibot
Disallow: /

User-agent: PiplBot
Disallow: /

User-agent: voyager
Disallow: /

User-agent: cfetch/1.0
Disallow: /

User-agent: voyager-hc/1.0
Disallow: /

User-agent: Mediapartners-Google
Disallow:

User-agent: *
Crawl-delay: 5
Disallow: /account$
Disallow: /account/
Disallow: /admin
Disallow: /articles/my$
Disallow: /articles/saved$
Disallow: /auth
Disallow: /bhr
Disallow: /member-blogs/new$
Disallow: /buy_and_hold_results
Disallow: /cable
Disallow: /callbacks
Disallow: /colleague_requests
Disallow: /colleagues
Disallow: /companies/authenticate$
Disallow: /companies/autocomplete_company_profile_name$
Disallow: /companies/claim$
Disallow: /companies/confirm_deleation$
Disallow: /companies/context$
Disallow: /companies/deauthenticate$
Disallow: /companies/follow$
Disallow: /companies/invite$
Disallow: /companies/join$
Disallow: /companies/leave$
Disallow: /companies/manage$
Disallow: /companies/notifications$
Disallow: /companies/promote_user$
Disallow: /companies/requests$
Disallow: /companies/search_followers$
Disallow: /companies/unfollow$
Disallow: /connections
Disallow: /conversations
Disallow: /crm
Disallow: /cta
Disallow: /dashboard
Disallow: /email_opt_out
Disallow: /events/new
Disallow: /facebook
Disallow: /fcr
Disallow: /first-post
Disallow: /followerships
Disallow: /forums/108/
Disallow: /forums/52/topics/94369-tenant-wants-to-change-2-yr-lease-to-a-1-yr-after-only-a-month
Disallow: /galleries/my
Disallow: /galleries/new
Disallow: /groups
Disallow: /hardmoneylenders/destroy$
Disallow: /hardmoneylenders/edit_company$
Disallow: /hardmoneylenders/new$
Disallow: /hardmoneylenders/new_company$
Disallow: /hardmoneylenders/update$
Disallow: /hfr
Disallow: /house_flipping_results
Disallow: /invites
Disallow: /labellings
Disallow: /links
Disallow: /locations
Disallow: /login*
Disallow: /menu_stylesheet
Disallow: /message_drafts
Disallow: /messages
Disallow: /moderation_presets
Disallow: /moderator_notes
Disallow: /monitor
Disallow: /monitorships
Disallow: /notes
Disallow: /password_resets
Disallow: /post_drafts
Disallow: /post_reports
Disallow: /post_upgrade_survey_results
Disallow: /posts
Disallow: /pro/cancel
Disallow: /pro/cancelled
Disallow: /pro/confirm_cancel
Disallow: /pro/downgrade
Disallow: /pro/switch_to_pro_annual
Disallow: /pro/update
Disallow: /pro/upgrade
Disallow: /pro/upsale_switch_to_pro_annual
Disallow: /pro/welcome
Disallow: /pro_private_file_uploads
Disallow: /pro_private_messaging
Disallow: /pro_search_by_labels
Disallow: /pro_searchable_inbox
Disallow: /pro_tasks
Disallow: /profile
Disallow: /promotions
Disallow: /properties/favorites
Disallow: /properties/my
Disallow: /properties/select_type
Disallow: /queuecontrol
Disallow: /receipt
Disallow: /referenceships
Disallow: /settings
Disallow: /search
Disallow: /toggle_full_width
Disallow: /topics/15142
Disallow: /topics/3044
Disallow: /topics/get_related_for_title
Disallow: /topics/lock
Disallow: /topics/moderate
Disallow: /topics/monitored
Disallow: /topics/my
Disallow: /topics/related
Disallow: /topics/reply
Disallow: /topics/subscribed
Disallow: /topics/tagged
Disallow: /topics/tags
Disallow: /upgrades/cancel
Disallow: /upgrades/downgrade
Disallow: /upgrades/update_plan
Disallow: /upgrades/upgrade
Disallow: /users/*/follow
Disallow: /users/*/unfollow
Disallow: /users/avatar$
Disallow: /users/context$
Disallow: /users/devices
Disallow: /users/email_available
Disallow: /users/filter
Disallow: /users/follow$
Disallow: /users/get_state_options
Disallow: /users/ignore$
Disallow: /users/my_colleagues
Disallow: /users/name_avilable
Disallow: /users/profile_video_info
Disallow: /users/provide_reference
Disallow: /users/report$
Disallow: /users/verify_cell
Disallow: /vote_notifications
Disallow: /wholesaling_results
Disallow: /portfolio
Disallow: /forums/79/topics/41438-marko-rubel-wholesaling-program
Disallow: /users/realestatetim
Disallow: /users/peter-harris
Disallow: /users/mybkhelp
Disallow: /users/shortsalementor
Disallow: /co/freedom-mentor
Disallow: /co/display-wholesalecom
Disallow: /forums/79/topics/88107-what-to-expect-with-scott-yancey
Disallow: /co/phil-pustejovsky
Disallow: /videos
Disallow: /webinars/*/attendees
# this is to ignore google publisher tag url
Disallow: /1009271

# Blog

Disallow: /renewsblog/*?s=*
