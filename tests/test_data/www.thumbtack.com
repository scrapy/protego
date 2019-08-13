#                      ..,,,:::::::,,..
#                 .,:;i11tttttttttttt11i;:,.
#              .:i1tttttttttttttttttttttttt1i:,
#           .:i1ttttttttttttttttttttttttttttttti:.
#         .:1tttttttttttttttttttttttttttttttttttt1;.
#        :1tttttttttttttttttttttttttttttttttttttttt1:.
#      .itttttttttttttttttttttttttttttttttttttttttttti,
#     ,1tttttttttt111111111111111111111111111ttttttttt1:
#    ,1tttttttttt;..........................:ttttttttttt:
#   .1ttttttttttt:                          ,tttttttttttt,
#   itttttttttttt:                          ,tttttttttttt1.
#  ,ttttttttttttt1111111111111111111111111111ttttttttttttt:
#  ;tttttttttttttttttttttttttt1i;;1ttttttttttttttttttttttt1
#  1tttttttttttttttttttttttt;,.   ;ttttttttttttttttttttttt1.
# .1ttttttttttttttttttttttti      ;tttttttttttttttttttttttt,
# .1ttttttttttttttttttttttti      ;tttttttttttttttttttttttt.
#  ittttttttttttttttttttttti      ;ttttttttttttttttttttttt1.
#  :ttttttttttttttttttttttti      ;ttttttttttttttttttttttt;
#  .itttttttttttttttttttttti      ;tttttttttttttttttttttt1.
#   ,1ttttttttttttttttttttti      ;tttttttttttttttttttttt:
#    :ttttttttttttttttttttt1.     ittttttttttttttttttttt;
#     :1tttttttttttttttttttt,    .1tttttttttttttttttttt;
#      ,1ttttttttttttttttttti.   ;ttttttttttttttttttt1:
#       .;1tttttttttttttttttti..;ttttttttttttttttttti.
#         ,;1ttttttttttttttttt1itttttttttttttttttti,
#           .;1tttttttttttttttttttttttttttttttt1;,
#             .,;1tttttttttttttttttttttttttt1;:.
#                .,:;i1tttttttttttttttt1i;:,.
#                     ..,::;;;;;;;;::,,.
#

User-Agent: OmniExplorer_Bot
Disallow: /

User-agent: *
Disallow: /action/
Disallow: /admin/
Disallow: /ajax/
Disallow: /bid/
Disallow: /find-work/
Disallow: /instant-results
Allow: /instant-results/pro-list
Disallow: /logout
Disallow: /maintenance
Allow: /maintenance-services
Disallow: /media/
Disallow: /profile
Disallow: /profile/widgets?
Allow: /profile/widgets
Allow: /profile/picture
Disallow: /request/
Disallow: /reviews/
Disallow: /tracking/
Disallow: /websites/
Disallow: /help/mobile
Disallow: /event/
Disallow: /marketpayment/identity
Disallow: /marketpayment/payee
Disallow: /native
Disallow: /login/mobile
Disallow: /pro-inbox/
Disallow: /redirect
Disallow: /track_event/
Sitemap: https://www.thumbtack.com/sitemap_landing_pages.xml
Sitemap: https://www.thumbtack.com/sitemap_nearme_pages.xml
Sitemap: https://www.thumbtack.com/sitemap_cost_pages.xml
Sitemap: https://www.thumbtack.com/sitemap_misc.xml
