User-agent: *
Disallow: /cgi-bin/
Disallow: /cache/
Disallow: /uploader/
Disallow: /download.php
Disallow: /preview/

Allow: /uploader/*.js
Allow: /uploader/*.css

Sitemap: https://www.zamzar.com/sitemap.xml

#    ___                                          __ _ _
#   / __\ __ ___  ___   _   _  ___  _   _ _ __   / _(_) | ___  ___
#  / _\| '__/ _ \/ _ \ | | | |/ _ \| | | | '__| | |_| | |/ _ \/ __|
# / /  | | |  __/  __/ | |_| | (_) | |_| | |    |  _| | |  __/\__ \
# \/   |_|  \___|\___|  \__, |\___/ \__,_|_|    |_| |_|_|\___||___/
#                       |___/