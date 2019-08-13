# Lines starting with # are comments and will be ignored

User-agent: *

Disallow: /cgi-bin/
#Disallow: /*.js$
#Disallow: /*.css$

# Dont index Telkom Fibre Page
Disallow: /landing/fibre/telkom/

# Dont index Afriblog
Disallow: /afriblog/

# Dont index Mailers/Newsletters
Disallow: /mailshots/

# General no index
Disallow: /site/product/afridesign_special

# Everything else may be searched/indexed

# Google Image
User-agent: Googlebot-Image
Disallow:
Allow: /*

# Google AdSense
User-agent: Mediapartners-Google*
Disallow:
Allow: /*

# Fibre Disallows
Disallow: /fibre/@-ease
Disallow: /fibre/evotel-north-riding
Disallow: /fibre/evotel
Disallow: /fibre/onyx

# Newsroom Disallows
Disallow: /site/newsroom/view/*

# Promotion Winners Disallows
Disallow: /site/promotions/winners/*

# Domain Registrations Disallows
Disallow: /site/product/domain_registration/*

# Testimonials Disallows
Disallow: /site/testimonials/*

# Promotion Winners
Disallow: /site/promotions/winners/*
