User-agent: *
Allow: /v/business_account/trade_program/home
Disallow: /ajax/
Disallow: /filter/
Disallow: /filters/
Disallow: */filters/
Noindex: /filters/
Noindex: */filters/
Noindex: /*quick_view
Disallow: /hl_landing.php
Disallow: /imgview/
Disallow: /logodownload.php
Disallow: /popups/
Disallow: /shop/
Disallow: /v/account/
Disallow: /vmlt.php
Allow: /shop-the-look/$
Allow: /shop-the-look/slp/
Allow: /shop-the-look/dsp/
Allow: /shop-the-look/sl0
Allow: /shop-the-look/sl1/
Allow: /shop-the-look/sl2/
Disallow: /shop-the-look/
Disallow: /v/get_the_look/
Disallow: /v/product_review_page/
Disallow: /product_review_page/
Disallow: /session/secure/
Disallow: /asp/
Noindex: /daily-sales/*.html
Disallow: /ib/
Noindex : /daily-sales/p/*
Disallow: */sbs/
Noindex : */sbs/
Disallow: /param.xml
Disallow: /return_sales_items.php
Disallow: /session/public/board
Disallow: /Staples/
Disallow: /v/category/show
Disallow: /a/favorites/list/is_favorited
Disallow: /a/performance_timing/log
Disallow: /b/batch
Disallow: /gateway.php
Disallow: /pixel/!crd_prm!.gif
Disallow: /set_location.php
Disallow: /v/category/get_top_level_categories
Disallow: /v/inventory/load
Disallow: /v/product_image_group/get_images
Disallow: /session/public/submit_review.php
Disallow: /session/public/basket.php
Disallow: /v/checkout/
Disallow: /registry/browse/
Disallow: /registry/checklist/
Disallow: /v/ideaboards/
Disallow: /v/favorites/
Disallow: /compare.php
Disallow: /visual_search/
Disallow: /finds
Disallow: /flashdeals
Noindex : /roomplanner/*
Disallow: /roomplanner/
Noindex : /decorator/*
Disallow: /decorator/
Disallow: /service_worker.js
Disallow: /daily-sales/master
Disallow: /registry/*/pdp/
Allow: /roomplanner3d/$
Noindex: /roomplanner3d/*
Disallow: /roomplanner3d/
Disallow: /a/category/category_page/lazy_load_category_tree
#
#   ______     __                 __           ____
#  / ____/__  / /_   ____  __  __/ /_   ____  / __/
# / / __/ _ \/ __/  / __ \/ / / / __/  / __ \/ /_  
#/ /_/ /  __/ /_   / /_/ / /_/ / /_   / /_/ / __/   
#\_____\___/\__/   \____/\__,_/\__/   \____/_/  
#   / /_  ___  ________     __  ______  __  __ 
#  / __ \/ _ \/ ___/ _ \   / / / / __ \/ / / /
# / / / /  __/ /  /  __/  / /_/ / /_/ / /_/ /
#/_/ /_/\___/_/   \___/   \__, /\____/\__,_/
#                       _/____/____                __   _     __
#   ____ ___  ___  ____/ /___/ / (_)___  ____ _   / /__(_)___/ /____
#  / __ `__ \/ _ \/ __  / __  / / / __ \/ __ `/  / //_/ / __  / ___/
# / / / / / /  __/ /_/ / /_/ / / / / / / /_/ /  / , / / /_/ (__  ) _ _ 
#/_/ /_/ /_/\___/\__,_/\__,_/_/_/_/ /_/\__, /  /_/|_/_/\__,_/____(_|_|_)
#                                     /____/                            
# If you're here because you're a curious programmer, engineer, or SEO,
# make sure to check out our job board for open positions on our team!
# https://www.wayfaircareers.com/
#
#