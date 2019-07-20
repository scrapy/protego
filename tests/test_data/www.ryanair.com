user-agent: *
allow: /
 
disallow: /*/*/account
disallow: /*/*/login
disallow: /*/*/deactive-account
disallow: /*/*/emailChangeConfirm
disallow: /*/*/forgotpassword
disallow: /*/*/reset-password
disallow: /*/*/resetsuccess
disallow: /*/*/reset
disallow: /*/*/lock-account
disallow: /*/*/unlock
disallow: /*/*/verifyemail
disallow: /*/*/reactivate
disallow: /*/*/reactivate-account-succeed
disallow: /*/*/booking
disallow: /*/*/mytrips
disallow: /*/*/paypal
disallow: /*/*/samsonite/
allow: /*/*/samsonite/home
disallow: /*/*/vouchers/
allow: /*/*/vouchers/home
disallow: /*/*/?cmpid=
disallow: /*/*/foh.
disallow: /*/*/rooms/
disallow:/*?promo-code=ABCDE
disallow: /*/*/trip
disallow: /*/*/search/flights
disallow: /redirect/

sitemap: https://www.ryanair.com/sitemap.xml