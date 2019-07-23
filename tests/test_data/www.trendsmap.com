User-agent: Twitterbot
Allow: /

User-agent: AhrefsBot
Disallow: /

User-agent: Vegi
Disallow: /

User-agent: Vegi bot
Disallow: /

User-agent: newspaper
Disallow: /

User-agent: Google-HTTP-Java-Client
Disallow: /

User-agent: something
Disallow: /

User-agent: python-requests
Disallow: /

User-agent: python
Disallow: /

User-agent: Python-urllib
Disallow: /

User-agent: Ruby
Disallow: /

User-agent: ruby
Disallow: /

User-agent: curl
Disallow: /

User-agent: wget
Disallow: /

User-agent: Wget
Disallow: /

User-agent: Go-http-client
Disallow: /

User-agent: GozaikBot
Disallow: /

User-agent: Java
Disallow: /

User-agent: Jakarta
Disallow: /

User-agent: postano
Disallow: /

User-agent: jack
Disallow: /

User-agent: Mediatoolkitbot
Disallow: /

User-agent: Apache-HttpClient
Disallow: /

User-agent: dotbot
Disallow: /

User-agent: Googlebot-Image
Disallow: /tdata
Disallow: /ipu
Disallow: /ipx

User-agent: *
Disallow: /account
Disallow: /analytics
Disallow: /alerts
Disallow: /vis
Disallow: /auth
Disallow: /admin
Disallow: /localx
Disallow: /al
Disallow: /paypal
Disallow: /api
Disallow: /misc
Disallow: /iad
Disallow: /sentiment/melbourne
Disallow: /megamaker

User-agent: Slurp
Crawl-delay: 1
