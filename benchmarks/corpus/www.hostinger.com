# Hey there, curious crawler
# We're hiring! Check out our career page: https://www.hostinger.com/career
#
#         \
#          \
#           \\
#            \\
#             >\/7
#         _.-(6'  \
#        (=___._/` \
#             )  \ |
#            /   / |
#           /    > /
#          j    < _\
#      _.-' :      ``.
#      \ r=._\        `.
#     <`\\_  \         .`-.
#      \ r-7  `-. ._  ' .  `\
#       \',         '7 7)    )
#        \/         \|  \'  / `-._
#                   ||    .'
#                    \\  (
#                     >\  >
#                 ,.-' >.'
#                <.'_.''
#                  <'
#
# SEO wizards welcome - if you found this, you're the kind of curious we love.

# Content Signals declare our preferences for how this content may be used once accessed:
#   search    - building a search index and returning links or short excerpts
#   ai-input  - feeding content into an AI model at query time (RAG, grounding, AI answers)
#   ai-train  - training or fine-tuning an AI model
# "yes" states a permitted use, "no" states an objected-to use. See https://contentsignals.org

User-agent: *
Content-Signal: search=yes, ai-input=yes, ai-train=no
Disallow: /*?*clid=
Disallow: /*?*_ga=
Disallow: /*?e=
Disallow: /*?j=
Disallow: /*?b=
Disallow: /*?m=
Disallow: /*?detail/
Disallow: /*?items/
Disallow: /*?page_id=
Disallow: /*?col=
Disallow: /*?id=*&brand=
Disallow: /*?_bdsid=
Disallow: /*?_bd_prev_page=
Disallow: */_nuxt/*
Disallow: */tag/*
Disallow: /cart-hosting/*
Disallow: /api-proxy/
Disallow: /cdn-cgi/
Disallow: /cake/
Disallow: /domain-name-results
Disallow: /special/000webhost
Disallow: /special/webhost
Disallow: /ae/special/000webhost
Disallow: /ae/special/webhost
Disallow: /ar/special/000webhost
Disallow: /ar/special/webhost
Disallow: /ar/especial/000webhost
Disallow: /at/special/000webhost
Disallow: /at/special/webhost
Disallow: /at/spezial/000webhost
Disallow: /au/special/000webhost
Disallow: /au/special/webhost
Disallow: /bd/special/000webhost
Disallow: /bd/special/webhost
Disallow: /be-nl/special/000webhost
Disallow: /be-nl/special/webhost
Disallow: /be-fr/special/000webhost
Disallow: /be-fr/special/webhost
Disallow: /be-fr/speciales/000webhost
Disallow: /br/special/000webhost
Disallow: /br/special/webhost
Disallow: /br/especial/000webhost
Disallow: /ca/special/000webhost
Disallow: /ca/special/webhost
Disallow: /ca-fr/special/000webhost
Disallow: /ca-fr/special/webhost
Disallow: /ca-fr/speciales/000webhost
Disallow: /ch-de/special/000webhost
Disallow: /ch-de/special/webhost
Disallow: /ch-de/spezial/000webhost
Disallow: /ch-fr/special/000webhost
Disallow: /ch-fr/special/webhost
Disallow: /ch-fr/speciales/000webhost
Disallow: /co/special/000webhost
Disallow: /co/special/webhost
Disallow: /co/especial/000webhost
Disallow: /hr/special/000webhost
Disallow: /hr/special/webhost
Disallow: /hr/posebna-ponuda/000webhost
Disallow: /hk/special/000webhost
Disallow: /hk/special/webhost
Disallow: /cz/special/000webhost
Disallow: /cz/special/webhost
Disallow: /de/special/000webhost
Disallow: /de/special/webhost
Disallow: /de/spezial/000webhost
Disallow: /dk/special/000webhost
Disallow: /dk/special/webhost
Disallow: /ee/special/000webhost
Disallow: /ee/special/webhost
Disallow: /eg/special/000webhost
Disallow: /eg/special/webhost
Disallow: /es/special/000webhost
Disallow: /es/special/webhost
Disallow: /es/especial/000webhost
Disallow: /fi/special/000webhost
Disallow: /fi/special/webhost
Disallow: /fr/special/000webhost
Disallow: /fr/special/webhost
Disallow: /fr/speciales/000webhost
Disallow: /gr/special/000webhost
Disallow: /gr/special/webhost
Disallow: /hu/special/000webhost
Disallow: /hu/special/webhost
Disallow: /hu/specialis/000webhost
Disallow: /id/special/000webhost
Disallow: /id/special/webhost
Disallow: /il/special/000webhost
Disallow: /il/special/webhost
Disallow: /in/special/000webhost
Disallow: /in/special/webhost
Disallow: /in-hi/special/000webhost
Disallow: /in-hi/special/webhost
Disallow: /it/special/000webhost
Disallow: /it/special/webhost
Disallow: /jp/special/000webhost
Disallow: /jp/special/webhost
Disallow: /kr/special/000webhost
Disallow: /kr/special/webhost
Disallow: /lt/special/000webhost
Disallow: /lt/special/webhost
Disallow: /lv/special/000webhost
Disallow: /lv/special/webhost
Disallow: /lv/ipasi/000webhost
Disallow: /ma/special/000webhost
Disallow: /ma/special/webhost
Disallow: /ma-fr/special/000webhost
Disallow: /ma-fr/special/webhost
Disallow: /ma-fr/speciales/000webhost
Disallow: /mx/special/000webhost
Disallow: /mx/special/webhost
Disallow: /my/special/000webhost
Disallow: /my/special/webhost
Disallow: /ng/special/000webhost
Disallow: /ng/special/webhost
Disallow: /nl/special/000webhost
Disallow: /nl/special/webhost
Disallow: /no/special/000webhost
Disallow: /no/special/webhost
Disallow: /no/spesial/000webhost
Disallow: /pk/special/000webhost
Disallow: /pk/special/webhost
Disallow: /ph/special/000webhost
Disallow: /ph/special/webhost
Disallow: /pl/special/000webhost
Disallow: /pl/special/webhost
Disallow: /pt/special/000webhost
Disallow: /pt/special/webhost
Disallow: /pt/especial/000webhost
Disallow: /ro/special/000webhost
Disallow: /ro/special/webhost
Disallow: /se/special/000webhost
Disallow: /se/special/webhost
Disallow: /sk/special/000webhost
Disallow: /sk/special/webhost
Disallow: /th/special/000webhost
Disallow: /th/special/webhost
Disallow: /tr/special/000webhost
Disallow: /tr/special/webhost
Disallow: /tr/ozellik/000webhost
Disallow: /ua/special/000webhost
Disallow: /ua/special/webhost
Disallow: /ua/osobennyj/000webhost
Disallow: /uk/special/000webhost
Disallow: /uk/special/webhost
Disallow: /vn/special/000webhost
Disallow: /vn/special/webhost
Disallow: /vn/dac-biet/000webhost
Disallow: /ai-builder/1
Disallow: /ae/ai-builder/1
Disallow: /ar/ai-builder/1
Disallow: /at/ai-builder/1
Disallow: /au/ai-builder/1
Disallow: /bd/ai-builder/1
Disallow: /be-nl/ai-builder/1
Disallow: /be-fr/ai-builder/1
Disallow: /br/ai-builder/1
Disallow: /ca/ai-builder/1
Disallow: /ca-fr/ai-builder/1
Disallow: /ch-de/ai-builder/1
Disallow: /ch-fr/ai-builder/1
Disallow: /co/ai-builder/1
Disallow: /hr/ai-builder/1
Disallow: /hk/ai-builder/1
Disallow: /cz/ai-builder/1
Disallow: /de/ai-builder/1
Disallow: /dk/ai-builder/1
Disallow: /ee/ai-builder/1
Disallow: /eg/ai-builder/1
Disallow: /es/ai-builder/1
Disallow: /fi/ai-builder/1
Disallow: /fr/ai-builder/1
Disallow: /gr/ai-builder/1
Disallow: /hu/ai-builder/1
Disallow: /id/ai-builder/1
Disallow: /il/ai-builder/1
Disallow: /in/ai-builder/1
Disallow: /in-hi/ai-builder/1
Disallow: /it/ai-builder/1
Disallow: /jp/ai-builder/1
Disallow: /kr/ai-builder/1
Disallow: /lt/ai-builder/1
Disallow: /lv/ai-builder/1
Disallow: /ma/ai-builder/1
Disallow: /ma-fr/ai-builder/1
Disallow: /mx/ai-builder/1
Disallow: /my/ai-builder/1
Disallow: /ng/ai-builder/1
Disallow: /nl/ai-builder/1
Disallow: /no/ai-builder/1
Disallow: /pk/ai-builder/1
Disallow: /ph/ai-builder/1
Disallow: /pl/ai-builder/1
Disallow: /pt/ai-builder/1
Disallow: /ro/ai-builder/1
Disallow: /se/ai-builder/1
Disallow: /sk/ai-builder/1
Disallow: /th/ai-builder/1
Disallow: /tr/ai-builder/1
Disallow: /ua/ai-builder/1
Disallow: /uk/ai-builder/1
Disallow: /vn/ai-builder/1
Disallow: /1

Disallow: /tutorials/*_ga
Disallow: /tutorials/search/*
Disallow: /tutorials/?s=*
Disallow: /blog/*_ga
Sitemap: https://www.hostinger.com/sitemap.xml
Sitemap: https://www.hostinger.com/tutorials/sitemap_index.xml
Sitemap: https://www.hostinger.com/blog/sitemap_index.xml
Sitemap: https://www.hostinger.com/support/sitemap_index.xml
Sitemap: https://www.hostinger.com/sitemap_index.xml

Disallow: /ae/tutorials/*_ga
Disallow: /ae/tutorials/search/*
Disallow: /ae/tutorials/?s=*
Sitemap: https://www.hostinger.com/ae/sitemap.xml
Sitemap: https://www.hostinger.com/ae/tutorials/sitemap_index.xml

Disallow: /ar/tutoriales/*_ga
Disallow: /ar/tutoriales/search/*
Disallow: /ar/tutoriales/?s=*
Sitemap: https://www.hostinger.com/ar/sitemap.xml
Sitemap: https://www.hostinger.com/ar/tutoriales/sitemap_index.xml

Sitemap: https://www.hostinger.com/at/sitemap.xml

Disallow: /au/tutorials/*_ga
Disallow: /au/tutorials/search/*
Disallow: /au/tutorials/?s=*
Sitemap: https://www.hostinger.com/au/sitemap.xml
Sitemap: https://www.hostinger.com/au/tutorials/sitemap_index.xml
Sitemap: https://www.hostinger.com/au/support/sitemap_index.xml

Sitemap: https://www.hostinger.com/bd/sitemap.xml

Sitemap: https://www.hostinger.com/be-nl/sitemap.xml

Sitemap: https://www.hostinger.com/be-fr/sitemap.xml

Disallow: /br/tutoriais/*_ga
Disallow: /br/tutoriais/search/*
Disallow: /br/tutoriais/?s=*
Sitemap: https://www.hostinger.com/br/sitemap.xml
Sitemap: https://www.hostinger.com/br/tutoriais/sitemap_index.xml
Sitemap: https://www.hostinger.com/br/support/sitemap_index.xml

Disallow: /ca/tutorials/*_ga
Disallow: /ca/tutorials/search/*
Disallow: /ca/tutorials/?s=*
Sitemap: https://www.hostinger.com/ca/sitemap.xml
Sitemap: https://www.hostinger.com/ca/tutorials/sitemap_index.xml
Sitemap: https://www.hostinger.com/ca/support/sitemap_index.xml

Disallow: /ca-fr/tutoriels/*_ga
Disallow: /ca-fr/tutoriels/search/*
Disallow: /ca-fr/tutoriels/?s=*
Sitemap: https://www.hostinger.com/ca-fr/sitemap.xml
Sitemap: https://www.hostinger.com/ca-fr/tutoriels/sitemap_index.xml
Sitemap: https://www.hostinger.com/ca-fr/support/sitemap_index.xml

Sitemap: https://www.hostinger.com/ch-de/sitemap.xml

Sitemap: https://www.hostinger.com/ch-fr/sitemap.xml

Disallow: /co/tutoriales/*_ga
Disallow: /co/tutoriales/search/*
Disallow: /co/tutoriales/?s=*
Sitemap: https://www.hostinger.com/co/sitemap.xml
Sitemap: https://www.hostinger.com/co/tutoriales/sitemap_index.xml

Sitemap: https://www.hostinger.com/hr/sitemap.xml

Sitemap: https://www.hostinger.com/hk/sitemap.xml

Sitemap: https://www.hostinger.com/cz/sitemap.xml

Disallow: /de/tutorials/*_ga
Disallow: /de/tutorials/search/*
Disallow: /de/tutorials/?s=*
Sitemap: https://www.hostinger.com/de/sitemap.xml
Sitemap: https://www.hostinger.com/de/tutorials/sitemap_index.xml

Sitemap: https://www.hostinger.com/dk/sitemap.xml

Sitemap: https://www.hostinger.com/ee/sitemap.xml

Disallow: /eg/tutorials/*_ga
Disallow: /eg/tutorials/search/*
Disallow: /eg/tutorials/?s=*
Sitemap: https://www.hostinger.com/eg/sitemap.xml
Sitemap: https://www.hostinger.com/eg/tutorials/sitemap_index.xml

Disallow: /es/tutoriales/*_ga
Disallow: /es/tutoriales/search/*
Disallow: /es/tutoriales/?s=*
Sitemap: https://www.hostinger.com/es/sitemap.xml
Sitemap: https://www.hostinger.com/es/tutoriales/sitemap_index.xml
Sitemap: https://www.hostinger.com/es/support/sitemap_index.xml

Sitemap: https://www.hostinger.com/fi/sitemap.xml

Disallow: /fr/tutoriels/*_ga
Disallow: /fr/tutoriels/search/*
Disallow: /fr/tutoriels/?s=*
Sitemap: https://www.hostinger.com/fr/sitemap.xml
Sitemap: https://www.hostinger.com/fr/tutoriels/sitemap_index.xml
Sitemap: https://www.hostinger.com/fr/support/sitemap_index.xml

Sitemap: https://www.hostinger.com/gr/sitemap.xml

Sitemap: https://www.hostinger.com/hu/sitemap.xml

Disallow: /id/tutorial/*_ga
Disallow: /id/tutorial/search/*
Disallow: /id/tutorial/?s=*
Sitemap: https://www.hostinger.com/id/sitemap.xml
Sitemap: https://www.hostinger.com/id/tutorial/sitemap_index.xml
Sitemap: https://www.hostinger.com/id/support/sitemap_index.xml

Sitemap: https://www.hostinger.com/il/sitemap.xml

Disallow: /in/tutorials/*_ga
Disallow: /in/tutorials/search/*
Disallow: /in/tutorials/?s=*
Sitemap: https://www.hostinger.com/in/sitemap.xml
Sitemap: https://www.hostinger.com/in/tutorials/sitemap_index.xml

Disallow: /in-hi/tutorials/*_ga
Disallow: /in-hi/tutorials/search/*
Disallow: /in-hi/tutorials/?s=*
Sitemap: https://www.hostinger.com/in-hi/sitemap.xml
Sitemap: https://www.hostinger.com/in-hi/tutorials/sitemap_index.xml

Disallow: /it/tutorial/*_ga
Disallow: /it/tutorial/search/*
Disallow: /it/tutorial/?s=*
Sitemap: https://www.hostinger.com/it/sitemap.xml
Sitemap: https://www.hostinger.com/it/tutorial/sitemap_index.xml

Sitemap: https://www.hostinger.com/jp/sitemap.xml

Disallow: /kr/tutorials/*_ga
Disallow: /kr/tutorials/search/*
Disallow: /kr/tutorials/?s=*
Sitemap: https://www.hostinger.com/kr/sitemap.xml
Sitemap: https://www.hostinger.com/kr/tutorials/sitemap_index.xml

Sitemap: https://www.hostinger.com/lt/sitemap.xml
Sitemap: https://www.hostinger.com/lt/support/sitemap_index.xml

Sitemap: https://www.hostinger.com/lv/sitemap.xml

Sitemap: https://www.hostinger.com/ma/sitemap.xml

Sitemap: https://www.hostinger.com/ma-fr/sitemap.xml

Disallow: /mx/tutoriales/*_ga
Disallow: /mx/tutoriales/search/*
Disallow: /mx/tutoriales/?s=*
Sitemap: https://www.hostinger.com/mx/sitemap.xml
Sitemap: https://www.hostinger.com/mx/tutoriales/sitemap_index.xml

Disallow: /my/tutorials/*_ga
Disallow: /my/tutorials/search/*
Disallow: /my/tutorials/?s=*
Sitemap: https://www.hostinger.com/my/sitemap.xml
Sitemap: https://www.hostinger.com/my/tutorials/sitemap_index.xml

Sitemap: https://www.hostinger.com/ng/sitemap.xml

Sitemap: https://www.hostinger.com/nl/sitemap.xml

Sitemap: https://www.hostinger.com/no/sitemap.xml

Sitemap: https://www.hostinger.com/pk/sitemap.xml

Disallow: /ph/tutorials/*_ga
Disallow: /ph/tutorials/search/*
Disallow: /ph/tutorials/?s=*
Sitemap: https://www.hostinger.com/ph/sitemap.xml
Sitemap: https://www.hostinger.com/ph/tutorials/sitemap_index.xml

Sitemap: https://www.hostinger.com/pl/sitemap.xml

Disallow: /pt/tutoriais/*_ga
Disallow: /pt/tutoriais/search/*
Disallow: /pt/tutoriais/?s=*
Sitemap: https://www.hostinger.com/pt/sitemap.xml
Sitemap: https://www.hostinger.com/pt/tutoriais/sitemap_index.xml

Sitemap: https://www.hostinger.com/ro/sitemap.xml

Sitemap: https://www.hostinger.com/se/sitemap.xml

Sitemap: https://www.hostinger.com/sk/sitemap.xml

Sitemap: https://www.hostinger.com/th/sitemap.xml

Sitemap: https://www.hostinger.com/tr/sitemap.xml

Sitemap: https://www.hostinger.com/ua/sitemap.xml
Sitemap: https://www.hostinger.com/ua/support/sitemap_index.xml

Disallow: /uk/tutorials/*_ga
Disallow: /uk/tutorials/search/*
Disallow: /uk/tutorials/?s=*
Sitemap: https://www.hostinger.com/uk/sitemap.xml
Sitemap: https://www.hostinger.com/uk/tutorials/sitemap_index.xml

Sitemap: https://www.hostinger.com/vn/sitemap.xml

# AI crawlers we welcome indexing and citation
User-agent: GPTBot
User-agent: OAI-SearchBot
User-agent: ChatGPT-User
User-agent: ClaudeBot
User-agent: Claude-SearchBot
User-agent: Claude-User
User-agent: Google-Extended
User-agent: Gemini-Fetch
User-agent: Google-NotebookLM
User-agent: Google-CloudVertexBot
User-agent: PerplexityBot
User-agent: Perplexity-User
User-agent: Meta-ExternalAgent
User-agent: Meta-ExternalFetcher
User-agent: DuckAssistBot
User-agent: YouBot
User-agent: DeepSeek
User-agent: MistralAI-User
Content-Signal: search=yes, ai-input=yes, ai-train=no
Allow: /
Disallow: /*?*clid=
Disallow: /*?*_ga=
Disallow: /*?e=
Disallow: /*?j=
Disallow: /*?b=
Disallow: /*?m=
Disallow: /*?detail/
Disallow: /*?items/
Disallow: /*?page_id=
Disallow: /*?col=
Disallow: /*?id=*&brand=
Disallow: /*?_bdsid=
Disallow: /*?_bd_prev_page=
Disallow: */_nuxt/*
Disallow: */tag/*
Disallow: /cart-hosting/*
Disallow: /api-proxy/
Disallow: /cdn-cgi/
Disallow: /cake/
Disallow: /domain-name-results
Disallow: /special/000webhost
Disallow: /special/webhost
Disallow: /ae/special/000webhost
Disallow: /ae/special/webhost
Disallow: /ar/special/000webhost
Disallow: /ar/special/webhost
Disallow: /ar/especial/000webhost
Disallow: /at/special/000webhost
Disallow: /at/special/webhost
Disallow: /at/spezial/000webhost
Disallow: /au/special/000webhost
Disallow: /au/special/webhost
Disallow: /bd/special/000webhost
Disallow: /bd/special/webhost
Disallow: /be-nl/special/000webhost
Disallow: /be-nl/special/webhost
Disallow: /be-fr/special/000webhost
Disallow: /be-fr/special/webhost
Disallow: /be-fr/speciales/000webhost
Disallow: /br/special/000webhost
Disallow: /br/special/webhost
Disallow: /br/especial/000webhost
Disallow: /ca/special/000webhost
Disallow: /ca/special/webhost
Disallow: /ca-fr/special/000webhost
Disallow: /ca-fr/special/webhost
Disallow: /ca-fr/speciales/000webhost
Disallow: /ch-de/special/000webhost
Disallow: /ch-de/special/webhost
Disallow: /ch-de/spezial/000webhost
Disallow: /ch-fr/special/000webhost
Disallow: /ch-fr/special/webhost
Disallow: /ch-fr/speciales/000webhost
Disallow: /co/special/000webhost
Disallow: /co/special/webhost
Disallow: /co/especial/000webhost
Disallow: /hr/special/000webhost
Disallow: /hr/special/webhost
Disallow: /hr/posebna-ponuda/000webhost
Disallow: /hk/special/000webhost
Disallow: /hk/special/webhost
Disallow: /cz/special/000webhost
Disallow: /cz/special/webhost
Disallow: /de/special/000webhost
Disallow: /de/special/webhost
Disallow: /de/spezial/000webhost
Disallow: /dk/special/000webhost
Disallow: /dk/special/webhost
Disallow: /ee/special/000webhost
Disallow: /ee/special/webhost
Disallow: /eg/special/000webhost
Disallow: /eg/special/webhost
Disallow: /es/special/000webhost
Disallow: /es/special/webhost
Disallow: /es/especial/000webhost
Disallow: /fi/special/000webhost
Disallow: /fi/special/webhost
Disallow: /fr/special/000webhost
Disallow: /fr/special/webhost
Disallow: /fr/speciales/000webhost
Disallow: /gr/special/000webhost
Disallow: /gr/special/webhost
Disallow: /hu/special/000webhost
Disallow: /hu/special/webhost
Disallow: /hu/specialis/000webhost
Disallow: /id/special/000webhost
Disallow: /id/special/webhost
Disallow: /il/special/000webhost
Disallow: /il/special/webhost
Disallow: /in/special/000webhost
Disallow: /in/special/webhost
Disallow: /in-hi/special/000webhost
Disallow: /in-hi/special/webhost
Disallow: /it/special/000webhost
Disallow: /it/special/webhost
Disallow: /jp/special/000webhost
Disallow: /jp/special/webhost
Disallow: /kr/special/000webhost
Disallow: /kr/special/webhost
Disallow: /lt/special/000webhost
Disallow: /lt/special/webhost
Disallow: /lv/special/000webhost
Disallow: /lv/special/webhost
Disallow: /lv/ipasi/000webhost
Disallow: /ma/special/000webhost
Disallow: /ma/special/webhost
Disallow: /ma-fr/special/000webhost
Disallow: /ma-fr/special/webhost
Disallow: /ma-fr/speciales/000webhost
Disallow: /mx/special/000webhost
Disallow: /mx/special/webhost
Disallow: /my/special/000webhost
Disallow: /my/special/webhost
Disallow: /ng/special/000webhost
Disallow: /ng/special/webhost
Disallow: /nl/special/000webhost
Disallow: /nl/special/webhost
Disallow: /no/special/000webhost
Disallow: /no/special/webhost
Disallow: /no/spesial/000webhost
Disallow: /pk/special/000webhost
Disallow: /pk/special/webhost
Disallow: /ph/special/000webhost
Disallow: /ph/special/webhost
Disallow: /pl/special/000webhost
Disallow: /pl/special/webhost
Disallow: /pt/special/000webhost
Disallow: /pt/special/webhost
Disallow: /pt/especial/000webhost
Disallow: /ro/special/000webhost
Disallow: /ro/special/webhost
Disallow: /se/special/000webhost
Disallow: /se/special/webhost
Disallow: /sk/special/000webhost
Disallow: /sk/special/webhost
Disallow: /th/special/000webhost
Disallow: /th/special/webhost
Disallow: /tr/special/000webhost
Disallow: /tr/special/webhost
Disallow: /tr/ozellik/000webhost
Disallow: /ua/special/000webhost
Disallow: /ua/special/webhost
Disallow: /ua/osobennyj/000webhost
Disallow: /uk/special/000webhost
Disallow: /uk/special/webhost
Disallow: /vn/special/000webhost
Disallow: /vn/special/webhost
Disallow: /vn/dac-biet/000webhost
Disallow: /ai-builder/1
Disallow: /ae/ai-builder/1
Disallow: /ar/ai-builder/1
Disallow: /at/ai-builder/1
Disallow: /au/ai-builder/1
Disallow: /bd/ai-builder/1
Disallow: /be-nl/ai-builder/1
Disallow: /be-fr/ai-builder/1
Disallow: /br/ai-builder/1
Disallow: /ca/ai-builder/1
Disallow: /ca-fr/ai-builder/1
Disallow: /ch-de/ai-builder/1
Disallow: /ch-fr/ai-builder/1
Disallow: /co/ai-builder/1
Disallow: /hr/ai-builder/1
Disallow: /hk/ai-builder/1
Disallow: /cz/ai-builder/1
Disallow: /de/ai-builder/1
Disallow: /dk/ai-builder/1
Disallow: /ee/ai-builder/1
Disallow: /eg/ai-builder/1
Disallow: /es/ai-builder/1
Disallow: /fi/ai-builder/1
Disallow: /fr/ai-builder/1
Disallow: /gr/ai-builder/1
Disallow: /hu/ai-builder/1
Disallow: /id/ai-builder/1
Disallow: /il/ai-builder/1
Disallow: /in/ai-builder/1
Disallow: /in-hi/ai-builder/1
Disallow: /it/ai-builder/1
Disallow: /jp/ai-builder/1
Disallow: /kr/ai-builder/1
Disallow: /lt/ai-builder/1
Disallow: /lv/ai-builder/1
Disallow: /ma/ai-builder/1
Disallow: /ma-fr/ai-builder/1
Disallow: /mx/ai-builder/1
Disallow: /my/ai-builder/1
Disallow: /ng/ai-builder/1
Disallow: /nl/ai-builder/1
Disallow: /no/ai-builder/1
Disallow: /pk/ai-builder/1
Disallow: /ph/ai-builder/1
Disallow: /pl/ai-builder/1
Disallow: /pt/ai-builder/1
Disallow: /ro/ai-builder/1
Disallow: /se/ai-builder/1
Disallow: /sk/ai-builder/1
Disallow: /th/ai-builder/1
Disallow: /tr/ai-builder/1
Disallow: /ua/ai-builder/1
Disallow: /uk/ai-builder/1
Disallow: /vn/ai-builder/1
Disallow: /1


# Crawlers that only collect content for model training
User-agent: CCBot
Disallow: /

User-agent: ByteSpider
Disallow: /

Agentmap: https://www.hostinger.com/.well-known/ai-catalog.json
EntityMap: https://www.hostinger.com/entitymap.json
