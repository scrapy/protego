
<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Google Tag Manager -->
    <script>
    (function (w, d, s, l, i) {
        w[l] = w[l] || []; w[l].push({
            'gtm.start':
                new Date().getTime(), event: 'gtm.js'
        }); var f = d.getElementsByTagName(s)[0],
            j = d.createElement(s), dl = l != 'dataLayer' ? '&l=' + l : ''; j.async = true; j.src =
                'https://www.googletagmanager.com/gtm.js?id=' + i + dl; f.parentNode.insertBefore(j, f);
        })(window, document, 'script', 'dataLayer', 'GTM-KJT5FH2');</script>
    <!-- End Google Tag Manager -->

    <title>ASP.NET | Open-source web framework for .NET</title>
    <meta name="description" content="Build web apps and services that run on Windows, Linux, and macOS using using C#, HTML, CSS, and JavaScript. Get started for free on Windows, Linux, or macOS." />

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <meta property="og:title" content="ASP.NET | Open-source web framework for .NET" />
    <meta property="og:description" content="Build web apps and services that run on Windows, Linux, and macOS using using C#, HTML, CSS, and JavaScript. Get started for free on Windows, Linux, or macOS." />
    <meta property="og:image" content="https://dotnet.microsoft.com/images/redesign/social/square.png" />
    <meta property="og:image:secure_url" content="https://dotnet.microsoft.com/images/redesign/social/square.png" />
    <meta property="og:type" content="website" />
    <meta property="og:site_name" content="Microsoft" />

    <meta name="twitter:card" content="summary_large_image">
    <meta name="twitter:site" content="@dotnet">
    <meta name="twitter:image" content="https://dotnet.microsoft.com/images/redesign/social/large.png" />

    <meta name="msvalidate.01" content="6FBA9892BF5F904A89B922361CDABCF8" />


    <link rel="stylesheet" href="https://www.microsoft.com/onerfstatics/marketingsites-wcus-prod/west-european/shell/_scrf/css/themes=default.device=uplevel_web_pc/9e-296fc0/7c-704055/7d-0d9a48/e6-497d60/22-2b463d/75-10a025/e1-3136cf/7c-6d2d0e?ver=2.0" type="text/css" media="all" /><link rel='stylesheet' href='https://statics-marketingsites-wcus-ms-com.akamaized.net/statics/override.css?c=7' type='text/css' /><link rel='stylesheet' href='https://c.s-microsoft.com/mscc/statics/mscc-0.4.1.min.css' type='text/css' />


    <link rel="stylesheet" href="/css/bootstrap-custom.min.css?v=nGfqPudxmWjyHoQ0zdxdSosiTJPl1MMka9685wuQIQA" />

    <link rel="canonical" href="https://dotnet.microsoft.com/apps/aspnet" />

    <script>

            function LoadAnalytics(loadGoogleOptimize)
            {
                (function (i, s, o, g, r, a, m) {
                    i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
                        (i[r].q = i[r].q || []).push(arguments)
                    }, i[r].l = 1 * new Date(); a = s.createElement(o),
                        m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
                })(window, document, 'script', 'https://www.google-analytics.com/analytics.js', 'ga');

                ga('create', 'UA-77834912-1', 'auto');
                if (loadGoogleOptimize) { ga('require', 'GTM-P5V43KZ'); }
                ga('send', 'pageview');

                var appInsights = window.appInsights || function (config) {
                    function i(config) { t[config] = function () { var i = arguments; t.queue.push(function () { t[config].apply(t, i) }) } } var t = { config: config }, u = document, e = window, o = "script", s = "AuthenticatedUserContext", h = "start", c = "stop", l = "Track", a = l + "Event", v = l + "Page", y = u.createElement(o), r, f; y.src = config.url || "https://az416426.vo.msecnd.net/scripts/a/ai.0.js"; u.getElementsByTagName(o)[0].parentNode.appendChild(y); try { t.cookie = u.cookie } catch (p) { } for (t.queue = [], t.version = "1.0", r = ["Event", "Exception", "Metric", "PageView", "Trace", "Dependency"]; r.length;)i("track" + r.pop()); return i("set" + s), i("clear" + s), i(h + a), i(c + a), i(h + v), i(c + v), i("flush"), config.disableExceptionTracking || (r = "onerror", i("_" + r), f = e[r], e[r] = function (config, i, u, e, o) { var s = f && f(config, i, u, e, o); return s !== !0 && t["_" + r](config, i, u, e, o), s }), t
                }({
                    instrumentationKey: '844b540f-d8fa-4a47-aabc-7116cc364ac1'
                });

                window.appInsights = appInsights;
                appInsights.trackPageView();
            }
    </script>
</head>
<body class='home'>
    <!-- Google Tag Manager (noscript) -->
    <noscript>
        <iframe src="https://www.googletagmanager.com/ns.html?id=GTM-KJT5FH2"
                height="0" width="0" style="display:none;visibility:hidden"></iframe>
    </noscript>
    <!-- End Google Tag Manager (noscript) -->

    <div id="uhf-header" class="sticky">
            <div id="headerArea" class="uhf"  data-m='{"cN":"headerArea","cT":"Area_coreuiArea","id":"a1Body","sN":1,"aN":"Body"}'>
                <div id="headerRegion"     data-region-key="headerregion" data-m='{"cN":"headerRegion","cT":"Region_coreui-region","id":"r1a1","sN":1,"aN":"a1"}' >

    <div  id="headerUniversalHeader" data-m='{"cN":"headerUniversalHeader","cT":"Module_coreui-universalheader","id":"m1r1a1","sN":1,"aN":"r1a1"}'  data-module-id="Category|headerRegion|coreui-region|headerUniversalHeader|coreui-universalheader">
        


		<div data-m='{"cN":"cookiebanner_cont","cT":"Container","id":"c1m1r1a1","sN":1,"aN":"m1r1a1"}'>

<div id="uhfCookieAlert">
    <div id='msccBanner' dir='ltr' data-site-name='Microsoft.OneRenderFramework.Core' data-mscc-version='0.4.1' data-nver='aspnet-3.1.3' data-sver='0.1.2' class='cc-banner' role='alert' aria-labelledby='msccMessage'><div class='cc-container'><svg class='cc-icon cc-v-center' x='0px' y='0px' viewBox='0 0 44 44' height='30px' fill='none' stroke='currentColor'><circle cx='22' cy='22' r='20' stroke-width='2'></circle><line x1='22' x2='22' y1='18' y2='33' stroke-width='3'></line><line x1='22' x2='22' y1='12' y2='15' stroke-width='3'></line></svg> <span id='msccMessage' class='cc-v-center cc-text' tabindex='0'>This site uses cookies for analytics, personalized content and ads. By continuing to browse this site, you agree to this use.</span> <a href='https://go.microsoft.com/fwlink/?linkid=845480' target='_top' aria-label='Learn more about Microsoft&#39;s Cookie Policy' id='msccLearnMore' class='cc-link cc-v-center cc-float-right' data-mscc-ic='false'>Learn more</a></div></div>
</div>

			
		</div>



		<a id="uhfSkipToMain" class="m-skip-to-main" href="#mainContent" tabindex="0" style="z-index:3000002" data-m='{"cN":"Skip to content_nonnav","id":"nn2m1r1a1","sN":2,"aN":"m1r1a1"}'>Skip to main content</a>


<header class="c-uhfh context-uhf no-js c-sgl-stck c-category-header " itemscope="itemscope" data-header-footprint="/MSNet/DotnetHeader, fromService: True"   data-magict="true"  itemtype="http://schema.org/Organization">
	<div class="theme-light js-global-head f-closed  global-head-cont" data-m='{"cN":"Universal Header_cont","cT":"Container","id":"c3m1r1a1","sN":3,"aN":"m1r1a1"}'>
		<div class="c-uhfh-gcontainer-st">
			<button type="button" class="c-action-trigger c-glyph glyph-global-nav-button" aria-label="All Microsoft expand to see list of Microsoft products and services" aria-expanded="false" data-m='{"cN":"Mobile menu button_nonnav","id":"nn1c3m1r1a1","sN":1,"aN":"c3m1r1a1"}'></button>
			<button type="button" class="c-action-trigger c-glyph glyph-arrow-htmllegacy" aria-expanded="false" data-m='{"cN":"Close Search_nonnav","id":"nn2c3m1r1a1","sN":2,"aN":"c3m1r1a1"}'></button>
					<a id="uhfLogo" class="c-logo c-sgl-stk-uhfLogo" itemprop="url" href="https://www.microsoft.com" aria-label="Microsoft" data-m='{"cN":"GlobalNav_Logo_cont","cT":"Container","id":"c3c3m1r1a1","sN":3,"aN":"c3m1r1a1"}'>
						<img alt="" itemprop="logo" itemscope="itemscope" class="c-image" src="https://img-prod-cms-rt-microsoft-com.akamaized.net/cms/api/am/imageFileData/RE1Mu3b?ver=5c31" role="presentation" aria-hidden="true" />
						<span role="presentation" aria-hidden="true">Microsoft</span>
					</a>
			<div class="f-mobile-title">
				<button type="button" class="c-action-trigger c-glyph glyph-chevron-left" aria-label="See more menu options" data-m='{"cN":"Mobile back button_nonnav","id":"nn4c3m1r1a1","sN":4,"aN":"c3m1r1a1"}'></button>
				<span data-global-title="Microsoft home" class="js-mobile-title">.NET</span>
				<button type="button" class="c-action-trigger c-glyph glyph-chevron-right" aria-label="See more menu options" data-m='{"cN":"Mobile forward button_nonnav","id":"nn5c3m1r1a1","sN":5,"aN":"c3m1r1a1"}'></button>
			</div>
					<div class="c-show-pipe x-hidden-vp-mobile-st">
						<a id="uhfCatLogo" class="c-logo c-cat-logo" href="https://dotnet.microsoft.com/" aria-label=".NET" itemprop="url" data-m='{"cN":"CatNav_.NET_nav","id":"n6c3m1r1a1","sN":6,"aN":"c3m1r1a1"}'>
								<span>.NET</span>
						</a>
					</div>
				<div class="cat-logo-button-cont x-hidden">
						<button type="button" id="uhfCatLogoButton" class="c-cat-logo-button x-hidden" aria-expanded="false" aria-label=".NET" data-m='{"cN":".NET_nonnav","id":"nn7c3m1r1a1","sN":7,"aN":"c3m1r1a1"}'>
							.NET
						</button>
				</div>



			        <nav id="uhf-g-nav" aria-label="Contextual menu" class="c-uhfh-gnav" data-m='{"cN":"Category nav_cont","cT":"Container","id":"c8c3m1r1a1","sN":8,"aN":"c3m1r1a1"}'>
            <ul class="js-paddle-items">
                    <li class="single-link js-nav-menu x-hidden-none-mobile-vp uhf-menu-item">
                        <a class="c-uhf-nav-link" href="https://dotnet.microsoft.com/" data-m='{"cN":"CatNav_Home_nav","id":"n1c8c3m1r1a1","sN":1,"aN":"c8c3m1r1a1"}' > Home </a>
                    </li>
                                        <li class="single-link js-nav-menu uhf-menu-item">
                            <a id="c-shellmenu_47" class="c-uhf-nav-link" href="https://dotnet.microsoft.com/learn/dotnet/what-is-dotnet" data-m='{"cN":"CatNav_About_nav","id":"n2c8c3m1r1a1","sN":2,"aN":"c8c3m1r1a1"}'>About</a>
                        </li>
                        <li class="single-link js-nav-menu uhf-menu-item">
                            <a id="c-shellmenu_48" class="c-uhf-nav-link" href="https://dotnet.microsoft.com/learn" data-m='{"cN":"CatNav_Learn_nav","id":"n3c8c3m1r1a1","sN":3,"aN":"c8c3m1r1a1"}'>Learn</a>
                        </li>
                        <li class="single-link js-nav-menu uhf-menu-item">
                            <a id="c-shellmenu_49" class="c-uhf-nav-link" href="https://dotnet.microsoft.com/learn/dotnet/architecture-guides" data-m='{"cN":"CatNav_Architecture_nav","id":"n4c8c3m1r1a1","sN":4,"aN":"c8c3m1r1a1"}'>Architecture</a>
                        </li>
                        <li class="single-link js-nav-menu uhf-menu-item">
                            <a id="c-shellmenu_50" class="c-uhf-nav-link" href="https://docs.microsoft.com/dotnet" data-m='{"cN":"CatNav_Docs_nav","id":"n5c8c3m1r1a1","sN":5,"aN":"c8c3m1r1a1"}'>Docs</a>
                        </li>
                        <li class="single-link js-nav-menu uhf-menu-item">
                            <a id="c-shellmenu_51" class="c-uhf-nav-link" href="https://dotnet.microsoft.com/download" data-m='{"cN":"CatNav_Downloads_nav","id":"n6c8c3m1r1a1","sN":6,"aN":"c8c3m1r1a1"}'>Downloads</a>
                        </li>
                        <li class="single-link js-nav-menu uhf-menu-item">
                            <a id="c-shellmenu_52" class="c-uhf-nav-link" href="https://dotnet.microsoft.com/platform/community" data-m='{"cN":"CatNav_Community_nav","id":"n7c8c3m1r1a1","sN":7,"aN":"c8c3m1r1a1"}'>Community</a>
                        </li>


                <li id="overflow-menu" class="overflow-menu x-hidden uhf-menu-item">
                        <div class="c-uhf-menu js-nav-menu">
        <button data-m='{"pid":"More","id":"nn8c8c3m1r1a1","sN":8,"aN":"c8c3m1r1a1"}' type="button" aria-label="More" aria-expanded="false" style="white-space:nowrap">More</button>
        <ul id="overflow-menu-list" aria-hidden="true" class="overflow-menu-list">
        </ul>
    </div>

                </li>
                                    <li class="single-link js-nav-menu" id="c-uhf-nav-cta">
                        <a  class="c-uhf-nav-link" href="https://dotnet.microsoft.com/learn/dotnet/hello-world-tutorial/intro" data-m='{"cN":"CatNav_cta_Get Started_nav","id":"n9c8c3m1r1a1","sN":9,"aN":"c8c3m1r1a1"}'>Get Started</a>
                    </li>
            </ul>
            
        </nav>


			<div class="c-uhfh-actions no-uhf-actions-exists" data-m='{"cN":"Header actions_cont","cT":"Container","id":"c9c3m1r1a1","sN":9,"aN":"c3m1r1a1"}'>
				<div class="wf-menu">        <nav id="uhf-c-nav" aria-label="All microsoft menu" data-m='{"cN":"GlobalNav_cont","cT":"Container","id":"c1c9c3m1r1a1","sN":1,"aN":"c9c3m1r1a1"}'>
            <ul class="js-paddle-items">
                <li>
                    <div class="c-uhf-menu js-nav-menu">
                        <button type="button" class="c-button-logo all-ms-nav" aria-label="All Microsoft expand to see list of Microsoft products and services" aria-expanded="false" data-m='{"cN":"GlobalNav_More_nonnav","id":"nn1c1c9c3m1r1a1","sN":1,"aN":"c1c9c3m1r1a1"}' style="white-space: nowrap"> <span>All Microsoft</span></button>
                        <ul class="f-multi-column f-multi-column-6" aria-hidden="true" data-m='{"cN":"More_cont","cT":"Container","id":"c2c1c9c3m1r1a1","sN":2,"aN":"c1c9c3m1r1a1"}'>
                                    <li class="c-w0-contr">
            <ul class="c-w0">
        <li class="js-nav-menu single-link" data-m='{"cN":"Microsoft 365_cont","cT":"Container","id":"c1c2c1c9c3m1r1a1","sN":1,"aN":"c2c1c9c3m1r1a1"}'>
            <a id="shellmenu_0" class="js-subm-uhf-nav-link" href="https://www.microsoft.com/en-us/microsoft-365" data-m='{"cN":"W0Nav_Microsoft 365_nav","id":"n1c1c2c1c9c3m1r1a1","sN":1,"aN":"c1c2c1c9c3m1r1a1"}'>Microsoft 365</a>
            
        </li>
        <li class="js-nav-menu single-link" data-m='{"cN":"Azure_cont","cT":"Container","id":"c2c2c1c9c3m1r1a1","sN":2,"aN":"c2c1c9c3m1r1a1"}'>
            <a id="shellmenu_1" class="js-subm-uhf-nav-link" href="https://azure.microsoft.com" data-m='{"cN":"W0Nav_Azure_nav","id":"n1c2c2c1c9c3m1r1a1","sN":1,"aN":"c2c2c1c9c3m1r1a1"}'>Azure</a>
            
        </li>
        <li class="js-nav-menu single-link" data-m='{"cN":"Office 365_cont","cT":"Container","id":"c3c2c1c9c3m1r1a1","sN":3,"aN":"c2c1c9c3m1r1a1"}'>
            <a id="shellmenu_2" class="js-subm-uhf-nav-link" href="https://products.office.com/en-us/business/office" data-m='{"cN":"W0Nav_Office 365_nav","id":"n1c3c2c1c9c3m1r1a1","sN":1,"aN":"c3c2c1c9c3m1r1a1"}'>Office 365</a>
            
        </li>
        <li class="js-nav-menu single-link" data-m='{"cN":"Dynamics 365_cont","cT":"Container","id":"c4c2c1c9c3m1r1a1","sN":4,"aN":"c2c1c9c3m1r1a1"}'>
            <a id="shellmenu_3" class="js-subm-uhf-nav-link" href="https://dynamics.microsoft.com/en-us/" data-m='{"cN":"W0Nav_Dynamics 365_nav","id":"n1c4c2c1c9c3m1r1a1","sN":1,"aN":"c4c2c1c9c3m1r1a1"}'>Dynamics 365</a>
            
        </li>
        <li class="js-nav-menu single-link" data-m='{"cN":"SQL_cont","cT":"Container","id":"c5c2c1c9c3m1r1a1","sN":5,"aN":"c2c1c9c3m1r1a1"}'>
            <a id="shellmenu_4" class="js-subm-uhf-nav-link" href="https://www.microsoft.com/sql-server/" data-m='{"cN":"W0Nav_SQL_nav","id":"n1c5c2c1c9c3m1r1a1","sN":1,"aN":"c5c2c1c9c3m1r1a1"}'>SQL</a>
            
        </li>
        <li class="js-nav-menu single-link" data-m='{"cN":"Windows 10_cont","cT":"Container","id":"c6c2c1c9c3m1r1a1","sN":6,"aN":"c2c1c9c3m1r1a1"}'>
            <a id="shellmenu_5" class="js-subm-uhf-nav-link" href="https://www.microsoft.com/en-us/microsoft-365/windows" data-m='{"cN":"W0Nav_Windows 10_nav","id":"n1c6c2c1c9c3m1r1a1","sN":1,"aN":"c6c2c1c9c3m1r1a1"}'>Windows 10</a>
            
        </li>
            </ul>
        </li>

        <li class="f-sub-menu js-nav-menu nested-menu" data-m='{"cT":"Container","id":"c7c2c1c9c3m1r1a1","sN":7,"aN":"c2c1c9c3m1r1a1"}'>

            <button type="button"  role="presentation" f-multi-parent="true" aria-expanded="false" data-m='{"id":"nn1c7c2c1c9c3m1r1a1","sN":1,"aN":"c7c2c1c9c3m1r1a1"}'>Products &amp; Services</button>
            <ul aria-hidden="true" role="presentation">
        <li class="js-nav-menu single-link" data-m='{"cN":"More_ProductsandServices_WindowsServer_cont","cT":"Container","id":"c2c7c2c1c9c3m1r1a1","sN":2,"aN":"c7c2c1c9c3m1r1a1"}'>
            <a id="shellmenu_8" class="js-subm-uhf-nav-link" href="https://www.microsoft.com/cloud-platform/windows-server" data-m='{"cN":"GlobalNav_More_ProductsandServices_WindowsServer_nav","id":"n1c2c7c2c1c9c3m1r1a1","sN":1,"aN":"c2c7c2c1c9c3m1r1a1"}'>Windows Server</a>
            
        </li>
        <li class="js-nav-menu single-link" data-m='{"cN":"More_ProductsandServices_EnterpriseMobilityandSecurity_cont","cT":"Container","id":"c3c7c2c1c9c3m1r1a1","sN":3,"aN":"c7c2c1c9c3m1r1a1"}'>
            <a id="shellmenu_9" class="js-subm-uhf-nav-link" href="https://www.microsoft.com/cloud-platform/enterprise-mobility-security" data-m='{"cN":"GlobalNav_More_ProductsandServices_EnterpriseMobilityandSecurity_nav","id":"n1c3c7c2c1c9c3m1r1a1","sN":1,"aN":"c3c7c2c1c9c3m1r1a1"}'>Enterprise Mobility + Security</a>
            
        </li>
        <li class="js-nav-menu single-link" data-m='{"cN":"More_ProductsandServices_PowerBI_cont","cT":"Container","id":"c4c7c2c1c9c3m1r1a1","sN":4,"aN":"c7c2c1c9c3m1r1a1"}'>
            <a id="shellmenu_10" class="js-subm-uhf-nav-link" href="https://powerbi.microsoft.com/en-us/" data-m='{"cN":"GlobalNav_More_ProductsandServices_PowerBI_nav","id":"n1c4c7c2c1c9c3m1r1a1","sN":1,"aN":"c4c7c2c1c9c3m1r1a1"}'>Power BI</a>
            
        </li>
        <li class="js-nav-menu single-link" data-m='{"cN":"More_ProductsandServices_Teams_cont","cT":"Container","id":"c5c7c2c1c9c3m1r1a1","sN":5,"aN":"c7c2c1c9c3m1r1a1"}'>
            <a id="shellmenu_11" class="js-subm-uhf-nav-link" href="https://products.office.com/en-us/microsoft-teams/group-chat-software" data-m='{"cN":"GlobalNav_More_ProductsandServices_Teams_nav","id":"n1c5c7c2c1c9c3m1r1a1","sN":1,"aN":"c5c7c2c1c9c3m1r1a1"}'>Teams</a>
            
        </li>
        <li class="js-nav-menu single-link" data-m='{"cN":"DeveloperAndIT_VisualStudio_cont","cT":"Container","id":"c6c7c2c1c9c3m1r1a1","sN":6,"aN":"c7c2c1c9c3m1r1a1"}'>
            <a id="shellmenu_12" class="js-subm-uhf-nav-link" href="https://visualstudio.microsoft.com/" data-m='{"cN":"GlobalNav_DeveloperAndIT_VisualStudio_nav","id":"n1c6c7c2c1c9c3m1r1a1","sN":1,"aN":"c6c7c2c1c9c3m1r1a1"}'>Visual Studio</a>
            
        </li>
        <li class="js-nav-menu single-link" data-m='{"cN":"More_MicrosoftAdvertising_cont","cT":"Container","id":"c7c7c2c1c9c3m1r1a1","sN":7,"aN":"c7c2c1c9c3m1r1a1"}'>
            <a id="shellmenu_13" class="js-subm-uhf-nav-link" href="https://go.microsoft.com/fwlink/?linkid=2026462" data-m='{"cN":"GlobalNav_More_MicrosoftAdvertising_nav","id":"n1c7c7c2c1c9c3m1r1a1","sN":1,"aN":"c7c7c2c1c9c3m1r1a1"}'>Microsoft Advertising</a>
            
        </li>
            </ul>
            
        </li>
        <li class="f-sub-menu js-nav-menu nested-menu" data-m='{"cT":"Container","id":"c8c2c1c9c3m1r1a1","sN":8,"aN":"c2c1c9c3m1r1a1"}'>

            <button type="button"  role="presentation" f-multi-parent="true" aria-expanded="false" data-m='{"id":"nn1c8c2c1c9c3m1r1a1","sN":1,"aN":"c8c2c1c9c3m1r1a1"}'>Emerging Technologies</button>
            <ul aria-hidden="true" role="presentation">
        <li class="js-nav-menu single-link" data-m='{"cN":"More_EmergingTechnologies_AI_cont","cT":"Container","id":"c2c8c2c1c9c3m1r1a1","sN":2,"aN":"c8c2c1c9c3m1r1a1"}'>
            <a id="shellmenu_15" class="js-subm-uhf-nav-link" href="https://www.microsoft.com/ai/" data-m='{"cN":"GlobalNav_More_EmergingTechnologies_AI_nav","id":"n1c2c8c2c1c9c3m1r1a1","sN":1,"aN":"c2c8c2c1c9c3m1r1a1"}'>AI</a>
            
        </li>
        <li class="js-nav-menu single-link" data-m='{"cN":"More_EmergingTechnologies_InternetofThings_cont","cT":"Container","id":"c3c8c2c1c9c3m1r1a1","sN":3,"aN":"c8c2c1c9c3m1r1a1"}'>
            <a id="shellmenu_16" class="js-subm-uhf-nav-link" href="https://www.microsoft.com/internet-of-things/" data-m='{"cN":"GlobalNav_More_EmergingTechnologies_InternetofThings_nav","id":"n1c3c8c2c1c9c3m1r1a1","sN":1,"aN":"c3c8c2c1c9c3m1r1a1"}'>Internet of Things</a>
            
        </li>
        <li class="js-nav-menu single-link" data-m='{"cN":"More_EmergingTechnologies_AzureCognitiveServices_cont","cT":"Container","id":"c4c8c2c1c9c3m1r1a1","sN":4,"aN":"c8c2c1c9c3m1r1a1"}'>
            <a id="shellmenu_17" class="js-subm-uhf-nav-link" href="https://azure.microsoft.com/services/cognitive-services/" data-m='{"cN":"GlobalNav_More_EmergingTechnologies_AzureCognitiveServices_nav","id":"n1c4c8c2c1c9c3m1r1a1","sN":1,"aN":"c4c8c2c1c9c3m1r1a1"}'>Azure Cognitive Services</a>
            
        </li>
        <li class="js-nav-menu single-link" data-m='{"cN":"More_EmergingTechnologies_Quantum_cont","cT":"Container","id":"c5c8c2c1c9c3m1r1a1","sN":5,"aN":"c8c2c1c9c3m1r1a1"}'>
            <a id="shellmenu_18" class="js-subm-uhf-nav-link" href="https://www.microsoft.com/quantum/" data-m='{"cN":"GlobalNav_More_EmergingTechnologies_Quantum_nav","id":"n1c5c8c2c1c9c3m1r1a1","sN":1,"aN":"c5c8c2c1c9c3m1r1a1"}'>Quantum</a>
            
        </li>
        <li class="js-nav-menu single-link" data-m='{"cN":"More_PCsAndDevices_MicrosoftHololens_cont","cT":"Container","id":"c6c8c2c1c9c3m1r1a1","sN":6,"aN":"c8c2c1c9c3m1r1a1"}'>
            <a id="shellmenu_19" class="js-subm-uhf-nav-link" href="https://www.microsoft.com/en-us/hololens" data-m='{"cN":"GlobalNav_More_PCsAndDevices_MicrosoftHololens_nav","id":"n1c6c8c2c1c9c3m1r1a1","sN":1,"aN":"c6c8c2c1c9c3m1r1a1"}'>Microsoft HoloLens</a>
            
        </li>
        <li class="js-nav-menu single-link" data-m='{"cN":"More_PCsAndDevices_VMAndMixedReality_cont","cT":"Container","id":"c7c8c2c1c9c3m1r1a1","sN":7,"aN":"c8c2c1c9c3m1r1a1"}'>
            <a id="shellmenu_20" class="js-subm-uhf-nav-link" href="https://www.microsoft.com/en-us/mixed-reality" data-m='{"cN":"GlobalNav_More_PCsAndDevices_VMAndMixedReality_nav","id":"n1c7c8c2c1c9c3m1r1a1","sN":1,"aN":"c7c8c2c1c9c3m1r1a1"}'>Mixed Reality</a>
            
        </li>
            </ul>
            
        </li>
        <li class="f-sub-menu js-nav-menu nested-menu" data-m='{"cT":"Container","id":"c9c2c1c9c3m1r1a1","sN":9,"aN":"c2c1c9c3m1r1a1"}'>

            <button type="button"  role="presentation" f-multi-parent="true" aria-expanded="false" data-m='{"id":"nn1c9c2c1c9c3m1r1a1","sN":1,"aN":"c9c2c1c9c3m1r1a1"}'>Developer &amp; IT</button>
            <ul aria-hidden="true" role="presentation">
        <li class="js-nav-menu single-link" data-m='{"cN":"More_DeveloperAndIT_Docs.microsoft.com_cont","cT":"Container","id":"c2c9c2c1c9c3m1r1a1","sN":2,"aN":"c9c2c1c9c3m1r1a1"}'>
            <a id="shellmenu_22" class="js-subm-uhf-nav-link" href="https://docs.microsoft.com/en-us/" data-m='{"cN":"GlobalNav_More_DeveloperAndIT_Docs.microsoft.com_nav","id":"n1c2c9c2c1c9c3m1r1a1","sN":1,"aN":"c2c9c2c1c9c3m1r1a1"}'>Docs</a>
            
        </li>
        <li class="js-nav-menu single-link" data-m='{"cN":"More_DeveloperAndIT_TechNet_cont","cT":"Container","id":"c3c9c2c1c9c3m1r1a1","sN":3,"aN":"c9c2c1c9c3m1r1a1"}'>
            <a id="shellmenu_23" class="js-subm-uhf-nav-link" href="https://technet.microsoft.com/en-us/ms376608.aspx" data-m='{"cN":"GlobalNav_More_DeveloperAndIT_TechNet_nav","id":"n1c3c9c2c1c9c3m1r1a1","sN":1,"aN":"c3c9c2c1c9c3m1r1a1"}'>TechNet</a>
            
        </li>
        <li class="js-nav-menu single-link" data-m='{"cN":"Footer_Developer_MicrosoftDeveloperNetwork_cont","cT":"Container","id":"c4c9c2c1c9c3m1r1a1","sN":4,"aN":"c9c2c1c9c3m1r1a1"}'>
            <a id="shellmenu_24" class="js-subm-uhf-nav-link" href="https://msdn.microsoft.com/en-us" data-m='{"cN":"GlobalNav_Footer_Developer_MicrosoftDeveloperNetwork_nav","id":"n1c4c9c2c1c9c3m1r1a1","sN":1,"aN":"c4c9c2c1c9c3m1r1a1"}'>Developer Network</a>
            
        </li>
        <li class="js-nav-menu single-link" data-m='{"cN":"More_DeveloperAndIT_WindowsDevCenter_cont","cT":"Container","id":"c5c9c2c1c9c3m1r1a1","sN":5,"aN":"c9c2c1c9c3m1r1a1"}'>
            <a id="shellmenu_25" class="js-subm-uhf-nav-link" href="https://developer.microsoft.com/en-us/windows" data-m='{"cN":"GlobalNav_More_DeveloperAndIT_WindowsDevCenter_nav","id":"n1c5c9c2c1c9c3m1r1a1","sN":1,"aN":"c5c9c2c1c9c3m1r1a1"}'>Windows Dev Center</a>
            
        </li>
        <li class="js-nav-menu single-link" data-m='{"cN":"More_DeveloperAndIT_Windows_IT_Pro_Center_cont","cT":"Container","id":"c6c9c2c1c9c3m1r1a1","sN":6,"aN":"c9c2c1c9c3m1r1a1"}'>
            <a id="shellmenu_26" class="js-subm-uhf-nav-link" href="https://www.microsoft.com/en-us/itpro/windows" data-m='{"cN":"GlobalNav_More_DeveloperAndIT_Windows_IT_Pro_Center_nav","id":"n1c6c9c2c1c9c3m1r1a1","sN":1,"aN":"c6c9c2c1c9c3m1r1a1"}'>Windows IT Pro Center</a>
            
        </li>
        <li class="js-nav-menu single-link" data-m='{"cN":"More_DeveloperAndIT_FastTrack_cont","cT":"Container","id":"c7c9c2c1c9c3m1r1a1","sN":7,"aN":"c9c2c1c9c3m1r1a1"}'>
            <a id="shellmenu_27" class="js-subm-uhf-nav-link" href="https://fasttrack.microsoft.com/office" data-m='{"cN":"GlobalNav_More_DeveloperAndIT_FastTrack_nav","id":"n1c7c9c2c1c9c3m1r1a1","sN":1,"aN":"c7c9c2c1c9c3m1r1a1"}'>FastTrack</a>
            
        </li>
            </ul>
            
        </li>
        <li class="f-sub-menu js-nav-menu nested-menu" data-m='{"cT":"Container","id":"c10c2c1c9c3m1r1a1","sN":10,"aN":"c2c1c9c3m1r1a1"}'>

            <button type="button"  role="presentation" f-multi-parent="true" aria-expanded="false" data-m='{"id":"nn1c10c2c1c9c3m1r1a1","sN":1,"aN":"c10c2c1c9c3m1r1a1"}'>Partner</button>
            <ul aria-hidden="true" role="presentation">
        <li class="js-nav-menu single-link" data-m='{"cN":"More_Partner_PartnerNetwork_cont","cT":"Container","id":"c2c10c2c1c9c3m1r1a1","sN":2,"aN":"c10c2c1c9c3m1r1a1"}'>
            <a id="shellmenu_29" class="js-subm-uhf-nav-link" href="https://partner.microsoft.com/" data-m='{"cN":"GlobalNav_More_Partner_PartnerNetwork_nav","id":"n1c2c10c2c1c9c3m1r1a1","sN":1,"aN":"c2c10c2c1c9c3m1r1a1"}'>Partner Network</a>
            
        </li>
        <li class="js-nav-menu single-link" data-m='{"cN":"More_Partner_SolutionProviders_cont","cT":"Container","id":"c3c10c2c1c9c3m1r1a1","sN":3,"aN":"c10c2c1c9c3m1r1a1"}'>
            <a id="shellmenu_30" class="js-subm-uhf-nav-link" href="https://www.microsoft.com/en-us/solution-providers" data-m='{"cN":"GlobalNav_More_Partner_SolutionProviders_nav","id":"n1c3c10c2c1c9c3m1r1a1","sN":1,"aN":"c3c10c2c1c9c3m1r1a1"}'>Solution Providers</a>
            
        </li>
        <li class="js-nav-menu single-link" data-m='{"cN":"More_Partner_PartnerCenter_cont","cT":"Container","id":"c4c10c2c1c9c3m1r1a1","sN":4,"aN":"c10c2c1c9c3m1r1a1"}'>
            <a id="shellmenu_31" class="js-subm-uhf-nav-link" href="https://partnercenter.microsoft.com/partner/home" data-m='{"cN":"GlobalNav_More_Partner_PartnerCenter_nav","id":"n1c4c10c2c1c9c3m1r1a1","sN":1,"aN":"c4c10c2c1c9c3m1r1a1"}'>Partner Center</a>
            
        </li>
        <li class="js-nav-menu single-link" data-m='{"cN":"More_Partner_CloudHosting_cont","cT":"Container","id":"c5c10c2c1c9c3m1r1a1","sN":5,"aN":"c10c2c1c9c3m1r1a1"}'>
            <a id="shellmenu_32" class="js-subm-uhf-nav-link" href="https://www.microsoft.com/en-us/cloudandhosting" data-m='{"cN":"GlobalNav_More_Partner_CloudHosting_nav","id":"n1c5c10c2c1c9c3m1r1a1","sN":1,"aN":"c5c10c2c1c9c3m1r1a1"}'>Cloud Hosting</a>
            
        </li>
            </ul>
            
        </li>
        <li class="f-sub-menu js-nav-menu nested-menu" data-m='{"cT":"Container","id":"c11c2c1c9c3m1r1a1","sN":11,"aN":"c2c1c9c3m1r1a1"}'>

            <button type="button"  role="presentation" f-multi-parent="true" aria-expanded="false" data-m='{"id":"nn1c11c2c1c9c3m1r1a1","sN":1,"aN":"c11c2c1c9c3m1r1a1"}'>Industries</button>
            <ul aria-hidden="true" role="presentation">
        <li class="js-nav-menu single-link" data-m='{"cN":"Products_ForStudentsAndEducators_Education_cont","cT":"Container","id":"c2c11c2c1c9c3m1r1a1","sN":2,"aN":"c11c2c1c9c3m1r1a1"}'>
            <a id="shellmenu_34" class="js-subm-uhf-nav-link" href="https://www.microsoft.com/en-us/education?icid=CNavMSCOML0_Studentsandeducation" data-m='{"cN":"GlobalNav_Products_ForStudentsAndEducators_Education_nav","id":"n1c2c11c2c1c9c3m1r1a1","sN":1,"aN":"c2c11c2c1c9c3m1r1a1"}'>Education</a>
            
        </li>
        <li class="js-nav-menu single-link" data-m='{"cN":"Footer_Enterprise_FinanciaServices_cont","cT":"Container","id":"c3c11c2c1c9c3m1r1a1","sN":3,"aN":"c11c2c1c9c3m1r1a1"}'>
            <a id="shellmenu_35" class="js-subm-uhf-nav-link" href="https://www.microsoft.com/en-us/enterprise/finance/banking-capital-markets" data-m='{"cN":"GlobalNav_Footer_Enterprise_FinanciaServices_nav","id":"n1c3c11c2c1c9c3m1r1a1","sN":1,"aN":"c3c11c2c1c9c3m1r1a1"}'>Financial services</a>
            
        </li>
        <li class="js-nav-menu single-link" data-m='{"cN":"More_Industries_Government_cont","cT":"Container","id":"c4c11c2c1c9c3m1r1a1","sN":4,"aN":"c11c2c1c9c3m1r1a1"}'>
            <a id="shellmenu_36" class="js-subm-uhf-nav-link" href="https://www.microsoft.com/en-us/enterprise/government" data-m='{"cN":"GlobalNav_More_Industries_Government_nav","id":"n1c4c11c2c1c9c3m1r1a1","sN":1,"aN":"c4c11c2c1c9c3m1r1a1"}'>Government</a>
            
        </li>
        <li class="js-nav-menu single-link" data-m='{"cN":"More_Industries_Health_cont","cT":"Container","id":"c5c11c2c1c9c3m1r1a1","sN":5,"aN":"c11c2c1c9c3m1r1a1"}'>
            <a id="shellmenu_37" class="js-subm-uhf-nav-link" href="https://www.microsoft.com/en-us/enterprise/health" data-m='{"cN":"GlobalNav_More_Industries_Health_nav","id":"n1c5c11c2c1c9c3m1r1a1","sN":1,"aN":"c5c11c2c1c9c3m1r1a1"}'>Health</a>
            
        </li>
        <li class="js-nav-menu single-link" data-m='{"cN":"Footer_Enterprise_Health_cont","cT":"Container","id":"c6c11c2c1c9c3m1r1a1","sN":6,"aN":"c11c2c1c9c3m1r1a1"}'>
            <a id="shellmenu_38" class="js-subm-uhf-nav-link" href="https://www.microsoft.com/en-us/enterprise/manufacturing" data-m='{"cN":"GlobalNav_Footer_Enterprise_Health_nav","id":"n1c6c11c2c1c9c3m1r1a1","sN":1,"aN":"c6c11c2c1c9c3m1r1a1"}'>Manufacturing &amp; resources</a>
            
        </li>
        <li class="js-nav-menu single-link" data-m='{"cN":"More_Industries_Retail_cont","cT":"Container","id":"c7c11c2c1c9c3m1r1a1","sN":7,"aN":"c11c2c1c9c3m1r1a1"}'>
            <a id="shellmenu_39" class="js-subm-uhf-nav-link" href="https://www.microsoft.com/en-us/enterprise/retail-consumer-goods" data-m='{"cN":"GlobalNav_More_Industries_Retail_nav","id":"n1c7c11c2c1c9c3m1r1a1","sN":1,"aN":"c7c11c2c1c9c3m1r1a1"}'>Retail</a>
            
        </li>
            </ul>
            
        </li>
        <li class="f-sub-menu js-nav-menu nested-menu" data-m='{"cT":"Container","id":"c12c2c1c9c3m1r1a1","sN":12,"aN":"c2c1c9c3m1r1a1"}'>

            <button type="button"  role="presentation" f-multi-parent="true" aria-expanded="false" data-m='{"id":"nn1c12c2c1c9c3m1r1a1","sN":1,"aN":"c12c2c1c9c3m1r1a1"}'>Other</button>
            <ul aria-hidden="true" role="presentation">
        <li class="js-nav-menu single-link" data-m='{"cN":"More_Other_Security_cont","cT":"Container","id":"c2c12c2c1c9c3m1r1a1","sN":2,"aN":"c12c2c1c9c3m1r1a1"}'>
            <a id="shellmenu_41" class="js-subm-uhf-nav-link" href="https://www.microsoft.com/security/" data-m='{"cN":"GlobalNav_More_Other_Security_nav","id":"n1c2c12c2c1c9c3m1r1a1","sN":1,"aN":"c2c12c2c1c9c3m1r1a1"}'>Security</a>
            
        </li>
        <li class="js-nav-menu single-link" data-m='{"cN":"More_Other_Licensing_cont","cT":"Container","id":"c3c12c2c1c9c3m1r1a1","sN":3,"aN":"c12c2c1c9c3m1r1a1"}'>
            <a id="shellmenu_42" class="js-subm-uhf-nav-link" href="https://www.microsoft.com/licensing/" data-m='{"cN":"GlobalNav_More_Other_Licensing_nav","id":"n1c3c12c2c1c9c3m1r1a1","sN":1,"aN":"c3c12c2c1c9c3m1r1a1"}'>Licensing</a>
            
        </li>
        <li class="js-nav-menu single-link" data-m='{"cN":"More_Other_AppSource_cont","cT":"Container","id":"c4c12c2c1c9c3m1r1a1","sN":4,"aN":"c12c2c1c9c3m1r1a1"}'>
            <a id="shellmenu_43" class="js-subm-uhf-nav-link" href="https://appsource.microsoft.com/" data-m='{"cN":"GlobalNav_More_Other_AppSource_nav","id":"n1c4c12c2c1c9c3m1r1a1","sN":1,"aN":"c4c12c2c1c9c3m1r1a1"}'>AppSource</a>
            
        </li>
        <li class="js-nav-menu single-link" data-m='{"cN":"More_Other_AzureMarketplace_cont","cT":"Container","id":"c5c12c2c1c9c3m1r1a1","sN":5,"aN":"c12c2c1c9c3m1r1a1"}'>
            <a id="shellmenu_44" class="js-subm-uhf-nav-link" href="https://azuremarketplace.microsoft.com/marketplace/" data-m='{"cN":"GlobalNav_More_Other_AzureMarketplace_nav","id":"n1c5c12c2c1c9c3m1r1a1","sN":1,"aN":"c5c12c2c1c9c3m1r1a1"}'>Azure Marketplace</a>
            
        </li>
        <li class="js-nav-menu single-link" data-m='{"cN":"More_Other_Events_cont","cT":"Container","id":"c6c12c2c1c9c3m1r1a1","sN":6,"aN":"c12c2c1c9c3m1r1a1"}'>
            <a id="shellmenu_45" class="js-subm-uhf-nav-link" href="https://events.microsoft.com/" data-m='{"cN":"GlobalNav_More_Other_Events_nav","id":"n1c6c12c2c1c9c3m1r1a1","sN":1,"aN":"c6c12c2c1c9c3m1r1a1"}'>Events</a>
            
        </li>
        <li class="js-nav-menu single-link" data-m='{"cN":"More_EmergingTechnologies_Research_cont","cT":"Container","id":"c7c12c2c1c9c3m1r1a1","sN":7,"aN":"c12c2c1c9c3m1r1a1"}'>
            <a id="shellmenu_46" class="js-subm-uhf-nav-link" href="https://www.microsoft.com/research/" data-m='{"cN":"GlobalNav_More_EmergingTechnologies_Research_nav","id":"n1c7c12c2c1c9c3m1r1a1","sN":1,"aN":"c7c12c2c1c9c3m1r1a1"}'>Research</a>
            
        </li>
            </ul>
            
        </li>
                                                            <li class="f-multi-column-info">
                                    <a data-m='{"id":"n13c2c1c9c3m1r1a1","sN":13,"aN":"c2c1c9c3m1r1a1"}' href="https://www.microsoft.com/en-us/sitemap.aspx" aria-label="" class="c-glyph">View Sitemap</a>
                                </li>
                            
                        </ul>
                    </div>
                </li>
            </ul>
        </nav>
</div>
				
			</div>
		</div>
		
		
	</div>
	
</header>




    </div>
        </div>

    </div>

    </div>

        <div class="breadcrumb-wrapper">
            <nav><ol class="breadcrumb"><li class="breadcrumb-item"><a href="/">.NET</a></li><li class="breadcrumb-item">Web development (ASP.NET)</li></ol></nav>
        </div>

    <div class="jumbotron">
        <div class="site-banners">

        </div>
        <div class="container" id="mainContent">
            
    <h1>ASP.NET</h1>
    <p class="lead">Free. Cross-platform. Open source.<br />A framework for building web apps and services with .NET and C#.</p>
    <p>
        <a class="btn btn-white btn-lg btn-scale" href="/learn/web/get-started-with-aspnet-tutorial" role="button">Get Started</a>
        <a class="btn btn-purple btn-lg btn-scale btn-normal-weight" href="/download" role="button">Download</a>
    </p>
    <p>Supported on Windows, Linux, and macOS</p>

        </div>
    </div>




    

<div class="swim-container">
    <div class="swim pt-60 pb-60">
        <div class="container">
            <div class="media-grid">
                <div class="row">
                    <div class="col-xl-3 col-lg-6">
                        <a href="/apps/aspnet/web-apps" aria-labelledby="web-apps">
                            <div class="media">
                                <div class="media-left" aria-hidden="true">
                                    <span class="ms-Icon ms-Icon--Globe"></span>
                                </div>
                                <div class="media-body">
                                    <h2 class="media-heading" id="web-apps" tabindex="-1">Web Apps</h2>
                                    <p>Build pages based on HTML5, CSS, and JavaScript, using C# for server-side logic</p>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-xl-3 col-lg-6">
                        <a href="/apps/aspnet/apis" aria-labelledby="apis">
                            <div class="media">
                                <div class="media-left" aria-hidden="true">
                                    <span class="ms-Icon ms-Icon--Flow"></span>
                                </div>
                                <div class="media-body">
                                    <h2 class="media-heading" id="apis" tabindex="-1">APIs</h2>
                                    <p>Develop REST APIs for a range of clients, including browsers and mobile devices</p>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-xl-3 col-lg-6">
                        <a href="/apps/aspnet/real-time" aria-labelledby="real-time">
                            <div class="media">
                                <div class="media-left" aria-hidden="true">
                                    <span class="ms-Icon ms-Icon--RealTimeIndicator"></span>
                                </div>
                                <div class="media-body">
                                    <h2 class="media-heading" id="real-time" tabindex="-1">Real-time</h2>
                                    <p>Enable bi-directional communication between server and client, in real-time</p>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-xl-3 col-lg-6">
                        <a href="/apps/aspnet/microservices" aria-labelledby="microservices">
                            <div class="media">
                                <div class="media-left" aria-hidden="true">
                                    <span class="ms-Icon ms-Icon--WebComponents"></span>
                                </div>
                                <div class="media-body" id="microservices" tabindex="-1">
                                    <h2 class="media-heading">Microservices</h2>
                                    <p>Create independently deployable microservices that run on Docker containers</p>
                                </div>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="swim pt-60 pb-60">
        <div class="container">
            <div class="row vertical-align-md">
                <div class="swim-illustration col-xs-12 col-md-6">
                    <img src="/images/illustrations/swimlane-aspnet-extends-dotnet.svg?v=ZcDShBF9nHCAmwWukmLbPca-qgxgVpdWLQBl7eOU1Ac" role="presentation" alt="" class="img-fluid img-fluid-center" />
                </div>
                <div class="swim-content col-lg-4 col-md-5">
                    <h2>What is ASP.NET?</h2>
                    <p>.NET is a developer platform made up of tools, programming languages, and libraries for building many different types of applications.</p>
                    <p>ASP.NET extends the <a href="/learn/dotnet/what-is-dotnet">.NET developer platform</a> with tools and libraries specifically for building web apps.</p>
                    <p><a class="btn btn-default" href="/learn/web/what-is-aspnet">Dig deeper: What is ASP.NET?</a></p>
                </div>
            </div>
        </div>
    </div>

    <div class="swim pt-60 pb-60">
        <div class="container">
            <div class="row vertical-align-md">
                <div class="swim-illustration col-xs-12 col-md-6">
                    <img src="/images/illustrations/swimlane-subscribe-to-news-tips.svg?v=A94E1l9TIWsCIkmDeropAHlbiplQlriIi_BUbDW-rjE" alt="" role="presentation" class="img-fluid img-fluid-center" />
                </div>
                <div class="swim-content col-lg-4 col-md-5">
                    <h2>Learn ASP.NET</h2>
                    <p>Learn about all ASP.NET has to offer with our tutorials, video courses, and docs.</p>
                    <p><a class="btn btn-default" href="/learn/web/">Learn to use ASP.NET</a></p>
                </div>
            </div>
        </div>
    </div>

    <div class="swim pt-60 pb-60">
        <div class="container">
            <div class="row vertical-align-md">
                <div class="swim-illustration col-xs-12 col-md-6">
<img src="/images/redesign/shared/tech-empower-results.svg?v=EttLBPxhbKrp7sGA5uKOujUvnbqYSSRNuIqEol0jNok" alt="In the TechEmpower benchmarks, .NET processed 6.97 million requests per second, Java Servlet processed 2.55 million, and Node.js processed 0.83 million." class="img-fluid imgimg-fluidnter imgimg-fluidimlane" />
<p class="text-center small">Data sourced from official tests available at <a href="https://www.techempower.com/benchmarks/#section=data-r16&hw=ph&test=plaintext" target="_blank">TechEmpower Round 16</a>.</p>
                </div>
                <div class="swim-content col-lg-4 col-md-5">
                    <h2>Fast and scalable</h2>
                    <p>ASP.NET performs faster than any popular web framework in the independent <a href="https://www.techempower.com/benchmarks/#section=data-r17&hw=ph&test=plaintext" target="_blank">TechEmpower benchmarks</a>.</p>
                </div>
            </div>
        </div>
    </div>

    <div class="swim pt-60 pb-60">
        <div class="container">
            <div class="row vertical-align-md">
                <div class="swim-illustration col-xs-12 col-md-6">
                    <img src="/images/illustrations/swimlane-security.svg?v=1Gm-V54l8uhuOvWY_EbAX8vwGvR89i7qv04Hdqu5DqA" alt="" role="presentation" class="img-fluid img-fluid-center" />
                </div>
                <div class="swim-content col-lg-4 col-md-5">
                    <h2>Build secure apps</h2>
                    <p>ASP.NET supports industry standard authentication protocols. Built-in features help protect your apps against cross-site scripting (XSS) and cross-site request forgery (CSRF).</p>
                    <p>ASP.NET provides a built-in user database with support for multi-factor authentication and external authentication with Google, Twitter, and more.</p>
                </div>
            </div>
        </div>
    </div>

    <div class="swim pt-60 pb-60">
        <div class="container">
            <div class="row vertical-align-md">
                <div class="swim-illustration col-xs-12 col-md-6">
                    <img src="/images/illustrations/swimlane-community-documentation.svg?v=ZCPKmQRCzLBNOmu00jNggqSUQbxRbNzguW9OZuDl2Tw" alt="" role="presentation" class="img-fluid img-fluid-center" />
                </div>
                <div class="swim-content col-lg-4 col-md-5">
                    <h2>Active community and open-source</h2>
                    <p>Get quick answers to questions with an active community of developers on <a href="https://stackoverflow.com/questions/tagged/.net?sort=frequent" target="_blank">StackOverflow</a>, <a href="https://forums.asp.net/" target="_blank">ASP.NET forums</a>, and <a href="/platform/community/">more</a>.</p>
                    <p><a href="/platform/open-source">ASP.NET is open source</a> on GitHub, with over 60,000 developers and 3,700 companies already contributing.</p>
                    <p><a class="btn btn-default" href="/platform/community/">Join the ASP.NET community</a></p>
                </div>
            </div>
        </div>
    </div>

    <div class="swim pt-60 pb-60">
        <div class="container">
            <div class="row vertical-align-md">
                <div class="swim-illustration col-xs-12 col-md-6">
                    <img src="/images/illustrations/spot-azure-accessible-everywhere.svg?v=-kiBh7KO-r83yu7cvskbHanLcQWnyB-5su_MKpfZm4o" alt="" role="presentation" class="img-fluid img-fluid-center img-fluid-swimlane" />
                </div>
                <div class="swim-content col-lg-4 col-md-5">
                    <h2>Free hosting on Azure</h2>
                    <p>Get 10 ASP.NET websites for free with Microsoft Azure.</p>
                    <p>You can also deploy to any major cloud platform, your own Linux or Windows servers, or one of <a href="/apps/aspnet/hosting">many hosting providers</a>.</p>
                    <p><a class="btn btn-default" href="https://azure.microsoft.com/services/app-service/web/" target="_blank">Host for free with Azure</a></p>
                </div>
            </div>
        </div>
    </div>

    <div class="swim pt-60 pb-60 home-customers pt-40 pb-10">
        <div class="container text-center">
            <div class="logos">
                <a href="/customers#stackoverflow"><img src="/images/redesign/customers-stackoverflow.svg?v=XDzitFvOxDk6R8vk-4r7DxYlgtxdUAfSmTjEmW-rmwU" height="40" width="204" alt="The StackOverflow logo &mdash; the word StackOverflow next to an icon of a paper tray with papers spilling out of it. StackOverlow is a customer of .NET." role="presentation" /></a>
                <a href="/customers#ups"><img src="/images/redesign/customers-ups.svg?v=jGsS1aCfuAyb1_QrENUMC2pVKR4faEHxfAuvwS6MW4U" height="60" width="50" alt="The United Parcel Service (UPS) logo &mdash; the letters UPS on a yellow and brown shield. UPS is a customer of .NET." role="presentation" /></a>
                <a href="/customers#alaska"><img src="/images/redesign/customers-alaska.svg?v=zUpWMitHPofCkXgrtDt9u88OKo2XtFQKXbgvZifcIH4" height="40" width="126" alt="The Alaska Airlines logo &mdash; the word Alaska in large dark blue letters. Alaska Airlines is a customer of .NET." role="presentation" /></a>
                <a href="/customers#jet"><img src="/images/redesign/customers-jet.png?v=c7BR_kfOIomuBZCPiXR0LtIh2sTF-JBDhYMz8O-yN14" height="40" width="99" alt="The Jet.com logo &mdash; the word jet in vibrant purple. Jet.com is a customer of .NET." role="presentation" /></a>
                <a href="/customers#raygun"><img src="/images/redesign/customers-raygun.svg?v=qfl8S-DOMZ4z70geS6_vPOum6ZOUZcseSq3gBGv3CUk" height="30" width="158" alt="The Raygun Logo &mdash; The word RAYGUN in large uppercase letters. Raygun is a customer of .NET." role="presentation" /></a>
                <a href="/customers#netease"><img src="/images/redesign/customers-netease.png?v=5__PUxzOA98JJwCeizAPm1t_BQtNeUv7zkh-w7EEmtM" height="45" width="116" alt="The NetEase Games logo &mdash; the words NetEase Games next to a series of lines that resemble a maze. NetEase Games is a customer of .NET." role="presentation" /></a>
            </div>
            <p class="small">
                <a href="/platform/customers">Read customer stories</a>
            </p>
        </div>
    </div>
</div>


<div class="swim swim-purple pt-40 pb-40 pt-60-md pb-60-md">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-md-6 offset-md-1">
                <h2 class="h3"><a href="/learn/web/aspnet-hello-world-tutorial/intro" tabindex="-1">Ready to Get Started?</a></h2>
                <p>Our step-by-step tutorial will help you <span id="get-started-topic" tabindex="-1">get ASP.NET running on your computer</span>.</p>
            </div>
            <div class="col-md-3 offset-md-1 mt-40 mt-0-md text-center">
                <p class="small">Supported on Windows, Linux, and macOS</p>
                <p><a class="btn btn-white btn-lg btn-scale" href="/learn/web/aspnet-hello-world-tutorial/intro" role="button" aria-labelledby="get-started-topic" >Get Started</a></p>
            </div>
        </div>
    </div>
</div>

        <div id="footerArea" class="uhf"  data-m='{"cN":"footerArea","cT":"Area_coreuiArea","id":"a2Body","sN":2,"aN":"Body"}'>
                <div id="footerRegion"     data-region-key="footerregion" data-m='{"cN":"footerRegion","cT":"Region_coreui-region","id":"r1a2","sN":1,"aN":"a2"}' >

    <div  id="footerUniversalFooter" data-m='{"cN":"footerUniversalFooter","cT":"Module_coreui-universalfooter","id":"m1r1a2","sN":1,"aN":"r1a2"}'  data-module-id="Category|footerRegion|coreui-region|footerUniversalFooter|coreui-universalfooter">
        



<footer id="uhf-footer" class="c-uhff context-uhf"  data-uhf-mscc-rq="false" data-footer-footprint="/MSNet/DotnetFooter, fromService: True" data-m='{"cN":"Uhf footer_cont","cT":"Container","id":"c1m1r1a2","sN":1,"aN":"m1r1a2"}'>
    <div class="c-uhff-base">
        
        <nav aria-label="Microsoft corporate links">
            <ul class="c-list f-bare" data-m='{"cN":"Corp links_cont","cT":"Container","id":"c1c1m1r1a2","sN":1,"aN":"c1m1r1a2"}'>
                                <li>
                    <a class="c-uhff-link" href="https://dotnet.microsoft.com/learn/web/what-is-aspnet-core" data-mscc-ic="false" data-m='{"cN":"Powered by ASP.NET Core_nav","id":"n1c1c1m1r1a2","sN":1,"aN":"c1c1m1r1a2"}'>Powered by .NET Core 3.0.0-preview7-27912-14</a>
                </li>
                <li>
                    <a class="c-uhff-link" href="https://support.microsoft.com/contactus/" data-mscc-ic="false" data-m='{"cN":"Contact Microsoft_nav","id":"n2c1c1m1r1a2","sN":2,"aN":"c1c1m1r1a2"}'>Contact Microsoft</a>
                </li>
                <li>
                    <a class="c-uhff-link" href="https://dotnet.microsoft.com/platform/support" data-mscc-ic="false" data-m='{"cN":"Support_nav","id":"n3c1c1m1r1a2","sN":3,"aN":"c1c1m1r1a2"}'>Support</a>
                </li>
                <li>
                    <a class="c-uhff-link" href="https://go.microsoft.com/fwlink/?LinkId=521839" data-mscc-ic="false" data-m='{"cN":"Privacy \u0026 Cookies_nav","id":"n4c1c1m1r1a2","sN":4,"aN":"c1c1m1r1a2"}'>Privacy &amp; Cookies</a>
                </li>
                <li>
                    <a class="c-uhff-link" href="https://go.microsoft.com/fwlink/?LinkID=206977" data-mscc-ic="false" data-m='{"cN":"Terms of Use_nav","id":"n5c1c1m1r1a2","sN":5,"aN":"c1c1m1r1a2"}'>Terms of Use</a>
                </li>
                <li>
                    <a class="c-uhff-link" href="https://www.microsoft.com/trademarks" data-mscc-ic="false" data-m='{"cN":"Trademarks_nav","id":"n6c1c1m1r1a2","sN":6,"aN":"c1c1m1r1a2"}'>Trademarks</a>
                </li>

                <li>&#169; Microsoft 2019</li>
                
            </ul>
        </nav>
    </div>
    
</footer>




    </div>
        </div>

    </div>

    <script src="/bundles/js/general.min.js?v=1WQ1Q4P49NvE6o3QdGaLBXG5dKWvoUx8FfpTNAJ0wZU"></script>
    <script src="/bundles/js/main.min.js?v=OuNlwQQapO6n138yGE7tbvVZ8qthV9H9KiVRZORvswU"></script>
    <script src="https://www.microsoft.com/onerfstatics/marketingsites-wcus-prod/shell/_scrf/js/themes=default/54-af9f9f/c0-247156/de-099401/e1-a50eee/e7-954872/d8-97d509/f0-251fe2/46-be1318/77-04a268/11-240c7b/63-077520/a4-34de62/1b-c96630/db-bc0148/dc-7e9864/78-4c7d22/7e-fb0d6a/e4-8302f6/cd-23d3b0/6d-1e7ed0/b7-cadaa7/ca-40b7b0/4e-ee3a55/3e-f5c39b/c3-6454d7/f9-7592d3/92-10345d/79-499886/7e-cda2d3/32-6dafa3/93-283c2d/e0-3c9860/91-97a04f/1f-100dea/33-abe4df/18-d72213?ver=2.0&iife=1"></script><script src="https://c.s-microsoft.com/mscc/statics/mscc-0.4.1.min.js"></script>

    
</body>
</html>
