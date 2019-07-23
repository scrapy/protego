User-agent: *

# Last edited 01/08/2017

######## Old Directories ########

Disallow: /jv/
Disallow: /products/

######## Broken URLs ########

Disallow: */prod_*_100_
Disallow: */prod_*_null_
Disallow: */prod_*_0_
Disallow: */servlet/0
Disallow: */servlet/1
Disallow: */servlet/2
Disallow: */servlet/3
Disallow: */servlet/4
Disallow: */servlet/5
Disallow: */servlet/6
Disallow: */servlet/7
Disallow: */servlet/8
Disallow: */servlet/9
Disallow: */null*null
Disallow: *catalogId=null
Disallow: *10001_10001
Disallow: *10701_10701
Disallow: /*.htm$

######## Parameters ########

##Popup
Disallow: *popup=
##Old Product Display
Disallow: *productId=

## Search Results
Disallow: *DM_PersistentCookieCreated
Disallow: /search/
Disallow: *txt=

##Tracking Code
Disallow: *sr=
#Disallow: *mkwid=
#Disallow: *scvid=
#Disallow: *placmp=
#Disallow: *discId=
#Disallow: *beginIndex=
#Disallow: *ds_e_ad_type=
#Disallow: *gclsrc=
#Disallow: *awc=
#Disallow: *ci_sku=
#Disallow: *ci_src=
#Disallow: *utm_content=
#Disallow: *utm_campaign=
#Disallow: *utm_medium=
#Disallow: *utm_source=
#Disallow: *gclid=
#Disallow: *CMP=
#Disallow: *cmp=
#Disallow: *INTCMP=
#Disallow: *DCMP=
#Disallow: *said=
#Disallow: *tmcampid=
#Disallow: *tmad=
#Disallow: *ItemDisplay=
#Disallow: *scvid=
#Disallow: *bmUID=
#Disallow: *adtype=
#Disallow: *folder_id=
#Disallow: *ja=
#Disallow: *userType=
#Disallow: *label=
#Disallow: *sc_kw=
#Disallow: *sc_mt=
#Disallow: *categoryId=
#Disallow: *sku=

## Page Size
Disallow: *ps=
Disallow: *ps=default*pn=
Allow: *ps=default

## Sort
Disallow: *sid=

## Price
Disallow: *Cprice
##Price Filter
Disallow: *<price
Disallow: */price
## Price Range
Disallow: *rlo=
Disallow: *rhi=
## Discount
Disallow: *discounted_percentage

## Selected facet
Disallow: *sfv
Disallow: *sfn
Disallow: *dfv
Disallow: *mfv=

##Multiselect
Disallow: *:

## Crawl Depth Limit
Disallow: *maxparcount

##Full Price Referral
Disallow: *fpref

## Enable PSP on page
Disallow: *aspsp=

## Other
Disallow: *truncated_rating_value
Disallow: *;
Allow: *amp;

##Picklist
Allow: *;t=picked_lists
Allow: *3Dpicked_lists
Disallow: *plp/

######## Other ########

Disallow: *DebOrderItemAdd
Disallow: *AjaxOrderItemDisplayView
Disallow: /Navigate?sfv=VIEW+ALL+CLOTHES
Disallow: /Navigate?sfv=VIEW+ALL+FOOTWEAR
Disallow: /Navigate?sfv=VIEW+ALL+HANDBAGS
Disallow: /*intcmp
Disallow: /wcsstore/DebenhamsUKSite/$
Disallow: /webapp/wcs/stores/servlet/$
Disallow: /wcsstore$
Disallow: /wcsstore/DebenhamsIntSite/$

## Breadcrumb
Disallow: *TopCategoriesDisplay
Disallow: *breadcrumb=

## User
Disallow: *NonAjaxAccountWishListDisplayView
Disallow: *AjaxLogonForm
Disallow: *krypto=
Disallow: *TrackTraceQueryView
Disallow: *UserRegistrationForm
Disallow: *DebsTrackTraceCntrlCmd
Disallow: *myAcctMain
Disallow: *QuickRegistrationForm
Disallow: *CollectFromStoreListView
Disallow: *BillingAddressDisplayView
Disallow: *OrderShippingBillingView
Disallow: *SelectDeliveryMethodView
Disallow: *ShoppingCart

## Brands view all
Disallow: *AjaxFacetShowAllView

## Add a Review
Disallow: /webapp/wcs/stores/servlet/ReviewSubmission

## Remove _ms pages
Disallow: *_ms

######## International ########

Disallow: *storeId=10052
Disallow: *storeid=10052
## Dummy UK
Disallow: /en-gb
## Error
Disallow: /en-/
Disallow: /en-$
Disallow: /en/

# Unwanted International Sites
Disallow: /en-ad
Disallow: *-1049
Disallow: /en-bb
Disallow: *-1060
Disallow: /en-bm
Disallow: *-1058
Disallow: /en-br
Disallow: *-1065
Disallow: /en-jm
Disallow: *-1059
Disallow: /en-ke
Disallow: *-1061
Disallow: /en-kv
Disallow: *-1054
Disallow: /en-li
Disallow: *-1057
Disallow: /en-mc
Disallow: *-1050
Disallow: /en-mx
Disallow: *-1055
Disallow: /en-sm
Disallow: *-1052
