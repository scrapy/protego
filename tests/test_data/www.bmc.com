#                                                                                           
#   ;;;;                                                                                    
#  ;;;;;;;                                                                                  
#  ;;;;;;;;;                                                                                
#  ;;;;;;;;;;                                                                               
#  ;;;  ;;;;;;;                                                                             
#  ;;;   ;;;;;;;;                                                                           
#  ;;;     ;;;;;;;                ++++                                                      
#  ;;;       ;;;;;;;              ++++                                                      
#  ;;;        ;;;;;;;;            ++++                                                      
#  ;;;;         ;;;;;;;           ++++                                                      
#  ;;;;           ;;;;;;;         ++++                                                      
#   ;;;;;           ;;;;;;        ++++                                                      
#   ;;;;;;           ;;;;;        ++++                                                      
#    ;;;;;;;         ;;;;;        ++++   +++               +++      +++            +++      
#      ;;;;;;;      ;;;;;;        ++++ +++++++      ++++ +++++++  +++++++       +++++++++   
#       ;;;;;;;;  ;;;;;;;         ++++++++++++++    ++++++++++++++++++++++     +++++++++++  
#         ;;;;;;;;;;;;;           ++++++++++++++    +++++++++++++++++++++++   +++++++++++++ 
#           ;;;;;;;;;;            ++++++   ++++++   ++++++  +++++++  ++++++   +++++   +++++ 
#            ;;;;;;;;             +++++     +++++   +++++    +++++    +++++  +++++     +++++
#          ;;;;;;;;;;;;           ++++       +++++  ++++     +++++    +++++  +++++          
#         ;;;;;;;;;;;;;;          ++++       +++++  ++++     +++++     ++++  ++++           
#       ;;;;;;;   ;;;;;;;;        ++++       +++++  ++++     +++++     ++++  ++++           
#     ;;;;;;;       ;;;;;;        ++++       +++++  ++++     +++++     ++++  ++++           
#    ;;;;;;;          ;;;;        ++++       +++++  ++++     +++++     ++++  ++++           
#   ;;;;;;           ;;;;;        +++++      +++++  ++++     +++++     ++++  +++++     +++++
#  ;;;;;           ;;;;;;         +++++     +++++   ++++     +++++     ++++  +++++     ++++ 
#  ;;;;          ;;;;;;;          +++++++++++++++   ++++     +++++     ++++   +++++++++++++ 
#  ;;;;         ;;;;;;            ++++++++++++++    ++++     +++++     ++++    ++++++++++++ 
#  ;;;        ;;;;;;;             +++++++++++++     ++++     +++++     ++++     ++++++++++  
#  ;;;      ;;;;;;;               ++++  ++++++      ++++     +++++     ++++      +++++++    
#  ;;;     ;;;;;;                                                                           
#  ;;;   ;;;;;;;                                                                            
#  ;;; ;;;;;;;                                                                              
#  ;;;;;;;;;;                                                                               
#  ;;;;;;;;                                                                                 
#  ;;;;;;                                                                                   
#   ;;;;   


User-agent: *
Disallow: /search
Disallow: /webservices/search  
Disallow: /webservices         
Disallow: /web-services        
Disallow: /florida
Disallow: /2546ytglj5
Disallow: /videos/ozpgibayvar
Disallow: /info/webinars
Disallow: /*action=doLogin$
Disallow: /support/reg
Disallow: /info/dwdjosmhbn.html
Disallow: /apps
Disallow: /available
Disallow: *ty.PURL*
Sitemap: http://www.bmc.com/sitemap.xml

User-agent: Nutch
Disallow: /

User-agent: Spiderbot
Disallow: /

User-agent: Spiderbot/Nutch-1.7
Disallow: /

User-agent: sukibot_heritrix
Disallow: /

User-agent: AhrefsBot 
Crawl-Delay: 2

User-agent: netEstate NE Crawler
Disallow: /

User-agent: dotbot
Disallow: /



