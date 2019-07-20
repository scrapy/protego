
# This file MUST NOT be edited without approval from the SEO team. Please email the seoamers alias if you plan to change this file.

User-agent: * 
Disallow: /daily/common/ 
Disallow: /cd/ 
Disallow: /pub/agent.dll?qscr=mrdt 
Disallow: /pub/agent.dll?qscr=mrdr 
Disallow: /daily/vacations/merch/ 
Disallow: /daily/hotels/all-inclusive.asp 
Disallow: /daily/hotels/all_inclusive.asp 
Disallow: /pubspec/scripts/
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
Disallow: /ugc/urs/api/hotelreviews/hotel/HOTELID/
Disallow: /23171577/
Disallow: /trips/

# <Checkout> 
Disallow: /Confirmation-Flight*
Disallow: /HotelCheckout
Disallow: /Checkout/*
# </Checkout>

Allow: /MobileHotel/Webapp/SearchResults
Allow: /MobileHotel/Webapp/HotelOffers

# disallowing multi-filters

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
Disallow: /recommendations/
User-agent: AhrefsBot
Disallow: /pictures/

User-agent: google-hoteladsverifier
Allow: /
User-agent: AdIdxBot
Allow: /
