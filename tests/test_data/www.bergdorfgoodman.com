# Updated 1-14-2019

User-agent: *
Disallow: /page/assistance/prodPopUpShipping.jsp
Disallow: /product/productImagesPopup.jsp
Disallow: /common/swf/ZoomEmbed/
Disallow: /search.jsp
Disallow: /staging
Disallow: /*staging*/
Disallow: /*Staging*/
Disallow: *.jhtml
Disallow: /service/sweepstakesRegEmail.jsp
Disallow: /account/

Sitemap: https://www.bergdorfgoodman.com/sitemap.xml