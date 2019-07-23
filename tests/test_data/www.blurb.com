# This file is served https://www.blurb.com/robots.txt

User-agent: DigExt
Disallow: /

User-agent: DTS Agent
Disallow: /

User-agent: Mozilla/4.0 (compatible; MSIE 5.0; Windows NT; DigExt; DTS Agent
Disallow: /

User-agent: The Knowledge AI
Disallow: /

User-agent: heritrix
Disallow: /

User-agent: heritrix/3.3.0
Disallow: /

User-agent: CRAZYWEBCRAWLER
Disallow: /

User-agent: metadataparser
Disallow: /

User-agent: seoscanners
Disallow: /

User-agent: SEOkicks-Robot
Disallow: /

User-agent: OpenLinkProfiler
Disallow: /

User-agent: MegaIndex
Disallow: /

User-agent: id-search
Disallow: /

User-agent: istellabot
Disallow: /
User-agent: centurybot9@gmail.com
Disallow: /

User-agent: ~crawler
Disallow: /

User-agent: test bot
Disallow: /

User-agent: ZumBot
Disallow: /

User-agent: Wotbox
Disallow: /

User-agent: YisouSpider
Disallow: /

User-agent: G-i-g-a-b-o-t
Disallow: /

User-agent: yacybot
Disallow: /

User-agent: s~snapchat-proxy
Disallow: /

User-agent: GnowitNewsbot
Disallow: /

User-agent: PaperLiBot
Disallow: /

User-agent: BUbiNG
Disallow: /

User-agent: Applebot
Disallow: /my/
Disallow: /admin/
Disallow: /status/
Disallow: /feeds/search*
Disallow: /bookstore/search*
Disallow: /*.swf$
Disallow: /bookshow/cache/
Disallow: /feeds/user*
Disallow: /ebooks/editor.html
Disallow: /ebooks/reader.html
Disallow: /ebook-creator/editor.html
Disallow: /node/*
Disallow: /bookstore/invited/*
Disallow: /distribution/*
Disallow: /search/*
Disallow: /user/
Noindex: /user/
Allow: /tags/*

User-agent: baiduspider
Disallow: /my/
Disallow: /admin/
Disallow: /status/
Disallow: /feeds/search*
Disallow: /bookstore/search*
Disallow: /*.swf$
Disallow: /bookshow/cache/
Disallow: /feeds/user*
Disallow: /ebooks/editor.html
Disallow: /ebooks/reader.html
Disallow: /ebook-creator/editor.html
Disallow: /node/*
Disallow: /bookstore/invited/*
Disallow: /distribution/*
Disallow: /search/*
Disallow: /user/
Noindex: /user/
Allow: /tags/*

User-agent: Bingbot
Disallow: /my/
Disallow: /admin/
Disallow: /status/
Disallow: /feeds/search*
Disallow: /bookstore/search*
Disallow: /*.swf$
Disallow: /bookshow/cache/
Disallow: /feeds/user*
Disallow: /ebooks/editor.html
Disallow: /ebooks/reader.html
Disallow: /ebook-creator/editor.html
Disallow: /node/*
Disallow: /bookstore/invited/*
Disallow: /distribution/*
Disallow: /search/*
Disallow: /user/
Noindex: /user/
Allow: /tags/*

User-agent: Googlebot
Disallow: /my/
Disallow: /admin/
Disallow: /status/
Disallow: /feeds/search*
Disallow: /bookstore/search*
Disallow: /*.swf$
Disallow: /bookshow/cache/
Disallow: /feeds/user*
Disallow: /ebooks/editor.html
Disallow: /ebooks/reader.html
Disallow: /ebook-creator/editor.html
Disallow: /node/*
Disallow: /bookstore/invited/*
Disallow: /distribution/*
Disallow: /search/*
Disallow: /user/
Noindex: /user/
Allow: /tags/*

User-agent: msnbot
Disallow: /my/
Disallow: /admin/
Disallow: /status/
Disallow: /feeds/search*
Disallow: /bookstore/search*
Disallow: /*.swf$
Disallow: /bookshow/cache/
Disallow: /feeds/user*
Disallow: /ebooks/editor.html
Disallow: /ebooks/reader.html
Disallow: /ebook-creator/editor.html
Disallow: /node/*
Disallow: /bookstore/invited/*
Disallow: /distribution/*
Disallow: /search/*
Disallow: /user/
Noindex: /user/
Allow: /tags/*

User-agent: Naverbot
Disallow: /my/
Disallow: /admin/
Disallow: /status/
Disallow: /feeds/search*
Disallow: /bookstore/search*
Disallow: /*.swf$
Disallow: /bookshow/cache/
Disallow: /feeds/user*
Disallow: /ebooks/editor.html
Disallow: /ebooks/reader.html
Disallow: /ebook-creator/editor.html
Disallow: /node/*
Disallow: /bookstore/invited/*
Disallow: /distribution/*
Disallow: /search/*
Disallow: /user/
Noindex: /user/
Allow: /tags/*

User-agent: Twitterbot
Disallow: /my/
Disallow: /admin/
Disallow: /status/
Disallow: /feeds/search*
Disallow: /bookstore/search*
Disallow: /*.swf$
Disallow: /bookshow/cache/
Disallow: /feeds/user*
Disallow: /ebooks/editor.html
Disallow: /ebooks/reader.html
Disallow: /ebook-creator/editor.html
Disallow: /node/*
Disallow: /bookstore/invited/*
Disallow: /user/
Noindex: /user/
Allow: /tags/*

User-agent: Yandex
Disallow: /my/
Disallow: /admin/
Disallow: /status/
Disallow: /feeds/search*
Disallow: /bookstore/search*
Disallow: /*.swf$
Disallow: /bookshow/cache/
Disallow: /feeds/user*
Disallow: /ebooks/editor.html
Disallow: /ebooks/reader.html
Disallow: /ebook-creator/editor.html
Disallow: /node/*
Disallow: /bookstore/invited/*
Disallow: /distribution/*
Disallow: /search/*
Disallow: /user/
Noindex: /user/
Allow: /tags/*

User-agent: Slurp
Disallow: /my/
Disallow: /admin/
Disallow: /status/
Disallow: /feeds/search*
Disallow: /bookstore/search*
Disallow: /*.swf$
Disallow: /bookshow/cache/
Disallow: /feeds/user*
Disallow: /ebooks/editor.html
Disallow: /ebooks/reader.html
Disallow: /ebook-creator/editor.html
Disallow: /node/*
Disallow: /bookstore/invited/*
Disallow: /distribution/*
Disallow: /search/*
Disallow: /user/
Noindex: /user/
Allow: /tags/*

User-agent: *
crawl-delay: 10
Disallow: /my/
Disallow: /admin/
Disallow: /status/
Disallow: /feeds/search*
Disallow: /bookstore/search*
Disallow: /*.swf$
Disallow: /bookshow/cache/
Disallow: /feeds/user*
Disallow: /ebooks/editor.html
Disallow: /ebooks/reader.html
Disallow: /ebook-creator/editor.html
Disallow: /node/*
Disallow: /bookstore/invited/*
Disallow: /distribution/*
Disallow: /search/*
Disallow: /user/
Noindex: /user/
