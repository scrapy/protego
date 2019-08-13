#04/24/2019 SEO TEAM

User-Agent: Mediapartners-Google
Disallow: 

User-Agent: Slurp
Disallow: 
 
User-Agent: Yahoo Ad Monitoring
Disallow: 

User-Agent: *
Disallow: /*trid=                                          	# Used for PPC Tracking
Disallow: /*psid=                                          	# Used for PPC Tracking
Disallow: /*siomid                                         	# Used for PPC Tracking
Disallow: /mykbb/                                          	# Block mykbb personalization pages
Disallow: /m/                                              	# Don't want to rank the mobile only pages.. such as settings, location, etc.
Disallow: /*legaldisclaimer                                	# Don't want to rank the legaldisclaimer pages
Disallow: /services/*                                      	# Block services from crawlers
Disallow: /cars-for-sale/details/freehistoryreport/        	# Don't need to rank 
Disallow: /cars-for-sale/listings/frontlinelisting/        	# Don't need to rank/crawl/index 
Disallow: /car-news/showall/                               	# Don't need to rank/crawl/index 
Disallow: /car-pictures-and-videos/                        	# Don't need to rank/crawl/index 
Disallow: /userratings/                                    	# Don't need to rank/crawl/index 
Disallow: /kbb/                                            	# Don't need to rank/crawl/index 
Disallow: /*?listingid=                                    	# Don't need parameter to rank/crawl/index 
Disallow: /instant-cash-offer/offer.xhtml		   	# Don't need to rank/crawl/index 
Disallow: /instant-cash-offer/contact_info.xhtml	   	# Don't need to rank/crawl/index 
Disallow: /survey/*	 					# Don't need to rank/crawl/index 
Disallow: /error/*	  	 				# Don't need to rank/crawl/index 
Disallow: /ymmt/*		 				# Don't need to rank/crawl/index 	
Disallow: /vehicle/expertratings/ 				# Don't need to rank/crawl/index 
Disallow: /vehicles/*						# Don't need to rank/crawl/index 
Disallow: /ymm/*		 				# Don't need to rank/crawl/index 
Disallow: /cars-for-sale/dealerdifferentiator/dealerdiffinfo/	# Don't need to rank/crawl/index 
Disallow: /jsdata/* 						# Don't need to rank/crawl/index 
Disallow: /cars-for-sale/services/*				# Don't need to rank/crawl/index 
Disallow: /api/*						# Don't need to rank/crawl/index 
Disallow: /mediagallery/*					# Don't need to rank/crawl/index
Disallow: /quickpoll/*						# Don't need to rank/crawl/index
Disallow: /sell-car/*						# Don't need to rank/crawl/index
Disallow: /scriptincludes/data-layer/*				# Don't need to rank/crawl/index
Disallow: /ico/dynamicData/*					# Don't need to rank/crawl/index
Disallow: /zipcode/*						# Don't need to rank/crawl/index
Disallow: /static/js/global/birf/*				# Don't need to rank/crawl/index
Disallow: /homepage/homepage/_showroom/*			# Don't need to rank/crawl/index
Disallow: /cars/latestnewslazyload/*				# Don't need to rank/crawl/index
Disallow: /Api/*						# Don't need to rank/crawl/index
Disallow: /cars-for-sale/listings/        	# Don't need to rank/crawl/index 
Disallow: /cars-for-sale/listings/searchformoverlay/        	# Don't need to rank/crawl/index 
Disallow: /cars-for-sale/listings/geteasedelitelistings/        	# Don't need to rank/crawl/index 
Disallow: /cars-for-sale/listings/getfacetedfilters/        	# Don't need to rank/crawl/index 
Disallow: /cars-for-sale/listings/facetlist/        	# Don't need to rank/crawl/index 
Disallow: /cars-for-sale/listings/facetoverlay/        	# Don't need to rank/crawl/index 
Disallow: /cars-for-sale/listings/refinesearchfaceted/        	# Don't need to rank/crawl/index 

Sitemap: https://www.kbb.com/sitemap.xml
