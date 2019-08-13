# Elaborado MPT 18/abril/2018
Sitemap: http://www.lan.com/sitemap.xml

# This file is managed, changes will be lost.
User-agent: google-mini-lan

User-agent: *
Disallow: /es_cl/sitio_personas/vuelos/http://www.lan.com/es_cl/sitio_personas/vuelos/
Disallow: /cgi-bin/
Disallow: /toolbox/
Disallow: /trotamundo_new/
Disallow: /es_cl/empresas/reservas/despues_de_comprar/anulaciones.html
Disallow: /es_cl/sitio_personas/terminos-y-condiciones/
Disallow: /cgi-bin/compra/oum.cgi
Disallow: /error_document/410.html
Disallow: /cgi-bin/hoteles/hoteles.cgi
# 'Allow' no funciona con todos los crawlers. Con Google y Yahoo funciona.
Allow: /cgi-bin/info_vuelos/info_vuelos.cgi
Allow: /cgi-bin/autos/autos.cgi
Allow: /cgi-bin/checkin/paso1.cgi
Allow: /cgi-bin/compra/paso1.cgi
Allow: /cgi-bin/compra/saa.cgi
Allow: /cgi-bin/deschequeo/paso1.cgi
Allow: /cgi-bin/feeds/
Allow: /cgi-bin/flifo/paso1.cgi
Allow: /cgi-bin/flight_status/paso1.cgi
Allow: /cgi-bin/profile/registro.cgi
Allow: /cgi-bin/self_notify/paso1.cgi
Allow: /cgi-bin/ezcash/
Allow: /asociados/
Allow: /cgi-bin/asociados/
Allow: /cgi-bin/country_selector.cgi
# para los links de los banners que no se redirigen en forma permanente
Allow: /cgi-bin/log/

# Parametros campanas
Disallow: *?utm
Disallow: *?cid
Disallow: *?CID
Disallow: *gclid
Disallow: *?yclid
Disallow: *?OTID