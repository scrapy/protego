Sitemap: https://www.accountingcoach.com/google-search-hub.xml 

User-agent: * 
Disallow: /CheatSheet.pdf 
Disallow: /direct-download.php?file=/wp-content/uploads/pdf/AccountingCheatSheet.pdf 
Disallow: /wp-content/uploads/pdf/AccountingCheatSheet.pdf
Disallow: /pro-cert-discount

Disallow: /wp-admin/ 
Allow: /wp-admin/admin-ajax.php