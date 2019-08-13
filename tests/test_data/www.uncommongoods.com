User-Agent: *
Disallow: /voting/
Disallow: /*.ugwebworker* 
Disallow: /*;jessionid 
Disallow: /*jessionid
Disallow: /search
Disallow: /hc/
Disallow: /static/terms.jsp
Disallow: /secured/AccountInfo
Disallow: /wish-list
Disallow: /lists/
Allow: /lists/uncommon-collection
Disallow: /designs
Disallow: /catalog/catalogSignup
Disallow: /catalog/catalogUnsubscribe
Disallow: /checkout/
Disallow: /checkout/basket
Disallow: /email/OptOut
Disallow: /giftRegistry
Disallow: /secure/logout
Disallow: /images/
Disallow: /item/
Disallow:/product/ceramic-egg-hanging-planters
Disallow:/artist?artistId=10540
Disallow:/product/ceramic-egg-night-light
Disallow:/product/egg-bird-feeder
Disallow:/reviews/pwr/47z6878d/rawdata/review_data_complete.xml 
Disallow:/home-garden/garden/garden-dcor 
Disallow:/product/manifold-clock
Sitemap: https://www.uncommongoods.com/sitemap.xml
Sitemap: https://www.uncommongoods.com/images/th-sitemap-0.xml
User-agent: googlebot
Disallow:/product/ceramic-egg-hanging-planters
Disallow:/artist?artistId=10540
Disallow:/product/ceramic-egg-night-light
Disallow:/product/egg-bird-feeder
Disallow:/reviews/pwr/47z6878d/rawdata/review_data_complete.xml 
Disallow:/product/leaf-jewelry
Disallow:/home-garden/garden/garden-dcor 
Disallow:/product/manifold-clock
