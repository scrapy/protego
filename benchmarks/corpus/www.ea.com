User-agent: *
Disallow: /results
Disallow: /games/the-sims/the-sims-4/home/
Disallow: /games/the-sims/the-sims-4/store-public-api/
Disallow: /games/the-sims/the-sims-4/store-pages/loginredirect
Disallow: /games/the-sims/the-sims-4/store-pages/logoutredirect
Disallow: /games/the-sims/the-sims-4/store-pages/paymentredirect
Disallow: /*/games/the-sims/the-sims-4/home/
Disallow: /*/games/the-sims/the-sims-4/store-public-api/
Disallow: /*/games/the-sims/the-sims-4/store-pages/loginredirect
Disallow: /*/games/the-sims/the-sims-4/store-pages/logoutredirect
Disallow: /*/games/the-sims/the-sims-4/store-pages/paymentredirect
Sitemap: https://www.ea.com/sitemap.xml

# --- BLOCKED BOTS ---
User-agent: AI2Bot
Disallow: /

User-agent: Bytespider
Disallow: /

User-agent: FriendlyCrawler
Disallow: /

User-agent: ICC-Crawler
Disallow: /

User-agent: cohere-ai
Disallow: /

User-agent: cohere-training-data-crawler
Disallow: /

User-agent: Meta-ExternalAgent
Disallow: /
#Electronic Arts Inc. and its affiliated companies explicitly reserve all their rights in any content made available, including on websites, social media pages and any other platforms. Electronic Arts content includes without limitation, video games, visual displays of video games, characters, brands, artworks, images, videos, music, dialogue, story, and any Electronic Arts works or data.  Any use of such content for the development, training, programming, improvement and/or enhancement of artificial intelligence (including, but not limited to, generative AI systems), web scraping, machine learning, or any form of text or data mining, is prohibited, unless specifically and explicitly authorized in writing by Electronic Arts.

#This statement is a reservation of rights with respect to text and data mining under Article 4 (3) of Directive (EU) 2019/790 and any analogous statutes worldwide.
