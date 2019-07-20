User-agent: *
Allow:    /$
Allow:    /mail/$
Allow:    /mail/x/$
Allow:    /mail/help/
Allow:    /intl/*/mail/$
Allow:    /intl/*/mail/help/
Disallow: /

Sitemap: https://www.google.com/gmail/sitemap.xml

