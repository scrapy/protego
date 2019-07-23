Sitemap: https://slidemodel.com/sitemap.xml

# global
User-agent: *
Disallow: /cgi-bin/
Disallow: /wp-admin/
Disallow: /wp-includes/
Allow: /wp-includes/js/jquery/jquery.js?ver=1.12.4
Allow: /wp-includes/js/wp-embed.min.js?ver=4.7.2
Allow: /wp-includes/js/wp-embed.min.js?ver=4.8
Allow: /wp-includes/js/jquery/jquery-migrate.min.js?ver=1.4.1
Allow: /wp-includes/js/comment-reply.min.js?ver=4.7.2
Allow: /wp-includes/js/comment-reply.min.js?ver=4.8
Disallow: /wp-content/plugins/
Allow: /wp-content/plugins/wp-postratings/postratings-js.js?ver=1.81
Allow: /wp-content/plugins/seo-searchterms-admin/js/public.js?ver=0.1.0
Allow: /wp-content/plugins/easy-digital-downloads/assets/js/edd-ajax.min.js?ver=2.6.17
Allow: /wp-content/plugins/edd-wish-lists-jm/includes/js/edd-wl.js?ver=1.0.6
Allow: /wp-content/plugins/edd-favorites-jm/includes/edd-jm-favorites-script.js?ver=1.1
Allow: /wp-content/plugins/magn-hellobar/js/magn-hellobar.js?ver=4.7.2
Allow: /wp-content/plugins/magn-hellobar/js/magn-hellobar.js?ver=4.8
Allow: /wp-content/plugins/magn-hellobar/js/jquery.cookie.js?ver=4.7.2
Allow: /wp-content/plugins/magn-hellobar/js/jquery.cookie.js?ver=4.8
Allow: /wp-content/plugins/magn-hellobar/jbar/jbar.js?ver=4.7.2
Allow: /wp-content/plugins/magn-hellobar/jbar/jbar.js?ver=4.8
Allow: /wp-content/plugins/akismet/_inc/form.js?ver=3.3
Allow: /wp-content/plugins/restrict-content-pro/includes/js/jquery.blockUI.js?ver=2.6.13
Allow: /wp-content/plugins/restrict-content-pro/includes/js/register.min.js?ver=2.6.13
Allow: /wp-content/plugins/edd-wish-lists-jm/templates/edd-wl.min.css?ver=1.0.6
Allow: /wp-content/plugins/magn-google-analytics/scripts/analytics.js
Disallow: /trackback/
Disallow: /comments/
Disallow: */trackback/
Disallow: */comments/
Disallow: /wp-login.php
Disallow: /wp-signup.php

Disallow: /best-powerpoint-templates/page/*
Disallow: /latest-powerpoint-templates/page/*
Disallow: /free-powerpoint-templates/page/*
Disallow: /slide/*

#fix soft-404
Disallow: /search/

Allow: /wp-content/plugins/wp-postratings/images/*

Disallow: /magnet/

