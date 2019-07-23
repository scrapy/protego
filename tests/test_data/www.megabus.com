<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="Megabus offers safe, convenient, affordable bus service. Online bus ticket booking available.">
<meta name="author" content="megabus.com">
<link rel="icon" href="favicon.ico">
<title>megabus.com | Low cost bus tickets</title>

<link rel="canonical" href="https://www.megabus.com" />
<link rel="alternate" href="https://www.megabus.com" hreflang="x-default" />
<link rel="alternate" href="https://us.megabus.com" hreflang="en-us" /> 
<link rel="alternate" href="https://esus.megabus.com" hreflang="es-us" /> 
<link rel="alternate" href="https://ca.megabus.com" hreflang="en-ca" />
<link rel="alternate" href="https://frca.megabus.com" hreflang="fr-ca" /> 
<link rel="alternate" href="https://uk.megabus.com" hreflang="en-gb" />
<link rel="alternate" href="https://eseu.megabus.com" hreflang="es-gb" /> 
<link rel="alternate" href="https://freu.megabus.com" hreflang="fr-gb" /> 
<link rel="alternate" href="https://pleu.megabus.com" hreflang="pl-gb" />


<script src="scripts/secure.js"></script>
<script src="scripts/setcookie.js"></script>
<script>
    sc.flag.toPreferredSite();
</script>



<!-- Google Tag Manager -->
<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
})(window,document,'script','dataLayer','GTM-F6DW66');</script>
<!-- End Google Tag Manager -->


</head>
<body class="no-nav">


<!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-F6DW66"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<!-- End Google Tag Manager (noscript) -->


<style>
    @font-face {
        font-family: 'Nexa';
        src: url(fonts/nexa/nexa-book-webfont.woff2) format('woff2'),
            url(fonts/nexa/nexa-book-webfont.woff) format('woff'),
            url(fonts/nexa/nexa-book-webfont.ttf) format('truetype');
        font-weight: 300;
        font-style: normal;
    }
    @font-face {
        font-family: 'Nexa';
        src: url(fonts/nexa/nexa-heavy-webfont.woff2) format('woff2'),
            url(fonts/nexa/nexa-heavy-webfont.woff) format('woff'),
            url(fonts/nexa/nexa-heavy-webfont.ttf) format('truetype');
        font-weight: 700;
        font-style: normal;
    }
    body,
    html {
        padding:0;
        margin:0;
        font-family: 'Nexa', 'Helvetica Neue', Helvetica, Arial, sans-serif;
        font-weight: 300;
    }
    body {
        background:#FFFFFF;
        color:#333333;
        min-height:100%;
    }
    p {
        margin-top:15px;
        margin-bottom:15px;
        font-weight:300;
    }
    a {
        color: #726AD0;
        text-decoration: none;
    }
    h1,
    h2,
    h3 {
        font-weight:700;
    }
    a h2 {
    	color: #333333;
    }
    .navbar {
        padding:0;
        background-color: #001779;
        color: #ffffff;
        margin-bottom: 0px;
        border: none;
        border-radius: 0;
        position: relative;
        min-height: 50px;
    }
    .navbar-static-top {
        z-index:1000;
    }
    .container {
        padding-right: 15px;
        padding-left: 15px;
        margin-right: auto;
        margin-left: auto;
    }
    .navbar.navbar-default .navbar-brand {
        width: 155px;
        cursor: pointer;
        color: #ffffff;
    }
    .navbar-brand {
        float: left;
        height: 50px;
        font-size: 18px;
        line-height: 20px;
    }
    .navbar-brand > img {
        display:block;
        cursor: auto;
    }
    .navbar-brand img {
        width:155px;
        padding-top:15px;
    }
    .flag-container {
        text-align:center;
    }
    .flag-header {
        background: #001779;
        text-align: center;
        border-top: solid 1px rgba(0, 0, 0, 0.25);
        padding:30px 0;
        color:#FFFFFF;
    }
    .flag-button {
        padding-left:15px;
        padding-right:15px;
        box-sizing: border-box;
    }
    .flag-title {
        margin-bottom:15px;
        margin-top:0;
    }
    .flag-select {
        padding-top:30px;
        padding-bottom:0;
    }
    .flag-button .btn {
        padding: 10px 30px;
        font-size: 16px;
        width: 130px;
        color: #726AD0;
        background-color: #ffffff;
        box-shadow: inset 0 0 0 2px #DDDDDD;
        border-radius: 3px;
        border: 0;
        font-weight: 700;
        line-height: 1.5;
        display: inline-block;
        margin-bottom: 0;
        text-align: center;
        white-space: nowrap;
        cursor: pointer;
        user-select: none;
        background-image: none;
        font-family: 'Nexa', 'Helvetica Neue', Helvetica, Arial, sans-serif;
    }
    .flag-button .btn:hover,
    .flag-button .btn:focus,
    .flag-button .btn:active,
    .flag-button .btn:active.focus,
    .flag-button .btn:active:hover {
        color: #726AD0;
        background-color: #ffffff;
        box-shadow: inset 0 0 0 2px #726AD0;
        border-color: #adadad;
    }
    .flag-region {
        padding-top:30px;
        padding-bottom:30px;
    }
    .flag-region >.row {
        margin-top:15px;
    }
    .flag-item {
        position:relative;
    }
    .flag-item img {
        max-width:200px;
        height:auto;
        display:block;
        margin:0 auto;
        margin-bottom:15px;
    }
    .flag-item img.flixbus-logo {
        width: 150px;
        margin-top: -15px;
    }
    @media (max-width: 767px) {
        .flag-container {
            padding:0;
        }
        .flag-region {
            border-bottom:solid 1px #d0d0d0;
        }
        .flag-region:last-child {
            border-bottom:0;
        }
        .flag-region >.row > div .btn {
            width:100%;
            margin-bottom:15px;
        }
        .flag-region:first-of-type {
            padding-top:0;
        }
        .flag-button {
            margin-top:15px;
        }
        .flag-button .btn {
            width:100%;
        }
        .flag-select {
            padding-top:0;
        }
    }
    @media (min-width: 768px) {
        .container {
            width:750px;
        }
        .flag-region,
        .flag-button {
            width:50%;
            float: left;
            position: relative;
            min-height: 1px;
        }
        .flag-header {
            padding:60px 0;
        }
        .flag-region >.row > div:first-child {
            text-align:right;
        }
        .flag-region >.row > div:nth-child(even) {
            text-align:left;
        }
        .flag-region >.row > div:nth-child(3) {
            margin-top:15px;
        }
        .flag-button:first-child, .flag-button:nth-child(3) {
            text-align:right;
        }
        .flag-button:nth-child(even) {
            text-align:left;
        }

        .flag-button:only-child {
            text-align:center;
            width:100%;
        }
        .flag-button:nth-child(3),.flag-button:nth-child(4){
            margin-top:15px;
        }
    }
    @media (min-width: 992px) {
        .container {
            width:970px;
        }
    }
    @media (min-width: 1200px) {
        .container {
            width:1170px;
        }
    }
}
</style>
<!-- NAVBAR -->
<nav class="navbar navbar-default navbar-static-top">
    <div class="container">
        <div class="navbar-header">
            <div class="navbar-brand">
                <img  alt="Brand" src="images/logo-megabus.svg" />
            </div>

        </div>
    </div>
</nav>
<!--/ NAVBAR -->
<main id="flagContentArea">
    <div class="flag-header">
        <div class="container">
            <h1 class="flag-title">Welcome</h1>
            <p>The mega value website for travel in the UK, the United States and Canada!</p>
        </div>
    </div>
    <div class="container flag-container">
            <p class="flag-select">Please select a location:</p>
            <div class="flag-region">
                <a href="https://us.megabus.com" title="Megabus in USA">
                	<h2>Megabus in USA</h2>
                </a>
                <div class="flag-item">
                    <img class="img-responsive" src="images/flag-usa.png"/>
                </div>
                <div>
                    <div class="flag-button">
                        <button class="btn btn-sm btn-default" onclick="sc.flag.toSite('us')">English</button>
                    </div>
                    <div class="flag-button">
                        <button class="btn btn-sm btn-default" onclick="sc.flag.toSite('esus')">Espa&#241;ol</button>
                    </div>
                </div>
            </div>
            <div class="flag-region">
                <a href="https://uk.megabus.com" title="Megabus in United Kingdom">
	                <h2>Megabus in United Kingdom</h2>
	            </a>
                <div class="flag-item">
                    <img class="img-responsive" src="images/flag-uk.png"/>
                </div>
                <div>
                    <div class="flag-button">
                        <button class="btn btn-sm btn-default" onclick="sc.flag.toSite('uk')">English</button>
                    </div>
                    <div class="flag-button">
                        <button class="btn btn-sm btn-default" onclick="sc.flag.toSite('es')">Espa&#241;ol</button>
                    </div>
                    <div class="flag-button">
                        <button class="btn btn-sm btn-default" onclick="sc.flag.toSite('fr')">Fran&#231;ais</button>
                    </div>
                    <div class="flag-button">
                        <button class="btn btn-sm btn-default" onclick="sc.flag.toSite('pl')">Polski</button>
                    </div>
                </div>
            </div>
            <div class="flag-region">
                <a href="https://ca.megabus.com" title="Megabus in Canada">
	                <h2>Megabus in Canada</h2>
	            </a>
                <div class="flag-item">
                    <img class="img-responsive" src="images/flag-canada.png"/>
                </div>
                <div>
                    <div class="flag-button">
                        <button class="btn btn-sm btn-default" onclick="sc.flag.toSite('ca')">English</button>
                    </div>
                    <div class="flag-button">
                        <button class="btn btn-sm btn-default" onclick="sc.flag.toSite('frca')">Fran&#231;ais</button>
                    </div>
                </div>
            </div>
            <div class="flag-region">
                <h2>Megabus in Europe</h2>
                <div class="flag-item">
                    <img class="img-responsive" src="images/flag-euro.png"/>
                </div>
                <div>
                    <div class="flag-button">
                        <button class="btn btn-sm btn-default" onclick="sc.flag.toSite('eu')">English</button>
                    </div>
                </div>
            </div>


        </div>
    </div>
</main>

<script type="text/javascript">
//<![CDATA[
(function() {
var _analytics_scr = document.createElement('script');
_analytics_scr.type = 'text/javascript'; _analytics_scr.async = true; _analytics_scr.src = '/_Incapsula_Resource?SWJIYLWA=719d34d31c8e3a6e6fffd425f7e032f3&ns=2&cb=1971420060';
var _analytics_elem = document.getElementsByTagName('script')[0]; _analytics_elem.parentNode.insertBefore(_analytics_scr, _analytics_elem);
})();
// ]]>
</script></body>
</html>
