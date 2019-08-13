User-agent: *

Allow: *.js
Allow: *.css

Disallow: *?faq=*

Disallow: /wp-admin/
Disallow: /sg/grab_portal/
Disallow: /sg/games/
Disallow: /sg/profile/
Disallow: /sg/grabPortal/
Disallow: /sg/fun/
Disallow: /sg/funpages/
Disallow: /sg/game_dir/
Disallow: /thank-you
Disallow: */page/*
Disallow: /grabpaymerchant/
 
Allow: /sg/wp-content/
Allow: /ph/wp-content/
Allow: /my/wp-content/
Allow: /id/wp-content/
Allow: /th/wp-content/
Allow: /vn/wp-content/
Allow: /mm/wp-content/
Allow: /wp-content/
Allow: /wp-includes/

#Sitemaps

Sitemap: https://www.grab.com/sg/sitemap.xml
Sitemap: https://www.grab.com/my/sitemap.xml
Sitemap: https://www.grab.com/ph/sitemap.xml
Sitemap: https://www.grab.com/id/sitemap.xml
Sitemap: https://www.grab.com/id/en/sitemap.xml
Sitemap: https://www.grab.com/th/sitemap.xml
Sitemap: https://www.grab.com/th/en/sitemap.xml
Sitemap: https://www.grab.com/vn/sitemap.xml
Sitemap: https://www.grab.com/vn/en/sitemap.xml
Sitemap: https://www.grab.com/mm/sitemap.xml
Sitemap: https://www.grab.com/mm/en/sitemap.xml


#Duplicated URLs

Disallow: /my/blog/driver/grabcar-economy-weekly-earning-structure-klang-valley-negeri-sembilan-
Disallow: /my/blog/driver/car/grabcar-economy-weekly-earning-structure-klang-valley-negeri-sembilan-
Disallow: /my/blog/driver/grabcar-economy-weekly-earning-structure-penang-
Disallow: /my/blog/driver/grabcar-economy-weekly-earning-structure-sandakan-
Disallow: /my/blog/driver/grabcar-economy-weekly-earning-structure-johor-bahru-
Disallow: /my/blog/driver/grabcar-economy-weekly-earning-structure-kota-kinabalu-
Disallow: /my/blog/driver/grabcar-economy-weekly-earning-structure-melaka-
Disallow: /my/blog/driver/struktur-pendapatan-mingguan-grabcar-economy-penang-
Disallow: /my/blog/driver/struktur-pendapatan-mingguan-grabcar-economy-johor-bahru-
Disallow: /my/blog/driver/struktur-pendapatan-mingguan-grabcar-economy-kota-kinabalu-
Disallow: /my/blog/driver/struktur-pendapatan-mingguan-grabcar-economy-melaka-
Disallow: /my/blog/driver/grabcar-economy-weekly-earning-structure-klang-valley-
Disallow: /my/blog/driver/grabcar-economy-weekly-earning-structure-klang-valley-2
Disallow: /my/blog/driver/grabcar-economy-weekly-earning-structure-klang-valley-3
Disallow: /my/blog/driver/grabcar-economy-weekly-earning-structure-klang-valley-6
Disallow: /my/blog/driver/grabcar-economy-weekly-earning-structure-klang-valley-9
Disallow: /my/blog/driver/grabcar-economy-weekly-earning-structure-klang-valley-negeri-sembilan-
Disallow: /my/blog/driver/grabcar-economy-weekly-earning-structure-kuching-
Disallow: /my/blog/driver/struktur-pendapatan-mingguan-grabcar-economy-klang-valley-negeri-sembilan-
Disallow: /my/blog/driver/struktur-pendapatan-mingguan-grabcar-economy-klang-valley-1
Disallow: /my/blog/driver/struktur-pendapatan-mingguan-grabcar-economy-klang-valley-2
Disallow: /my/blog/driver/grabcar-economy-weekly-earning-structure-ipoh-
Disallow: /my/blog/driver/car/struktur-pendapatan-mingguan-grabcar-economy-kuching-
Disallow: /my/blog/driver/grabcar-economy-weekly-earning-structure-kuantan-
Disallow: /my/blog/driver/struktur-pendapatan-mingguan-grabcar-economy-ipoh-
Disallow: /my/blog/driver/car/struktur-pendapatan-mingguan-grabcar-economy-penang-
Disallow: /my/blog/driver/struktur-pendapatan-mingguan-grabcar-economy-kuching-
Disallow: /my/blog/driver/struktur-pendapatan-mingguan-grabcar-economy-miri-
Disallow: /my/blog/driver/grabcar-economy-weekly-earning-structure-kota-bharu-
Disallow: /my/blog/driver/grabcar-economy-weekly-earning-structure-kuala-terengganu-
Disallow: /my/blog/driver/grabcar-economy-weekly-earning-structure-miri-
Disallow: /my/blog/driver/struktur-pendapatan-mingguan-grabcar-economy-kota-bharu-
Disallow: /my/blog/driver/struktur-pendapatan-mingguan-grabcar-economy-kuala-terengganu-
Disallow: /my/blog/driver/struktur-pendapatan-mingguan-grabcar-economy-langkawi-
Disallow: /my/blog/driver/grabcar-economy-weekly-earning-structure-langkawi-
Disallow: /my/blog/driver/grabcar-economy-weekly-earning-structure-batu-pahat-
Disallow: /my/blog/driver/grabcar-economy-weekly-earning-structure-sibu-
Disallow: /my/blog/driver/grabcar-economy-weekly-earning-structure-sungai-petani-
Disallow: /my/blog/driver/struktur-pendapatan-mingguan-grabcar-economy-batu-pahat-
Disallow: /my/blog/driver/struktur-pendapatan-mingguan-grabcar-economy-sandakan-
Disallow: /my/blog/driver/struktur-pendapatan-mingguan-grabcar-economy-sibu-
Disallow: /my/blog/driver/struktur-pendapatan-mingguan-grabcar-economy-sungai-petani-
Disallow: /my/blog/driver/grabcar-economy-weekly-earning-structure-alor-setar-
Disallow: /my/blog/driver/grabcar-economy-weekly-earning-structure-kluang-
Disallow: /my/blog/driver/grabcar-economy-weekly-earning-structure-labuan-
Disallow: /my/blog/driver/grabcar-economy-weekly-earning-structure-tawau-
Disallow: /my/blog/driver/struktur-pendapatan-mingguan-grabcar-economy-alor-setar-
Disallow: /my/blog/driver/struktur-pendapatan-mingguan-grabcar-economy-kluang-
Disallow: /my/blog/driver/struktur-pendapatan-mingguan-grabcar-economy-labuan-
Disallow: /my/blog/driver/struktur-pendapatan-mingguan-grabcar-economy-tawau-
Disallow: /my/blog/driver/grabcar-economy-weekly-earning-structure-bintulu-
Disallow: /my/blog/driver/grabcar-economy-weekly-earning-structure-kangar-
Disallow: /my/blog/driver/grabcar-economy-weekly-earning-structure-kemaman-
Disallow: /my/blog/driver/grabcar-economy-weekly-earning-structure-muar-
Disallow: /my/blog/driver/struktur-pendapatan-mingguan-grabcar-economy-bintulu-
Disallow: /my/blog/driver/struktur-pendapatan-mingguan-grabcar-economy-kangar-
Disallow: /my/blog/driver/struktur-pendapatan-mingguan-grabcar-economy-kemaman-
Disallow: /my/blog/driver/struktur-pendapatan-mingguan-grabcar-economy-muar-

