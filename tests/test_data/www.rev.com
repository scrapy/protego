Sitemap: https://www.rev.com/sitemap.xml
Sitemap: https://www.rev.com/blog/sitemap.xml

User-agent: *
Disallow: /transcription/integrations
Disallow: /transcription/integrations/s3
Disallow: /transcription/integrations/googledrive
Disallow: /transcription/integrations/dropbox
Disallow: /caption/integrations
Disallow: /caption/integrations/s3
Disallow: /caption/integrations/googledrive
Disallow: /caption/integrations/dropbox
Disallow: /captions-editor/
Noindex: /captions-editor/
Disallow: /interactivetranscript
Disallow: /invoicing-form
Disallow: /transcription/rush-delivery/how-it-works
Disallow: /transcription/rush-delivery/faq
Disallow: /blog/wp-content/plugins/
Disallow: /blog/wp-admin/

User-agent: Mediapartners-Google
Disallow:
