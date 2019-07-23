# Hi there! Since you are here, we assume you are either a bot or a geek. In either case, drop us an email at [careers@ixigo.com]. We would love to have a conversation with you ;)

User-agent: *

Disallow: /search/result/flight
Disallow: /search/result/hotel
Disallow: /search/result/bus
Disallow: /search/result/deal
Disallow: /search/result/cabs
Disallow: /html/home.ixi
Disallow: /track/
Disallow: /crossselldeal
Disallow: /m/
Disallow: /action/content/
Disallow: /checkbox/
Disallow: /tp/
Disallow: /q/
Disallow: /ixigoer/
Disallow: /html/help/enabling-javascript.ixi
Disallow: /redirect.ixi
Disallow: /ask/
Disallow: /add-a-place/
Disallow: /review-edit/
Disallow: /ixi-api/tracker/track
Disallow: /api/flights/
Disallow: /api/
Disallow: /hotel/detail/
Disallow: /important-security-update/FAQ.html

User-agent: Bingbot
Crawl-Delay: 10

User-agent: MSNBot
Crawl-Delay: 10

User-agent: Yandex
Crawl-delay: 10

User-agent: Baiduspider
Disallow: /

#sitemaps
Sitemap: https://www.ixigo.com/sitemap/f-a2b-freq/index.xml
Sitemap: https://www.ixigo.com/sitemap/f-a2b-freq-schedule/index.xml
Sitemap: https://www.ixigo.com/sitemap/f-a2b-dom/index.xml
Sitemap: https://www.ixigo.com/sitemap/f-a2b-int-out/index.xml
Sitemap: https://www.ixigo.com/sitemap/f-a2b-int-in/index.xml
Sitemap: https://www.ixigo.com/sitemap/f-a2b-int-int/index.xml
Sitemap: https://www.ixigo.com/sitemap/f-a2b-by-airline/index.xml
Sitemap: https://www.ixigo.com/sitemap/f-to-b/index.xml
Sitemap: https://www.ixigo.com/sitemap/f-from-b/index.xml
Sitemap: https://www.ixigo.com/sitemap/f-airline/index.xml
Sitemap: https://www.ixigo.com/sitemap/f-airports/index.xml
Sitemap: https://www.ixigo.com/sitemap/f-static/index.xml
Sitemap: https://www.ixigo.com/sitemap/t-train/index.xml
Sitemap: https://www.ixigo.com/sitemap/t-station/index.xml
Sitemap: https://www.ixigo.com/sitemap/t-static/index.xml
Sitemap: https://www.ixigo.com/sitemap/t-train-running-status/index.xml
Sitemap: https://www.ixigo.com/sitemap/t-train-seat-availability/index.xml
Sitemap: https://www.ixigo.com/sitemap/b-a2b/index.xml
Sitemap: https://www.ixigo.com/sitemap/h-near-station/index.xml
Sitemap: https://www.ixigo.com/sitemap/h-near-airport/index.xml
Sitemap: https://www.ixigo.com/sitemap/hotel/index.xml
Sitemap: https://www.ixigo.com/sitemap/tp-a2b-freq/index.xml
Sitemap: https://www.ixigo.com/sitemap/tp-a2b-freq-flight/index.xml
Sitemap: https://www.ixigo.com/sitemap/tp-a2b-freq-train/index.xml
Sitemap: https://www.ixigo.com/sitemap/tp-a2b-other/index.xml
Sitemap: https://www.ixigo.com/sitemap/tp-a2b-other-flight/index.xml
Sitemap: https://www.ixigo.com/sitemap/tp-a2b-other-train/index.xml
Sitemap: https://www.ixigo.com/sitemap/tp-a2b-dom-int/index.xml
Sitemap: https://www.ixigo.com/sitemap/tp-a2b-dom-int-flight/index.xml
Sitemap: https://www.ixigo.com/sitemap/tp-a2b-int-int/index.xml
Sitemap: https://www.ixigo.com/sitemap/tp-a2b-int-int-flight/index.xml
Sitemap: https://www.ixigo.com/sitemap/tp-travel-guilde/index.xml
Sitemap: https://www.ixigo.com/sitemap/o-static/index.xml
Sitemap: https://www.ixigo.com/travel-stories/sitemap-news.xml
Sitemap: https://www.ixigo.com/travel-stories/travel_stories_sitemap.xml
Sitemap: https://www.ixigo.com/offers/sitemap.xml
