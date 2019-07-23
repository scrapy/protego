User-agent: *

# Paths (clean URLs)
Disallow: /index.php/
Disallow: /catalog/product_compare/
Disallow: /catalog/category/view/
Disallow: /catalog/product/view/
Disallow: /catalogsearch/
Disallow: /control/
Disallow: /contacts/
Disallow: /customer/
Disallow: /customize/
Disallow: /newsletter/
Disallow: /sendfriend/
Disallow: /wishlist/
Disallow: /review/product/listAjax/id/

# Do not index pages that are sorted or filtered.
Disallow: /*?*product_list_mode=
Disallow: /*?*product_list_order=
Disallow: /*?*product_list_limit=
Disallow: /*?*product_list_dir=

# Do not index session ID
Disallow: /*.php$
Disallow: /*?SID=

#