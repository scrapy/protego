User-agent: *

# We don't want start links indexed, they might not work
Disallow: /start.php
# Cart isn't useful for search
Disallow: /cart/
# Allow hub pages only under /create (see below)
Allow: /create/hub/
# Create flow isn't useful for search
Disallow: /create/
Disallow: /bascule/
# Account is a logged in only space
Disallow: /account/
# Make is the old create
Disallow: /make/
# No longer exists, lets not index links to it
Disallow: /designs/
# No longer works, lets not index links to it
Disallow: /design-templates/pdp_preview.php
# No longer exists Leaving in the old structure too, just in case there are old links to it
# Wordpress has these excluded in it's robots.txt
Disallow: /blog/wp-admin/
Disallow: /blog/wp-includes/
# We don't want labs being indexed
Disallow: /labs/
# M4B don't want to be indexed - this URL doesn't need to be localised
Disallow: /m4b/
# USBC
Disallow: /products/standard-size-business-cards.html
Disallow: /products/luxe/standard-size-business-cards.html
# Readymade section no longer works, lets not index links to it
Disallow: /readymade/
# Links are mostly 3rd party sites that we dont want followed
Disallow: /link/
# Promotions require a user session and shouldn't be crawled
Disallow: /promotion/


# Repeat for en
Disallow: /en/start.php
Disallow: /en/cart/
Allow: /en/create/hub/
Disallow: /en/create/
Disallow: /en/bascule/
Disallow: /en/account/
Disallow: /en/make/
Disallow: /en/designs/
Disallow: /en/design-templates/pdp_preview.php
Disallow: /en/blog/wp-admin/
Disallow: /en/blog/wp-includes/
Disallow: /en/labs/
Disallow: /en/products/standard-size-business-cards.html
Disallow: /en/products/luxe/standard-size-business-cards.html
Disallow: /en/readymade/
Disallow: /en/promotion/


# Repeat for fr
Disallow: /fr/start.php
Disallow: /fr/cart/
Allow: /fr/create/hub/
Disallow: /fr/create/
Disallow: /fr/bascule/
Disallow: /fr/account/
Disallow: /fr/make/
Disallow: /fr/designs/
Disallow: /fr/design-templates/pdp_preview.php
Disallow: /fr/blog/wp-admin/
Disallow: /fr/blog/wp-includes/
Disallow: /fr/labs/
Disallow: /fr/products/standard-size-business-cards.html
Disallow: /fr/products/luxe/standard-size-business-cards.html
Disallow: /fr/readymade/
Disallow: /fr/promotion/

# Repeat for de
Disallow: /de/start.php
Disallow: /de/cart/
Allow: /de/create/hub/
Disallow: /de/create/
Disallow: /de/bascule/
Disallow: /de/account/
Disallow: /de/make/
Disallow: /de/designs/
Disallow: /de/design-templates/pdp_preview.php
Disallow: /de/blog/wp-admin/
Disallow: /de/blog/wp-includes/
Disallow: /de/labs/
Disallow: /de/products/standard-size-business-cards.html
Disallow: /de/products/luxe/standard-size-business-cards.html
Disallow: /de/readymade/
Disallow: /de/promotion/

# Repeat for it
Disallow: /it/start.php
Disallow: /it/cart/
Allow: /it/create/hub/
Disallow: /it/create/
Disallow: /it/bascule/
Disallow: /it/account/
Disallow: /it/make/
Disallow: /it/designs/
Disallow: /it/design-templates/pdp_preview.php
Disallow: /it/blog/wp-admin/
Disallow: /it/blog/wp-includes/
Disallow: /it/labs/
Disallow: /it/products/standard-size-business-cards.html
Disallow: /it/products/luxe/standard-size-business-cards.html
Disallow: /it/readymade/
Disallow: /it/promotion/

# Repeat for es
Disallow: /es/start.php
Disallow: /es/cart/
Allow: /es/create/hub/
Disallow: /es/create/
Disallow: /es/bascule/
Disallow: /es/account/
Disallow: /es/make/
Disallow: /es/designs/
Disallow: /es/design-templates/pdp_preview.php
Disallow: /es/blog/wp-admin/
Disallow: /es/blog/wp-includes/
Disallow: /es/labs/
Disallow: /es/products/standard-size-business-cards.html
Disallow: /es/products/luxe/standard-size-business-cards.html
Disallow: /es/readymade/
Disallow: /es/promotion/

# Repeat for uk
Disallow: /uk/start.php
Disallow: /uk/cart/
Allow: /uk/create/hub/
Disallow: /uk/create/
Disallow: /uk/bascule/
Disallow: /uk/account/
Disallow: /uk/make/
Disallow: /uk/designs/
Disallow: /uk/design-templates/pdp_preview.php
Disallow: /uk/blog/wp-admin/
Disallow: /uk/blog/wp-includes/
Disallow: /uk/labs/
Disallow: /uk/products/standard-size-business-cards.html
Disallow: /uk/products/luxe/standard-size-business-cards.html
Disallow: /uk/readymade/
Disallow: /uk/promotion/

# Repeat for us
Disallow: /us/start.php
Disallow: /us/cart/
Allow: /us/create/hub/
Disallow: /us/create/
Disallow: /us/bascule/
Disallow: /us/account/
Disallow: /us/make/
Disallow: /us/designs/
Disallow: /us/design-templates/pdp_preview.php
Disallow: /us/blog/wp-admin/
Disallow: /us/blog/wp-includes/
Disallow: /us/labs/
Disallow: /us/readymade/
Disallow: /us/promotion/

# Repeat for ca
Disallow: /ca/start.php
Disallow: /ca/cart/
Allow: /ca/create/hub/
Disallow: /ca/create/
Disallow: /ca/bascule/
Disallow: /ca/account/
Disallow: /ca/make/
Disallow: /ca/designs/
Disallow: /ca/design-templates/pdp_preview.php
Disallow: /ca/blog/wp-admin/
Disallow: /ca/blog/wp-includes/
Disallow: /ca/labs/
Disallow: /ca/readymade/
Disallow: /ca/promotion/

# Repeat for au
Disallow: /au/start.php
Disallow: /au/cart/
Allow: /au/create/hub/
Disallow: /au/create/
Disallow: /au/bascule/
Disallow: /au/account/
Disallow: /au/make/
Disallow: /au/designs/
Disallow: /au/design-templates/pdp_preview.php
Disallow: /au/blog/wp-admin/
Disallow: /au/blog/wp-includes/
Disallow: /au/labs/
Disallow: /au/products/standard-size-business-cards.html
Disallow: /au/products/luxe/standard-size-business-cards.html
Disallow: /au/readymade/
Disallow: /au/promotion/

# Repeat for nl
Disallow: /nl/start.php
Disallow: /nl/cart/
Allow: /nl/create/hub/
Disallow: /nl/create/
Disallow: /nl/bascule/
Disallow: /nl/account/
Disallow: /nl/make/
Disallow: /nl/designs/
Disallow: /nl/design-templates/pdp_preview.php
Disallow: /nl/blog/wp-admin/
Disallow: /nl/blog/wp-includes/
Disallow: /nl/labs/
Disallow: /nl/products/standard-size-business-cards.html
Disallow: /nl/products/luxe/standard-size-business-cards.html
Disallow: /nl/readymade/
Disallow: /nl/promotion/

# Repeat for eu
Disallow: /eu/start.php
Disallow: /eu/cart/
Allow: /eu/create/hub/
Disallow: /eu/create/
Disallow: /eu/bascule/
Disallow: /eu/account/
Disallow: /eu/make/
Disallow: /eu/designs/
Disallow: /eu/design-templates/pdp_preview.php
Disallow: /eu/blog/wp-admin/
Disallow: /eu/blog/wp-includes/
Disallow: /eu/labs/
Disallow: /eu/products/standard-size-business-cards.html
Disallow: /eu/products/luxe/standard-size-business-cards.html
Disallow: /eu/readymade/
Disallow: /eu/promotion/

# Repeat for es-us
Disallow: /es-us/start.php
Disallow: /es-us/cart/
Allow: /es-us/create/hub/
Disallow: /es-us/create/
Disallow: /es-us/bascule/
Disallow: /es-us/account/
Disallow: /es-us/make/
Disallow: /es-us/designs/
Disallow: /es-us/design-templates/pdp_preview.php
Disallow: /es-us/blog/wp-admin/
Disallow: /es-us/blog/wp-includes/
Disallow: /es-us/labs/
Disallow: /es-us/readymade/
Disallow: /es-us/promotion/

# Repeat for fr-us
Disallow: /fr-us/start.php
Disallow: /fr-us/cart/
Allow: /fr-us/create/hub/
Disallow: /fr-us/create/
Disallow: /fr-us/bascule/
Disallow: /fr-us/account/
Disallow: /fr-us/make/
Disallow: /fr-us/designs/
Disallow: /fr-us/design-templates/pdp_preview.php
Disallow: /fr-us/blog/wp-admin/
Disallow: /fr-us/blog/wp-includes/
Disallow: /fr-us/labs/
Disallow: /fr-us/readymade/
Disallow: /fr-us/promotion/

# We want to be sure not to index links that force magnolia pages to be loaded
Disallow: /*?forceMagnolia=true



# Removing Duplicate Content from SERP Results
Disallow:/eu/
Disallow:/nl/
Disallow:/fr-us/


# Remove Duplicate Page Titles
Disallow: /uk/products/business-services/team

Sitemap: https://www.moo.com/sitemap.xml