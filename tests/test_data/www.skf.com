User-agent: *

Disallow: /*/myskf.app
Disallow: /*/to-be-deleted/
Disallow: /*/overlay-panels/
Disallow: /*/authorized-general/
Disallow: /*/authorised-general/
Disallow: /*/certified-rebuilder/
Disallow: /files/*.pdf$
Disallow: /*.jsp$
Disallow: /*.jsp?
Disallow: /eu/
Disallow: /nam/
Disallow: /group/test/
Disallow: /*/windcustomers/
Disallow: /*/simproexpert/
Disallow: /*/nestle/
Disallow: /*/simproquick/
Disallow: /*/staging-only/

Sitemap: https://www.skf.com/sitemap_index.xml

Host: www.skf.com