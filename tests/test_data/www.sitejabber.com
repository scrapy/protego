User-agent: *

#favorite routes
Disallow: /block-follow-user
#Disallow: /follow-user
Disallow: /unfollow-user

#forum routes
Disallow: /forum-check-title
Disallow: /forum-post-vote
Disallow: /forum-subscribe
Disallow: /forum-thread-check-title
Disallow: /forum-unsubscribe
Disallow: /forum-upload-post-photo

#page routes
Disallow: /full-website
Disallow: /mailing-list-subscribe

#partner routes
Disallow: /legitscript-approved-urls
Disallow: /rss
Disallow: /search-widget

#plugin routes
Disallow: /hide-all-extension-prompt
Disallow: /hide-footer-extension-prompt
Disallow: /hide-header-extension-prompt
Disallow: /hide-social-extension-prompt

#review routes
Disallow: /check-existing-review
Disallow: /check-order-id
#Disallow: /review-toggle-vote
Disallow: /set-fingerprint
Disallow: /share-fb
Disallow: /upload-review-photo

#url routes (non-pages)
#Disallow: /answer-toggle-vote
Disallow: /check-phone
Disallow: /check-url
#Disallow: /register-pageview
Disallow: /share-url
Disallow: /track-lead
Disallow: /track-search
Disallow: /track-url-suggestion-click
Disallow: /track-url-suggestion-view
#Disallow: /upload-url-answer-photo
Disallow: /upload-url-photo
Disallow: /test

#user routes
#Disallow: /block-user
Disallow: /check-email
Disallow: /check-email-preconditions
Disallow: /check-password
Disallow: /dismiss-url
Disallow: /keep-alive
Disallow: /track-click
#Disallow: /unblock-user
Disallow: /upload-photo
Disallow: /visit-thank-yous-tab
Disallow: /visit-votes-tab

# misc
Disallow: /post-purchase-demo.html

#adult content
Disallow: /search?q=adult

Crawl-delay: 1

User-agent: Fasterfox
Disallow: /

User-agent: Nutch
Disallow: /

User-agent: spock
Disallow: /

User-agent: OmniExplorer_Bot
Disallow: /

User-agent: MJ12bot
Disallow: /

User-agent: TurnitinBot
Disallow: /

User-agent: BecomeBot
Disallow: /

User-agent: genieBot
Disallow: /

User-agent: MLBot
Disallow: /

User-agent: 80bot
Disallow: /
