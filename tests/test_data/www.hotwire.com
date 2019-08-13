User-Agent: *
#Disallow register/logout pages
Disallow: /login.jsp
Disallow: /logout.jsp
Disallow: /logoutHotwireUser

#Disallow legacy account & email pages
Disallow: /account/
Disallow: /account-unverified/
Disallow: /email/

#Disallow checkout pages
Disallow: /checkout/

#Disallow dynamic legacy deals
Disallow: */deal-cms.jsp*
Disallow: /deals/*Landing.jsp

#Disallow legacy results
Disallow: /*/results.jsp

#LX LOB specific rules
Disallow: /things-to-do/search

#Flight LOB specific rules
Disallow: /air/review-fare.jsp
Disallow: /Flights-BagFees

#Car LOB specific rules
Disallow: /car-rentals/search
Disallow: /car-rentals/results/
Disallow: /car/search-options.jsp
Disallow: /car/details.jsp

#Hotel LOB specific rules
Disallow: /hotels/results/
Disallow: /hotel/launchsearch
Disallow: /hotels/search
Disallow: /hotel/search-options
Disallow: /hotel/opaque-results.jsp
Disallow: /hotel/details*
Disallow: /hotel/deeplink-details.jsp
Disallow: /hotel/superPage.jsp

#Disallow HIS pages until migrated to Flex
Disallow: *.Hotel-Information

#Script Specific Rules
Disallow: /pubspec/scripts/
Disallow: /ugc/
Disallow: /recommendations/
Disallow: /slp/
Disallow: /pop-up/
Disallow: /pub/agent.dll
Disallow: /chat/preChatLaunch.jsp