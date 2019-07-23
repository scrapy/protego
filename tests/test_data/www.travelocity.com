User-agent: * 
Allow: /
Allow: /Hotels
Allow: /MobileHotel/Webapp/SearchResults
Allow: /MobileHotel/Webapp/HotelOffers 
Disallow: /daily/common/ 
Disallow: /cd/ 
Disallow: /pub/agent.dll?qscr=mrdt 
Disallow: /pub/agent.dll?qscr=mrdr 
Disallow: /daily/vacations/merch/ 
Disallow: /daily/hotels/all-inclusive.asp 
Disallow: /daily/hotels/all_inclusive.asp
Disallow: /pubspec/
Disallow: /ReviewSubmission
Disallow: /review-inhouse-submission
Disallow: /Hotels/Offers?action=
Disallow: /ads/container
Disallow: /event.ng/ 
Disallow: /html.ng/ 
Disallow: /js.ng/ 
Disallow: /click.ng/ 
Disallow: /image.ng/ 
Disallow: /ping.ng/ 
Disallow: /event.cms/ 
Disallow: /html.cms/ 
Disallow: /js.cms/ 
Disallow: /click.cms/ 
Disallow: /image.cms/ 
Disallow: /ping.cms/
Disallow: /pub/agent.dll?qscr=pkgl*
Disallow: /Mates-Rates
Disallow: /Details
Disallow: /carsearch
Disallow: /Flights-Search
Disallow: /Flight-SearchResults
Disallow: /Flights-BagFees
Disallow: /user/
Disallow: /packagesearch
Disallow: /Search-Results
Disallow: /ugc/
Disallow: /23171577/
Disallow: /info/info_main_biz/
Disallow: /recommendations/
Disallow: /slp/
Disallow: /Recommender
Disallow: /legacyGOTO 
Disallow: /LastBooking/elapsedTime
Disallow: /go
Disallow: /api
Disallow: /Promotions
Disallow: /HotelCheckoutError
Disallow: /placetovisitmapendpoint/getmapdata
Disallow: /*Hotel-Reviews

# <Checkout> 
Disallow: /Confirmation-Flight*
# </Checkout>

# Theme+Star

Disallow: /1Star-*-Hotels-*.s10-0-d*-t*.Travel-Guide-Filter-Hotels
Disallow: /2Star-*-Hotels-*.s20-0-d*-t*.Travel-Guide-Filter-Hotels
Disallow: /3Star-*-Hotels-*.s30-0-d*-t*.Travel-Guide-Filter-Hotels
Disallow: /4Star-*-Hotels-*.s40-0-d*-t*.Travel-Guide-Filter-Hotels
Disallow: /5Star-*-Hotels-*.s50-0-d*-t*.Travel-Guide-Filter-Hotels

Disallow: /1Star-*-Hotels-*.s10-n*-t*.Travel-Guide-Filter-Hotels
Disallow: /2Star-*-Hotels-*.s20-n*-t*.Travel-Guide-Filter-Hotels
Disallow: /3Star-*-Hotels-*.s30-n*-t*.Travel-Guide-Filter-Hotels
Disallow: /4Star-*-Hotels-*.s40-n*-t*.Travel-Guide-Filter-Hotels
Disallow: /5Star-*-Hotels-*.s50-n*-t*.Travel-Guide-Filter-Hotels

# Theme Brand

Disallow: /*-Hotels-*.0-0-d*-t*-*b*.Travel-Guide-Filter-Hotels

Disallow: /*-Hotels-*.0-n*-t*-*b*.Travel-Guide-Filter-Hotels

# Star Brand

Disallow: /1Star-*-Hotels-*.s10-0-d*--b*.Travel-Guide-Filter-Hotels
Disallow: /2Star-*-Hotels-*.s20-0-d*--b*.Travel-Guide-Filter-Hotels
Disallow: /3Star-*-Hotels-*.s30-0-d*--b*.Travel-Guide-Filter-Hotels
Disallow: /4Star-*-Hotels-*.s40-0-d*--b*.Travel-Guide-Filter-Hotels
Disallow: /5Star-*-Hotels-*.s50-0-d*--b*.Travel-Guide-Filter-Hotels

Disallow: /1Star-*-Hotels-*.s10-n*--b*.Travel-Guide-Filter-Hotels
Disallow: /2Star-*-Hotels-*.s20-n*--b*.Travel-Guide-Filter-Hotels
Disallow: /3Star-*-Hotels-*.s30-n*--b*.Travel-Guide-Filter-Hotels
Disallow: /4Star-*-Hotels-*.s40-n*--b*.Travel-Guide-Filter-Hotels
Disallow: /5Star-*-Hotels-*.s50-n*--b*.Travel-Guide-Filter-Hotels

# Theme Star Brand

Disallow: /1Star-*-Hotels-*.s10-0-d*-t*-b*.Travel-Guide-Filter-Hotels
Disallow: /2Star-*-Hotels-*.s20-0-d*-t*-b*.Travel-Guide-Filter-Hotels
Disallow: /3Star-*-Hotels-*.s30-0-d*-t*-b*.Travel-Guide-Filter-Hotels
Disallow: /4Star-*-Hotels-*.s40-0-d*-t*-b*.Travel-Guide-Filter-Hotels
Disallow: /5Star-*-Hotels-*.s50-0-d*-t*-b*.Travel-Guide-Filter-Hotels

Disallow: /1Star-*-Hotels-*.s10-n*-t*-b*.Travel-Guide-Filter-Hotels
Disallow: /2Star-*-Hotels-*.s20-n*-t*-b*.Travel-Guide-Filter-Hotels
Disallow: /3Star-*-Hotels-*.s30-n*-t*-b*.Travel-Guide-Filter-Hotels
Disallow: /4Star-*-Hotels-*.s40-n*-t*-b*.Travel-Guide-Filter-Hotels
Disallow: /5Star-*-Hotels-*.s50-n*-t*-b*.Travel-Guide-Filter-Hotels



User-agent: google-hoteladsverifier
Allow: /
User-agent: AdIdxBot
Allow: /
