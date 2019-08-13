<!DOCTYPE html>
<html  >
<head id="head"><title>
	Human Capital &amp; Benefit Administration Solutions | Alight
</title><meta name="description" content="Work and life. Companies and people. Innovation and understanding. We understand the powerful human connections that create success for your organization." /> 
<meta charset="UTF-8" /> 
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge"><script type="text/javascript">window.NREUM||(NREUM={});NREUM.info = {"beacon":"bam.nr-data.net","errorBeacon":"bam.nr-data.net","licenseKey":"d68deaa78a","applicationID":"275826687","transactionName":"MV1XY0cDXEoDWxANXQgXdGRlTVFUEUgFA1cVF0VYRxZTVRZdCRReB0xQGVQRQkE=","queueTime":0,"applicationTime":27,"agent":"","atts":""}</script><script type="text/javascript">window.NREUM||(NREUM={}),__nr_require=function(e,n,t){function r(t){if(!n[t]){var o=n[t]={exports:{}};e[t][0].call(o.exports,function(n){var o=e[t][1][n];return r(o||n)},o,o.exports)}return n[t].exports}if("function"==typeof __nr_require)return __nr_require;for(var o=0;o<t.length;o++)r(t[o]);return r}({1:[function(e,n,t){function r(){}function o(e,n,t){return function(){return i(e,[c.now()].concat(u(arguments)),n?null:this,t),n?void 0:this}}var i=e("handle"),a=e(3),u=e(4),f=e("ee").get("tracer"),c=e("loader"),s=NREUM;"undefined"==typeof window.newrelic&&(newrelic=s);var p=["setPageViewName","setCustomAttribute","setErrorHandler","finished","addToTrace","inlineHit","addRelease"],d="api-",l=d+"ixn-";a(p,function(e,n){s[n]=o(d+n,!0,"api")}),s.addPageAction=o(d+"addPageAction",!0),s.setCurrentRouteName=o(d+"routeName",!0),n.exports=newrelic,s.interaction=function(){return(new r).get()};var m=r.prototype={createTracer:function(e,n){var t={},r=this,o="function"==typeof n;return i(l+"tracer",[c.now(),e,t],r),function(){if(f.emit((o?"":"no-")+"fn-start",[c.now(),r,o],t),o)try{return n.apply(this,arguments)}catch(e){throw f.emit("fn-err",[arguments,this,e],t),e}finally{f.emit("fn-end",[c.now()],t)}}}};a("actionText,setName,setAttribute,save,ignore,onEnd,getContext,end,get".split(","),function(e,n){m[n]=o(l+n)}),newrelic.noticeError=function(e,n){"string"==typeof e&&(e=new Error(e)),i("err",[e,c.now(),!1,n])}},{}],2:[function(e,n,t){function r(e,n){if(!o)return!1;if(e!==o)return!1;if(!n)return!0;if(!i)return!1;for(var t=i.split("."),r=n.split("."),a=0;a<r.length;a++)if(r[a]!==t[a])return!1;return!0}var o=null,i=null,a=/Version\/(\S+)\s+Safari/;if(navigator.userAgent){var u=navigator.userAgent,f=u.match(a);f&&u.indexOf("Chrome")===-1&&u.indexOf("Chromium")===-1&&(o="Safari",i=f[1])}n.exports={agent:o,version:i,match:r}},{}],3:[function(e,n,t){function r(e,n){var t=[],r="",i=0;for(r in e)o.call(e,r)&&(t[i]=n(r,e[r]),i+=1);return t}var o=Object.prototype.hasOwnProperty;n.exports=r},{}],4:[function(e,n,t){function r(e,n,t){n||(n=0),"undefined"==typeof t&&(t=e?e.length:0);for(var r=-1,o=t-n||0,i=Array(o<0?0:o);++r<o;)i[r]=e[n+r];return i}n.exports=r},{}],5:[function(e,n,t){n.exports={exists:"undefined"!=typeof window.performance&&window.performance.timing&&"undefined"!=typeof window.performance.timing.navigationStart}},{}],ee:[function(e,n,t){function r(){}function o(e){function n(e){return e&&e instanceof r?e:e?f(e,u,i):i()}function t(t,r,o,i){if(!d.aborted||i){e&&e(t,r,o);for(var a=n(o),u=v(t),f=u.length,c=0;c<f;c++)u[c].apply(a,r);var p=s[y[t]];return p&&p.push([b,t,r,a]),a}}function l(e,n){h[e]=v(e).concat(n)}function m(e,n){var t=h[e];if(t)for(var r=0;r<t.length;r++)t[r]===n&&t.splice(r,1)}function v(e){return h[e]||[]}function g(e){return p[e]=p[e]||o(t)}function w(e,n){c(e,function(e,t){n=n||"feature",y[t]=n,n in s||(s[n]=[])})}var h={},y={},b={on:l,addEventListener:l,removeEventListener:m,emit:t,get:g,listeners:v,context:n,buffer:w,abort:a,aborted:!1};return b}function i(){return new r}function a(){(s.api||s.feature)&&(d.aborted=!0,s=d.backlog={})}var u="nr@context",f=e("gos"),c=e(3),s={},p={},d=n.exports=o();d.backlog=s},{}],gos:[function(e,n,t){function r(e,n,t){if(o.call(e,n))return e[n];var r=t();if(Object.defineProperty&&Object.keys)try{return Object.defineProperty(e,n,{value:r,writable:!0,enumerable:!1}),r}catch(i){}return e[n]=r,r}var o=Object.prototype.hasOwnProperty;n.exports=r},{}],handle:[function(e,n,t){function r(e,n,t,r){o.buffer([e],r),o.emit(e,n,t)}var o=e("ee").get("handle");n.exports=r,r.ee=o},{}],id:[function(e,n,t){function r(e){var n=typeof e;return!e||"object"!==n&&"function"!==n?-1:e===window?0:a(e,i,function(){return o++})}var o=1,i="nr@id",a=e("gos");n.exports=r},{}],loader:[function(e,n,t){function r(){if(!E++){var e=x.info=NREUM.info,n=l.getElementsByTagName("script")[0];if(setTimeout(s.abort,3e4),!(e&&e.licenseKey&&e.applicationID&&n))return s.abort();c(y,function(n,t){e[n]||(e[n]=t)}),f("mark",["onload",a()+x.offset],null,"api");var t=l.createElement("script");t.src="https://"+e.agent,n.parentNode.insertBefore(t,n)}}function o(){"complete"===l.readyState&&i()}function i(){f("mark",["domContent",a()+x.offset],null,"api")}function a(){return O.exists&&performance.now?Math.round(performance.now()):(u=Math.max((new Date).getTime(),u))-x.offset}var u=(new Date).getTime(),f=e("handle"),c=e(3),s=e("ee"),p=e(2),d=window,l=d.document,m="addEventListener",v="attachEvent",g=d.XMLHttpRequest,w=g&&g.prototype;NREUM.o={ST:setTimeout,SI:d.setImmediate,CT:clearTimeout,XHR:g,REQ:d.Request,EV:d.Event,PR:d.Promise,MO:d.MutationObserver};var h=""+location,y={beacon:"bam.nr-data.net",errorBeacon:"bam.nr-data.net",agent:"js-agent.newrelic.com/nr-1130.min.js"},b=g&&w&&w[m]&&!/CriOS/.test(navigator.userAgent),x=n.exports={offset:u,now:a,origin:h,features:{},xhrWrappable:b,userAgent:p};e(1),l[m]?(l[m]("DOMContentLoaded",i,!1),d[m]("load",r,!1)):(l[v]("onreadystatechange",o),d[v]("onload",r)),f("mark",["firstbyte",u],null,"api");var E=0,O=e(5)},{}]},{},["loader"]);</script>
<meta name="viewport" content="width=device-width,user-scalable=no,maximum-scale=1.0,initial-scale=1.0">

<meta property="og:url" content="https://alight.com/" />  
<meta property="og:type" content="article" />  
<meta property="og:title" content="Human Capital & Benefit Administration Solutions" />  
<meta property="og:description" content="Work and life. Companies and people. Innovation and understanding. We understand the powerful human connections that create success for your organization." />  
<meta property="og:image" content="https://alight.com/getmedia/242e4abc-3478-4352-8afd-bef96ead70ea/generic-og-2.jpg?width=1200&height=627&ext=.jpg" />  
<link rel="canonical" href="https://alight.com/" />  
  <!-- Twitter Card data -->

<meta name="msvalidate.01" content="25D6C35A114DEE7B3EEE26DC3AF4FF1F" />
<!-- stylesheet -->
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<!-- <link href="/dist/css/global.css" rel="stylesheet"> -->
<link href="/CMSPages/GetCSS.aspx?stylesheetname=Alight-Stylesheet&v=20190709.1" rel="stylesheet">

<!-- jquery -->
<script src="/dist/js/jquery.min.js" type="text/javascript"></script>
<!-- app.js dependencies -->
<!-- <script src="/dist/js/app-vendor-min.js" type="text/javascript"></script>-->
<script src="https://go.alight.com/rs/777-ERD-451/images/app-vendor-min-loop.js" type="text/javascript"></script>
 
<link href="/assets/icon/favicon.ico" type="image/x-icon" rel="shortcut icon"/>
<link href="/assets/icon/favicon.ico" type="image/x-icon" rel="icon"/>
<!--GTM Data Layer -->
<script>
  dataLayer = [];
</script>
<!--End GTM Data Layer -->
<!-- Google Optimize Page Hiding -->
<style>.async-hide { opacity: 0 !important} </style>
<script>(function(a,s,y,n,c,h,i,d,e){s.className+=' '+y;h.start=1*new Date;
h.end=i=function(){s.className=s.className.replace(RegExp(' ?'+y),'')};
(a[n]=a[n]||[]).hide=h;setTimeout(function(){i();h.end=null},c);h.timeout=c;
})(window,document.documentElement,'async-hide','dataLayer',4000,
{'GTM-PVX6PH7':true});</script>
<!-- End Google Optimize Page Hiding -->
<!-- Google Optimize -->
<script>
	 (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
	(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
	 m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
	 })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');
	 ga('create', 'UA-98426580-1', 'auto');
	 ga('require', 'GTM-PVX6PH7');
  ga(function(tracker) {
	window.dataLayer.push({
	  'event' : 'gaTrackerReady',
	  'GACLIENTID' : tracker.get('clientId')
	});
  });
</script>
<!-- End Google Optimize -->
<!-- Google Tag Manager -->
<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
})(window,document,'script','dataLayer','GTM-MWJ2ZHJ');
</script>
<!-- End Google Tag Manager -->
<!-- Marketo Tracking Script -->
<script type="text/javascript">
(function() {
  var didInit = false;
  function initMunchkin() {
    if(didInit === false) {
      didInit = true;
      Munchkin.init('777-ERD-451');
    }
  }
  var s = document.createElement('script');
  s.type = 'text/javascript';
  s.async = true;
  s.src = '//munchkin.marketo.net/munchkin.js';
  s.onreadystatechange = function() {
    if (this.readyState == 'complete' || this.readyState == 'loaded') {
      initMunchkin();
    }
  };
  s.onload = initMunchkin;
  document.getElementsByTagName('head')[0].appendChild(s);
})();
</script></head>
<body class="LTR ENUS ContentBody" >
     <!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-MWJ2ZHJ"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<!-- End Google Tag Manager (noscript) -->
<script type="application/ld+json">
{
	"@context":"http://schema.org",
	"@type":"Organization",
	"logo":{
		"@type":"ImageObject",
		"name":"Logo",
		"@id":"https://alight.com/getmedia/b292efb6-369f-47c1-a266-f01a5c8415e1/logo-black.png"
	},   
	"name": "Alight Solutions",
    "sameAs":[
		"https://www.facebook.com/AlightGlobal/",
		"https://twitter.com/AlightSolutions/",
		"https://www.linkedin.com/company/alightsolutions/"
	],
	"url":"https://alight.com"
}
</script>
    <form method="post" action="/" id="form">
<input type="hidden" name="__CMSCsrfToken" id="__CMSCsrfToken" value="i4s5bTtpy5+Kufhw98EGvogedI6dSSFg1I6Ya4mBWMDQ3ILF7+gAT/CR+l2f3xqV5YGKyVAlWXULnzen/yd/wcCgEb7fk3BynrUA9oK/y7Y=" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="FdtZZOnCxLOZFnb34+TxZ7+HT7p57fRDfsSZMvOL3lp5MBvrUf6+WW3uzYRDvwprv+RQFEZXayx7pj1wKbNaQK5VN9OwrKaQq53aVpL7CuudpCu6qeS9gUJ5Abi5N5q3ANgzolRRFwtIK7ws6pk9MNudSMvv0X+F/RvUaByfq8NRq1IVVTgTcW5yxBNyuC8YI9EncVS12a+nfHZcFqiZ9C+ZU+1s5B3s1IqlM+KN1LzebEIPI7CUrlqpbpvecAZhxwfFAURSXuL24tF6LlGRIv/iqN2TP9sX3sA0f4gn6rMJavyoavDDD7/Sbgcp4jOtjpARxV9EDnbKpv/KTgx6qSZBqdK/X91+yqRImXGJ22e2zra7hFYhMrRl/rnZ3G1rDz8+plqLLImq+c4j3ffEsW/JJhdUtQhpuaVswgXHjNOd2IG0yaD+HYoQkStv7wcI+KMAwja52Iw2mDD8IX9KLR4T0YTtJd6RthZhptNi3DgNY/rhRAnPhCS2BhI40a+2rd7hDRXmcvkgfFu7cc5UPE1mt3lVPLJDCMw4IFRvI3FapTIAY7It+DXQuKXS86d7IPD/J8WgfPTR3AWjhpVXOxlOopun76KtgXIYL1d+33sgX61QL1VC5C3900kZNUn1AsfD8gLEZN6lTHpSuyh5vNKw21k9oFGXNwonXE4839R5GTuF9MoXC3QKgwiIxXoXOXI/JEfla+dloS19fZYSkPtjrdgINZC0dWBnN18RZJF/12lhaVxRUhcmPUkAkv8h5djMxeSRQoHmPsBxd0IthsvcqNCX0MkoqBEOOl9Uyw6bxORfWTxRwxAkCwJHOwNN" />

<input type="hidden" name="lng" id="lng" value="en-US" />
<script src="/CMSPages/GetResource.ashx?scriptfile=%7e%2fCMSScripts%2fWebServiceCall.js" type="text/javascript"></script>
<script type="text/javascript">
	//<![CDATA[

function PM_Postback(param) { if (window.top.HideScreenLockWarningAndSync) { window.top.HideScreenLockWarningAndSync(1080); } if(window.CMSContentManager) { CMSContentManager.allowSubmit = true; }; __doPostBack('m$am',param); }
function PM_Callback(param, callback, ctx) { if (window.top.HideScreenLockWarningAndSync) { window.top.HideScreenLockWarningAndSync(1080); }if (window.CMSContentManager) { CMSContentManager.storeContentChangedStatus(); };WebForm_DoCallback('m$am',param,callback,ctx,null,true); }
//]]>
</script>
<script src="/ScriptResource.axd?d=qph9tUZ6hGPLbkznkRkqTU3BSJAqY418MU8jqeawcaHmdxEOSn_Q8awh_YW6Kp9w6Jl1o3eGYXmKOFZGlmaJcLU3fbG1ugGg1U0Z2mvmiBOfKr9a4Ew-ojghvo2OUvWb0&amp;t=7c776dc1" type="text/javascript"></script>
<script type="text/javascript">
	//<![CDATA[

var CMS = CMS || {};
CMS.Application = {
  "isRTL": "false",
  "isDebuggingEnabled": false,
  "applicationUrl": "/",
  "imagesUrl": "/CMSPages/GetResource.ashx?image=%5bImages.zip%5d%2f",
  "isDialog": false
};

//]]>
</script>
<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="A5343185" />
    
    <div id="ctxM">

</div>
    <div class="wrapper">
  <!-- header -->
  <header class="site-header" role="banner">
    <!--Secondary Nav-->
<div class="navbar secondary-nav">
<div class="container-fluid">
<div class="navbar-header"><a class="navbar-brand" href="/"><span class="sr-only">Alight</span></a></div>

<ul class="social list-inline navbar-right">
	<li><a class="ss-linkedin" href="https://www.linkedin.com/company/alightsolutions/" target="_blank" title="LinkedIn"><span class="sr-only">LinkedIn</span></a></li>
	<li><a class="ss-twitter" href="https://twitter.com/AlightSolutions" target="_blank" title="Twitter"><span class="sr-only">Twitter</span></a></li>
	<li><a class="ss-facebook" href="https://www.facebook.com/Alight-Solutions-118543065376546" target="_blank" title="Facebook"><span class="sr-only">Facebook</span></a></li>
	<li><a class="ss-youtube" href="https://www.youtube.com/channel/UCccOxWy3Mv_igsPoO9Hmvwg" target="_blank" title="YouTube"><span class="sr-only">YouTube</span></a></li>
	<li><a class="ss-instagram" href="https://www.instagram.com/alight_solutions" target="_blank" title="Instagram"><span class="sr-only">Instagram</span></a></li>
</ul>

<ul class="nav navbar-nav navbar-right">
	<li><a href="/find-your-hr-website">Find your HR website</a></li>
	<li><a href="https://careers.alight.com">Careers</a></li>
	<li><a href="/contact-alight-sales">Talk to Sales</a></li>
</ul>
</div>
</div>
<style type="text/css">.sub-nav-button {
        background-attachment: scroll;
        background-clip: border-box;
        background-color: rgb(255, 242, 0) !important;
        background-image: none;
        background-origin: padding-box;
        background-position: 0% 0%;
        background-position-x: 0%;
        background-position-y: 0%;
        background-repeat: repeat;
        background-size: auto auto;
        border-bottom-color: rgb(37, 37, 38);
        border-bottom-left-radius: 0px;
        border-bottom-right-radius: 0px;
        border-bottom-style: none;
        border-bottom-width: 0px;
        border-image-outset: 0 0 0 0;
        border-image-repeat: stretch stretch;
        border-image-slice: 100% 100% 100% 100%;
        border-image-source: none;
        border-image-width: 1 1 1 1;
        border-left-color: rgb(37, 37, 38);
        border-left-style: none;
        border-left-width: 0px;
        border-right-color: rgb(37, 37, 38);
        border-right-style: none;
        border-right-width: 0px;
        border-top-color: rgb(37, 37, 38);
        border-top-left-radius: 0px;
        border-top-right-radius: 0px;
        border-top-style: none;
        border-top-width: 0px;
        box-sizing: border-box;
        color: rgb(37, 37, 38);
        cursor: pointer;
        display: inline-block !important;
        font-family: "FSThriveElliot-Heavy" !important;
        font-size: 14px !important;
        font-weight: 400 !important;
        letter-spacing: 1.5px;
        line-height: 17.5px;
        margin: 0px !important;
        min-width: 200px;
        padding-bottom: 12px;
        padding-left: 30px;
        padding-right: 30px;
        padding-top: 12px;
        text-align: center;
        text-decoration: none;
        text-decoration-color: rgb(37, 37, 38);
        text-decoration-line: none;
        text-decoration-style: solid;
        text-transform: uppercase;
        touch-action: manipulation;
        transition-delay: 0s;
        transition-duration: 0.3s;
        transition-property: all;
        transition-timing-function: ease;
        vertical-align: middle;
        white-space: nowrap;
        -moz-border-bottom-colors: none;
        -moz-border-left-colors: none;
        -moz-border-right-colors: none;
        -moz-border-top-colors: none;
        -moz-user-select: none;
    }

    .sub-nav-button:hover {
        background: #a3a5a8 !important;
        color: #fff !important;
    }

    .primary-nav .dropdown-menu-full .dropdown-section li.is-active > a::before, .primary-nav .dropdown-menu-full .dropdown-section li.is-active > a::after, .primary-nav .dropdown-menu-full .dropdown-section li a:hover:not(.panel-back):not(.panel-link)::before, .primary-nav .dropdown-menu-full .dropdown-section li a:hover:not(.panel-back):not(.panel-link)::after, .primary-nav .dropdown-menu-full .dropdown-section li.active-page > a::before, .primary-nav .dropdown-menu-full .dropdown-section li.active-page > a::after {
    	height:0px;
    }
    a.selected-menu-item + figcaption {
	    padding: 10px;
	    background: #fff200;
	}

	.dropdown-menu.solutions-menu .panel-full, .dropdown-menu.insights-menu .panel-full {
		background: url('/getmedia/176a5ef7-c4db-4375-9146-35dcb3dde6d9/background-arc.svg') 100% 100%;
	}
	@media (max-width: 850px) {
		.dropdown-menu.solutions-menu .panel-full, .dropdown-menu.insights-menu .panel-full {
			background: #f9f9f9;
		}
	}

	.dropdown-menu.solutions-menu .panel-full .nav-ce {
            background-color: #BCBEC0;
            padding-top: 5px;
            padding-bottom: 10px;
            margin-top: 10px;
        }
        
        .dropdown-menu.solutions-menu .panel-full .nav-ce .col-sm-4 {
            padding-left: 0;
            padding-right: 0;
        }
        
        @media (min-width: 768px) {
            .dropdown-menu.solutions-menu .panel-full .nav-ce {
                margin-top: 30px;
                text-align: center;
                margin-left: 0px;
                margin-right: 0px;
            }
            .dropdown-menu.solutions-menu .panel-full .nav-ce ul li:first-of-type {
                border-top: solid 1px #929597;
            }
        }
</style>
<script type="text/javascript">
$(function() {
	$('.dropdown-menu-full').on('click', function(event){
	    // The event won't be propagated up to the document NODE and 
	    // therefore delegated events won't be fired
	    event.stopPropagation();
	});
});
</script>
<div class="primary-nav">
<div class="container-fluid">
<nav class="navbar"><!--Mobile Toggle--><button aria-expanded="false" class="navbar-toggle collapsed" data-target="#PrimaryNav" data-toggle="collapse" type="button"><span class="toggle-title">Menu</span> <span class="icon-bar top-bar">&nbsp;</span> <span class="icon-bar middle-bar">&nbsp;</span> <span class="icon-bar bottom-bar">&nbsp;</span></button><!--Navbar - Search-->
<div class="primary-search navbar-right navbar-form" role="search"><label class="sr-only" for="primarySearch">Search</label> <input class="form-control" id="primarySearch" type="text" />&nbsp;</div>
<!--Navbar - Nav-->

<div class="collapse navbar-collapse" id="PrimaryNav">
<ul class="primary-wrap nav navbar-nav"><!--What We Do-->
	<li class="full-dropdown dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Our Solutions</a> <a class="toggle-btn dropdown-toggle" data-toggle="dropdown" href="#"> <span class="sr-only">Toggle Menu</span> </a>

	<div class="dropdown-menu-full dropdown-menu solutions-menu">
	<ul class="panel-full">
		<li class="dropdown-section">
		<div class="row">
		<div class="col-sm-3"><a class="header-link heading-quaternary dropdown-title" href="/health-solutions">Health Solutions</a>

		<ul>
			<li><a href="/health-solutions/benefits-admin">Health Benefits Administration</a></li>
			<li><a href="/health-solutions/healthcare-navigation">Compass Healthcare Navigation Solutions</a></li>
			<li><a href="/health-solutions/reimbursement-accounts">Reimbursement Accounts</a></li>
			<li><a href="/health-solutions/dependent-verification-services">Dependent Verification Services</a></li>
			<li><a href="/health-solutions/compliance">Compliance</a></li>
		</ul>
		</div>

		<div class="col-sm-3"><a class="header-link heading-quaternary dropdown-title" href="/wealth-solutions">Wealth Solutions</a>

		<ul>
			<li><a href="/wealth-solutions/defined-contribution-administration">Defined Contribution Administration</a></li>
			<li><a href="/wealth-solutions/defined-benefits-administration">Defined Benefit Administration</a></li>
			<li><a href="/wealth-solutions/wealthspark">WealthSpark&trade;</a></li>
			<li><a href="https://ideas.alight.com/health-and-wealth-solutions/alight-financial-planning-services" target="_blank">Managed Accounts &amp; Advisory</a></li>
			<li><a href="https://ideas.alight.com/health-and-wealth-solutions/self-directed-brokerage-services" target="_blank">Self-Directed Brokerage</a></li>
			<li><a href="https://ideas.alight.com/health-and-wealth-solutions/pension-de-risking-product-info-sheet" target="_blank">Pension De-risking</a></li>
		</ul>
		</div>

		<div class="col-sm-3"><a class="header-link heading-quaternary dropdown-title" href="/hcm-solutions">HCM Solutions</a>

		<ul>
			<li><a href="/hcm-solutions?tabopen=advisory">HCM Cloud Advisory</a></li>
			<li><a href="/hcm-solutions?tabopen=cds">HCM Cloud Deployment</a></li>
			<li><a href="/hcm-solutions?tabopen=ams">HCM Application Management Services (AMS)</a></li>
			<li><a href="/hcm-solutions?tabopen=bpa">Cloud HCM and Payroll Administration</a></li>
		</ul>
		</div>

		<div class="col-sm-3"><a class="header-link heading-quaternary dropdown-title" href="/financial-management-solutions">Financial Management Solutions</a>

		<ul>
			<li><a href="/financial-management-solutions/financial-cloud-advisory">Financial Cloud Advisory</a></li>
			<li><a href="/financial-management-solutions/financial-cloud-deployment">Financial Cloud Deployment</a></li>
			<li><a href="/financial-management-solutions/financial-application-management-services">Financial Application Management Services (AMS)</a></li>
		</ul>
		</div>
		</div>

		<div class="row nav-ce">
		<div class="col-sm-12"><a class="header-link heading-quaternary dropdown-title" href="/enabling-capabilities-and-technologies">Enabling Capabilities and Technologies</a>

		<div class="col-sm-4">
		<ul>
			<li><a href="/upoint-and-digital-innovation">UPoint&reg; &amp; Digital Innovation</a></li>
		</ul>
		</div>

		<div class="col-sm-4">
		<ul>
			<li><a href="/communications-consulting">Communications Consulting</a></li>
		</ul>
		</div>

		<div class="col-sm-4">
		<ul>
			<li><a href="/research">Research</a></li>
		</ul>
		</div>
		</div>
		</div>
		</li>
	</ul>
	</div>
	</li>
	<li class="full-dropdown dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Who We Serve</a> <a class="toggle-btn dropdown-toggle" data-toggle="dropdown" href="#"> <span class="sr-only">Toggle Menu</span> </a>
	<div class="dropdown-menu-full dropdown-menu">
	<div class="col-sm-3 wws-segment-box" style="background-color:#cecece"><img alt="" src="/getmedia/425c5f72-c02b-433d-8622-e7bd58699709/who-we-serve-employer-size.png" />
	<h3 class="heading-quaternary segment-box-title">Employer Size</h3>

	<p>Proven, market-leading solutions for both growing and complex organizations</p>
	<a class="segment-box-link" href="/under-5k-employees">&lt; 5K Employees &raquo;</a><br />
	<a class="segment-box-link" href="/5k-to-10k-employees">5K - 10K Employees &raquo;</a><br />
	<a class="segment-box-link" href="/over-10k-employees">&gt; 10K Employees &raquo;</a></div>

	<div class="col-sm-3 wws-segment-box" style="background-color:#d5d5d5"><img alt="" src="/getmedia/7f1038b7-11d5-453c-a519-d822e42f043f/who-we-serve-international.png" />
	<h3 class="heading-quaternary segment-box-title">International</h3>

	<p>Across the globe, Alight is ready to help your organization thrive</p>
	<a class="segment-box-link" href="/emea">EMEA &raquo;</a><br />
	<a class="segment-box-link" href="/apac">APAC &raquo;</a></div>

	<div class="col-sm-3 wws-segment-box" style="background-color:#dcdcdc"><img alt="" src="/getmedia/25dce3e2-555a-41ca-bf46-afbdfd45052e/who-we-serve-public-sector.png" />
	<h3 class="heading-quaternary segment-box-title">Public sector</h3>

	<p>Proven, cost-effective solutions that meet your agency&rsquo;s complex needs</p>
	<a class="segment-box-link" href="/public-sector">Learn More &raquo;</a></div>

	<div class="col-sm-3 wws-segment-box" style="background-color:#e8e8e8"><img alt="" src="/getmedia/c53aec32-7e47-48a1-a6e3-e54bd16a98e3/who-we-serve-brokers.png" />
	<h3 class="heading-quaternary segment-box-title">Brokers</h3>

	<p>Work with an independent partner dedicated to your success</p>
	<a class="segment-box-link" href="/brokers">Learn More &raquo;</a></div>
	</div>
	</li>
	<li class="full-dropdown dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Partner Ecosystem</a> <a class="toggle-btn dropdown-toggle" data-toggle="dropdown" href="#"> <span class="sr-only">Toggle Menu</span> </a>
	<div class="dropdown-menu-full dropdown-menu">
	<div class="col-sm-4 pe-segment-box" style="background-color:#dcdcdc"><a href="/technology-partners"><img alt="" src="/getmedia/4bfc4925-3353-4136-938c-ec828e5e841b/partner-ecosystem-tech-partners.png" /></a>
	<h3 class="heading-quaternary segment-box-title header-link"><a href="/technology-partners">Technology partners</a></h3>

	<ul class="dropdown-section">
		<li><a href="/technology-partners/workday">Workday</a></li>
		<li><a href="/technology-partners/sap">SAP SuccessFactors</a></li>
		<li><a href="/technology-partners?tabopen=cornerstone">Cornerstone OnDemand</a></li>
		<li><a href="/technology-partners?tabopen=oracle">Oracle</a></li>
	</ul>
	</div>

	<div class="col-sm-4 pe-segment-box" style="background-color:#d5d5d5"><a href="/partner-network"><img alt="" src="/getmedia/459352aa-8fe8-4a16-8026-0fb5ffc37a34/partner-ecosystem-apn.png" /></a>

	<h3 class="heading-quaternary segment-box-title header-link"><a href="/partner-network">Alight Partner Network</a></h3>

	<p>A curated network of solutions to help your people make smarter, more proactive decisions</p>
	<a class="segment-box-link" href="/partner-network">Learn More &raquo;</a></div>

	<div class="col-sm-4 pe-segment-box" style="background-color:#cecece"><a href="/innovation-partners"><img alt="" src="/getmedia/cc0fc950-6633-4fe8-9609-8cc73c477d6a/partner-ecosystem-innovation.png" /></a>

	<h3 class="heading-quaternary segment-box-title header-link"><a href="/innovation-partners">Innovation partners</a></h3>

	<ul class="dropdown-section">
		<li><a href="/innovation-partners?tabopen=1871">1871</a></li>
		<li><a href="/innovation-partners?tabopen=wipro">Wipro</a></li>
	</ul>
	</div>
	</div>
	</li>
	<!-- who we help remove --><!--Insights & Resources-->
	<li class="full-dropdown dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="/insights">Research &amp; Insights</a> <a class="toggle-btn dropdown-toggle" data-toggle="dropdown" href="#"> <span class="sr-only">Toggle Menu</span> </a>
	<div class="dropdown-menu-full dropdown-menu insights-menu">
	<ul class="panel-full">
		<li class="dropdown-section">
		<div class="row">
		<div class="col-md-6 col-sm-12">
		<h3 class="heading-quaternary dropdown-title">By solution</h3>

		<div class="col-md-4 col-sm-6" style="padding-left:0px; padding-right:0px">
		<ul>
			<li><a href="https://ideas.alight.com/health" style="font-family: 'FSThriveElliot-Heavy'; font-weight: normal;">Health Solutions</a></li>
			<li><a href="https://ideas.alight.com/health-benefits-administration-product-page">Health Benefits Administration</a></li>
			<li><a href="https://ideas.alight.com/advocacy-services">Compass Healthcare Navigation Solutions</a></li>
			<li><a href="https://ideas.alight.com/health-reimbursement-account-solutions-product-page">Reimbursement Accounts</a></li>
			<li><a href="https://ideas.alight.com/dependent-verification-services">Dependent Verification Services</a></li>
			<li><a href="https://ideas.alight.com/compliance">Compliance</a></li>
			<li><a href="https://ideas.alight.com/consumer-health-mindset">Consumer Health Mindset&reg;</a></li>
			<li><a href="https://ideas.alight.com/consumer-healthcare-education">Consumer Healthcare Education</a></li>
		</ul>
		</div>

		<div class="col-md-4 col-sm-6" style="padding-left:0px; padding-right:0px">
		<ul>
			<li><a href="https://ideas.alight.com/wealth" style="font-family: 'FSThriveElliot-Heavy'; font-weight: normal;">Wealth Solutions</a></li>
			<li><a href="https://ideas.alight.com/defined-contribution">Defined Contribution Administration</a></li>
			<li><a href="https://ideas.alight.com/defined-benefit">Defined Benefit Administration</a></li>
			<li><a href="https://ideas.alight.com/financial-mindset">Financial Mindset&reg;</a></li>
		</ul>
		</div>

		<div class="col-md-4 col-sm-6" style="padding-left:0px; padding-right:0px">
		<ul>
			<li><a href="https://ideas.alight.com/hcm-solutions" style="font-family: 'FSThriveElliot-Heavy'; font-weight: normal;">HCM &amp; Financial Management Solutions</a></li>
			<li><a href="https://ideas.alight.com/considering-the-cloud">HCM Cloud Advisory</a></li>
			<li><a href="https://ideas.alight.com/deploying-the-cloud">HCM Cloud Deployment</a></li>
			<li><a href="https://ideas.alight.com/live-in-the-cloud">HCM Application Management Services (AMS)</a></li>
			<li><a href="https://ideas.alight.com/cloud-hcm-and-payroll-administration">Cloud HCM and Payroll Administration</a></li>
			<li><a href="https://ideas.alight.com/workforce-mindset">Workforce Mindset&reg;</a></li>
		</ul>
		</div>
		</div>

		<div class="col-md-3 col-sm-6">
		<h3 class="heading-quaternary dropdown-title">By Partner</h3>

		<ul>
			<li><a href="https://ideas.alight.com/workday">Workday</a></li>
			<li><a href="https://ideas.alight.com/sap-successfactors">SAP SuccessFactors</a></li>
			<li><a href="https://ideas.alight.com/cornerstone-ondemand">Cornerstone OnDemand</a></li>
			<li><a href="https://ideas.alight.com/oracle">Oracle</a></li>
			<li><a href="https://ideas.alight.com/alight-partner-network">Alight Partner Network</a></li>
		</ul>
		</div>

		<div class="col-md-3 col-sm-6">
		<h3 class="heading-quaternary dropdown-title">By resource type</h3>

		<ul>
			<li><a href="https://ideas.alight.com/articles">Articles</a></li>
			<li><a href="https://ideas.alight.com/product-brochures">Brochures</a></li>
			<li><a href="https://ideas.alight.com/customer-success-stories">Customer success stories</a></li>
			<li><a href="https://ideas.alight.com/guides">Guides</a></li>
			<li><a href="https://ideas.alight.com/industry-reports">Industry reports</a></li>
			<li><a href="https://ideas.alight.com/infographics">Infographics</a></li>
			<li><a href="https://ideas.alight.com/info-sheets">Info sheet</a></li>
			<li><a href="https://ideas.alight.com/research-highlights">Research highlights</a></li>
			<li><a href="https://ideas.alight.com/videos">Videos</a></li>
			<li><a href="https://ideas.alight.com/webinars/webinars-and-replays">Webinars and replays</a></li>
			<li><a href="https://ideas.alight.com/whitepapers">White papers</a></li>
		</ul>
		</div>
		</div>
		</li>
	</ul>
	</div>
	</li>
	<!--Our Story-->
	<li class="full-dropdown dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="/our-story/">About Us</a> <a class="toggle-btn dropdown-toggle" data-toggle="dropdown" href="#"> <span class="sr-only">Toggle Menu</span> </a>
	<div class="dropdown-menu-full dropdown-menu">
	<ul class="panel-left">
		<li class="dropdown-section"><a class="dropdown-title heading-quaternary" href="#">About Us</a>
		<ul class="sub-section">
			<li><a href="/our-story/">Explore our story</a></li>
			<li><a href="/our-story/leadership/">Leadership team</a></li>
			<li><a href="/our-story/newsroom/">Newsroom</a></li>
			<li><a href="/our-story/awards/">Awards</a></li>
			<li><a href="/our-story/events-and-webinars/">Events and webinars</a></li>
			<li><a href="/find-your-hr-website/">Find your HR website</a></li>
			<li><a href="https://careers.alight.com/">Careers</a></li>
			<li><a href="/contact-alight-sales/">Talk to Sales</a></li>
		</ul>
		</li>
	</ul>

	<div class="panel-right panel-default">
	<div class="row">
	<div class="col-sm-4">&nbsp;</div>

	<div class="col-sm-4">
	<h3 class="heading-quaternary" style="padding-left:0px;">Featured News</h3>
	</div>

	<div class="col-sm-4">&nbsp;</div>
	</div>

	<div class="row">
	<div class="col-sm-4">
	<p>
As a leading provider of human capital solutions, we help our clients and their people navigate the complexity of health, wealth and HR. We combine data-driven, consumer-centered technology with personalized care and service to deliver a superior customer experience. Our dedicated colleagues across 19 global centers help 23 million people and their 11 million family members simplify work and life, both now and in the future. At Alight, we are reimagining how people and organizations thrive.
</p>
	</div>

	<div class="col-sm-4">
	<figure><a class="nav-feature" href="/our-story/newsroom/alight-solutions-named-to-iaop-s-best-of-global"><img alt="" src="/getmedia/5ef08e6d-ef17-419b-898d-b44ce3b1dc08/featured-news-IAOP-best-of-global-outsourcing-2019.jpg?width=300" /> </a>

	<figcaption><a class="nav-feature" href="/our-story/newsroom/alight-solutions-named-to-iaop-s-best-of-global">IAOP recognizes Alight as one of best-of-the-best on its 2019 Best of Global Outsourcing 100 list.</a></figcaption>
	</figure>
	</div>

	<div class="col-sm-4">
	<figure><a class="nav-feature" href="/our-story/newsroom/employees-overall-view-of-wellbeing-wanes"><img alt="" src="/getmedia/1de694c2-1961-46b2-8b72-545f0acc63d7/featured-news-health-and-financial-wellbeing-mindset.jpg?width=300" /> </a>

	<figcaption><a class="nav-feature" href="/our-story/newsroom/employees-overall-view-of-wellbeing-wanes">New study from Alight and National Business Group on Health shows employees&rsquo; overall view of wellbeing wanes, but employer support makes a positive impact.</a></figcaption>
	</figure>
	</div>
	</div>
	</div>
	</div>
	</li>
</ul>
</div>
</nav>
</div>
</div>

    
  </header>
  <!-- page content -->
  <main class="site-content" role="main">
  

<!-- Container -->
 
 
				<style>			
.webinarimage {max-width: 100%;} @media (max-width: 992px) { .webinarimage { padding-bottom: 30px; } } 	                            
#webinar-replays p {
	margin-bottom: 20px;
}
#webinar-section .row-eq-height {margin-bottom: 0 !important; margin-left: inherit !important; margin-right: inherit !important;}
#webinar-replays {
	border-top: solid 1px #ffffff;
	padding-top: 30px;
}
#webinar-info {
	margin-bottom: 30px;
}
@media (min-width: 992px) {
	#webinar-replays {
		border-top: none;
		border-left: solid 1px #ffffff;
		padding-left: 30px;
		padding-top: 0;
		margin-left: 30px
	}
	#webinar-info {
		margin-bottom: 0;
	}
}
#webinar-info h3 {
	font-size: 20px;
	line-height: 24px;
	font-family: 'FSThriveElliot-Bold';
	padding-bottom: 0;
}
#webinar-info p {
	/* padding-bottom: 20px; */
	margin-bottom: 20px;
}
#webinar-info p:last-of-type { margin-bottom: 0; }
#webinar-replays p a.btn { margin-bottom: 0; }
#event-container {
	display: flex;
	x-justify-content: space-around;
	x-align-items: stretch;
	padding-top: 15px;
	padding-bottom: 15px;
}
#event-datemonth {
	width: 100px;
	flex: 0 0 100px;
	color: #ffffff;
}
#event-datemonth div {
	height: 100px;
}
#event-datemonth div span {
	width: 100%;
	display: block;
	text-align: center;
}
#event-info {
	padding-left: 20px;
}
#event-container .event-date {
	padding-top: 25px;
	font-size: 50px;
	line-height: 50px;
	letter-spacing: -0.5px;
	font-family: 'FSThriveElliot-Bold';
	color: #ffffff;
	text-align: center;
}
#event-container .event-month {
	font-size: 10px;
	line-height: 5px;
	letter-spacing: 0.7px;
	font-family: 'FSThriveElliot-Bold';
	color: #fff200;
	text-align: center;
	text-transform: uppercase;
}
#event-container .fulldate {
	color: #909295;
}
#webinar-section.content-block .btn, #innovation-section.content-block .btn {
	margin-top: 0;
}
.fulldate {
	font-size: 14px;
	line-height: 14px;
	letter-spacing: 1px;
	text-transform: uppercase;
	margin-top: 15px;
	margin-bottom: 15px;
}
#event-container .event-blurb {
	font-size: 14px;
	line-height: 18px;
	margin-bottom: 15px;
}
#event-container .event-link .btn-small {
	margin-top: 0;
}
.heading-bump {
	margin-bottom: 20px;
}
.news-container {
	width: 250px;
	padding: 0;
	margin-left: 10px;
	margin-right: 10px;
	margin-bottom: 20px;
	float: left;
	height: 330px;
	overflow: hidden;
	background-color: #ffffff;
	position: relative;
}
.news-container picture {
	height: 125px;
	width: 100%;
	background-size: cover;
	background-position: center center;
	margin-bottom: 15px;
	overflow: hidden;
}
.news-container picture img {
	height: 100%;
	width: auto;
	margin-left: -3.0705px;
}
.news-container a {
	padding: 14px;
	display: block;
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
}
.news-container .news-label {
	text-transform: uppercase;
	font-size: 12px;
	line-height: 1.2em;
	letter-spacing: 0.5px;
	font-family: 'FSThriveElliot-Heavy';
	margin-bottom: 1em;
}
.news-container .news-content h2 {
	font-size: 18px;
	line-height: 1.2em;
	letter-spacing: 0;
	font-family: 'FSThriveElliot-Heavy';
	margin-bottom: 0.3em;
}
.news-container .news-content p {
	display: none;
}
.news-container a:hover {
	background-color: #fff200;
}
.news-container .news-button {
	position: absolute;
	bottom: 12px;
}
#allnews-section>div.container-fluid {
	margin-left: auto;
	margin-right: auto;
}
#allnews-section>div.container-fluid {
	width: 1420px;
}
@media (min-width: 1150px) {
	.news-container:first-child {
		width: 520px;
		height: 680px;
	}
	.news-container:first-child picture {
		height: 314px;
		width: 100%;
	}
	.news-container:first-child picture img {
		margin-left: -47.0705px;
	}
	.news-container:first-child .news-content h2 {
		font-size: 35px;
	}
	.news-container:first-child .news-content p {
		display: block;
	}
}
@media (max-width: 1420px) {
	#allnews-section>div.container-fluid {
		width: 1150px;
	}
	.news-container:nth-child(6), .news-container:nth-child(7) {
		display: none;
	}
}
@media (max-width: 1150px) {
	#allnews-section>div.container-fluid {
		width: 880px;
	}
	.news-container:nth-child(6) {
		display: block;
	}
	.news-container:nth-child(7) {
		display: none;
	}
}
@media (max-width: 880px) {
	#allnews-section>div.container-fluid {
		width: 600px;
	}
}
@media (max-width: 600px) {
	#allnews-container {
		margin-left: -20px;
		margin-right: -20px;
	}
	.news-container {
		padding: 10px;
		background-color: #ffffff;
		border-bottom: solid #000000 1px;
		margin: 0;
		width: 100%;
		float: none;
		height: auto;
		display: block;
		clear: both;
	}
	.news-container:first-child {
		border-top: solid #000000 1px;
	}
	.news-container .news-content h2 {
		font-size: 15px;
		line-height: 19px;
		letter-spacing: 0;
	}
	.news-container .news-image {
		float: left;
		width: calc(50% - 5px);
		height: auto;
	}
	.news-container .news-label, .news-container .news-content, .news-container .news-button {
		float: right;
		width: calc(50% - 5px);
	}
	.news-container .news-button:after {
		clear: both;
		content: '';
	}
	#allnews-section>div.container-fluid {
		width: 100%;
	}
	.news-container picture {
		overflow: visible;
		ont
	}
	.news-container a {
		padding: 0;
		position: relative;
	}
	.news-container .news-button {
		display: none;
	}
	#event-info h3 {
		font-size: 22px;
	}
}
@media (max-width: 600px) {
	.heading-tertiary {
		font-size: 25px;
		line-height: 1.2em;
	}
	#allnews-section {
		background-color: #ffffff;
	}
}
@media (min-width: 768px) and (max-width: 1400px) {
	.tabbed-leader .slider-nav {
		height: 54px;
	}
}
.carousel-block {
	background-color: transparent;
	!important
}
				</style>
				<script src="https://go.alight.com/rs/777-ERD-451/images/tabbed-leader-temp.js">
				</script>
				<style>
					#allnews-section .detail-header{ 
						width: 100%;
						max-width: 1390px;
						padding: 0px 40px 0px 20px;
						margin: 0 auto;
					 }
					.hubs-embedded #collection-items {
						width:1350px !important;

					}
					.hubs-embedded.small-tiles #collection-items .tile.single {
						height:330px;
						width:240px;
 
					}
					.hubs-embedded #collection-items .tile.single .img{
					    padding:14px !important;
					}     
					.hubs-embedded #collection-items .tile.single .img img{
					    margin-top:0px !important;
					}  	

					.hubs-embedded #collection-items .tile.single:first-of-type {
					    width: 520px;
					    height: 680px;
					}


					.hubs-embedded #collection-items .tile.single:first-of-type .img{
					    padding:14px !important;
					}     
					.hubs-embedded #collection-items .tile.single:first-of-type .img img{
					    margin-top:0px !important;
					}  
					.hubs-embedded #collection-items .tile.single:hover, .hubs-embedded #collection-items .tile.single:hover .description {
					    background-color: #fff200 !important;
					}
					.hubs-embedded #collection-items .tile.single .description h4{
						line-height: 24px !important;
						font-family: 'FSThriveElliot-Regular' !important;
						font-size:16px !important;
					}

					.hubs-embedded div.tile.single > a.view, .hubs-embedded li.tile.single > a.view {
 						background-image:none;
						font-family: "FSThriveElliot-Bold";
						text-transform: uppercase;
						 
					}
					.hubs-embedded div.tile.single > a.view:hover, .hubs-embedded li.tile.single > a.view:hover {
						 
					}
					@media (max-width: 1200px) { 

						.hubs-embedded #collection-items .tile.single:first-of-type {
							height:330px;
							width:240px;
						}
						.hubs-embedded #collection-items {
							width:540px !important;
						}
					}  

				</style><!--Tabbed Leader-->
				<section class="tabbed-leader">
					<!--Leader Carousel-->
					<div class="leader-carousel slider slider-for" id="leaderCarousel">
						<div class="carousel-item">
							<picture><!--[if IE 9]><video style="display: none;"><![endif]-->
							 <source media="(min-width: 768px)" srcset="/getmedia/92223733-2306-418e-b31c-e4bccd9562c7/2019-02-reaching-further-large.jpg?width=3000&height=1000&ext=.jpg"> <!--[if IE 9]></video><![endif]-->
							 <img alt="" srcset="/getmedia/4b3a4ce5-9c29-48c8-b8f3-050b22f265ff/2019-02-reaching-further-small.jpg?width=1536&height=1200&ext=.jpg"></picture>
							<div class="leader-overlay">
								<div class="container-fluid">
									<div class="row">
										<div class="color-white col-sm-6 col-xs-9">
											<h2 class="heading-secondary animate" data-animate="fadeInUp" data-delay="1s" data-duration="1s" data-offset="0">Reaching further to meet your health, wealth and HR needs</h2>
											<p class="animate" data-animate="fadeInUp" data-delay="1.5s" data-duration="1s" data-offset="0">Every day, we’re thinking forward to help people and organizations.</p><a class="btn btn-yellow animate" data-animate="fadeInUp" data-delay="2s" data-duration="1s" data-offset="0" href="#modalVideo" data-toggle="modal" data-target="#modalVideo">WATCH VIDEO</a>
										</div>
									</div>
								</div>
							</div>
						</div>

						<div class="carousel-item">
							<picture><!--[if IE 9]><video style="display: none;"><![endif]-->
							 <source media="(min-width: 768px)" srcset="/getmedia/7fef4789-7d83-4507-aaf3-eef67c7796cd/2019-06-hodges-mace-large.jpg?width=3000&height=1000&ext=.jpg"> <!--[if IE 9]></video><![endif]-->
							 <img alt="" srcset="/getmedia/6cfe6c22-93dc-4bd3-91d6-f06d46a5e346/2019-06-hodges-mace-small.jpg?width=1536&height=1200&ext=.jpg"></picture>

							<div class="leader-overlay">
								<div class="container-fluid">
									<div class="row">
										<div class="color-white col-sm-6 col-xs-9">
											<h2 class="heading-secondary animate" data-animate="fadeInUp" data-delay="1s" data-duration="1s" data-offset="0">Enhancing health and voluntary benefits capabilities</h2>
											<p class="animate" data-animate="fadeInUp" data-delay="1.5s" data-duration="1s" data-offset="0">Alight to acquire Hodges-Mace, expanding solutions for employers of all sizes</p>
											
											<a class="btn btn-yellow animate" data-animate="fadeInUp" data-delay="2s" data-duration="1s" data-offset="0" href="/our-story/newsroom/alight-to-acquire-hodges-mace">READ MORE</a>
										</div>
									</div>
								</div>
							</div>
						</div>


						<div class="carousel-item">
							<picture><!--[if IE 9]><video style="display: none;"><![endif]-->
							 <source media="(min-width: 768px)" srcset="/getmedia/c4a4fa09-3363-406d-9662-bbd2c593b1be/2019-02-hcm-large.jpg?width=3000&height=1000&ext=.jpg"> <!--[if IE 9]></video><![endif]-->
							 <img alt="" srcset="/getmedia/e12578f7-a583-4b53-9b77-fd1c06e2aa6a/2019-02-hcm-small.jpg?width=1536&height=1200&ext=.jpg"></picture>

							<div class="leader-overlay">
								<div class="container-fluid">
									<div class="row">
										<div class="color-white col-sm-6 col-xs-9">
											<h2 class="heading-secondary animate" data-animate="fadeInUp" data-delay="1s" data-duration="1s" data-offset="0">Expanded HCM and financials capabilities</h2>
											<p class="animate" data-animate="fadeInUp" data-delay="1.5s" data-duration="1s" data-offset="0">Alight acquires Wipro’s Workday and Cornerstone business</p><a class="btn btn-yellow animate" data-animate="fadeInUp" data-delay="2s" data-duration="1s" data-offset="0" href="/our-story/newsroom/alight-strengthens-fast-growing-hcm-business">READ MORE</a>
										</div>
									</div>
								</div>
							</div>
						</div>


 

 




						<div class="carousel-item">
							<picture><!--[if IE 9]><video style="display: none;"><![endif]-->
							 <source media="(min-width: 768px)" srcset="/getmedia/1ca9638e-02a4-4ad3-b13a-d70a20bdad41/2019-02-compass-hcn-large.jpg?width=3000&height=1000&ext=.jpg"> <!--[if IE 9]></video><![endif]-->
							 <img alt="" srcset="/getmedia/75897be8-4338-43fd-bc65-7be44c3be760/2019-02-compass-hcn-small.jpg?width=1536&height=1200&ext=.jpg"></picture>
							<div class="leader-overlay">
								<div class="container-fluid">
									<div class="row">
										<div class="color-white col-sm-6 col-xs-9">
											<h2 class="heading-secondary animate" data-animate="fadeInUp" data-delay="1s" data-duration="1s" data-offset="0">Compass Healthcare Navigation Solutions</h2>
											<p class="animate" data-animate="fadeInUp" data-delay="1.5s" data-duration="1s" data-offset="0">Solutions that save money and improve healthcare outcomes</p><a class="btn btn-yellow animate" data-animate="fadeInUp" data-delay="2s" data-duration="1s" data-offset="0" href="https://alight.com/health-solutions/healthcare-navigation">LEARN MORE</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div><!--Leader Nav-->
					<div class="leader-nav">
						<div class="container-fluid">
							<div class="row">
								<div class="col-sm-12">
									<ul class="slider slider-nav">
										<li class="nav-item">Innovation every day</li>
										<li class="nav-item">Hodges-Mace Acquisition</li>										
										<li class="nav-item">Appirio Acquisition</li>
										<li class="nav-item">Healthcare Navigation</li>
										
									</ul>
								</div>
							</div>
						</div>
					</div>
				</section><!--Content Block-->




<!-- <section class="news-grid container-fluid container-full-xs">-->
<section class="content-block bg-xlight" id="allnews-section">
  <!--Grid Header-->
<div class="detail-header row">
	<div class="col-md-6">
		<h2 class="heading-tertiary">Trending news and insights</h2>
	</div>
	<div class="col-md-6 text-right-mobileonly heading-bump" id="quick-links">
		<p><a href="/our-story/newsroom">Read our news</a><a href="https://ideas.alight.com/">Explore all insights</a></p>
	</div>
</div>
  <div class="row">
    <div style="width:100%;">
 
       <!-- Uberflip Embedded Hub Widget --> 
        <div id="UfEmbeddedHub1496643232556"></div>
        <script>window._ufHubConfig = window._ufHubConfig || [];window._ufHubConfig.push({'containers':{'app':'#UfEmbeddedHub1496643232556'},'collection':'2657237','openLink':function(url){window.top.location.href=url;},'lazyloader':{'itemDisplayLimit':7,'maxTilesPerRow':0,'maxItemsTotal':7},'tileSize':'small','enablePageTracking':false,'baseUrl':'https://ideas.alight.com/','filesUrl':'https://content.cdntwrk.com/','generatedAtUTC':'2017-06-05 06:13:23'});</script>
        <script>(function(d,t,u){function load(){var s=d.createElement(t);s.src=u;d.body.appendChild(s);}if(window.addEventListener){window.addEventListener('load',load,false);}else if(window.attachEvent){window.attachEvent('onload',load);}else{window.onload=load;}}(document,'script','https://ideas.alight.com/hubsFront/embed_collection'));</script> 
        <!-- /End Uberflip Embedded Hub Widget -->

    </div>
  </div>
</section>

				<section class="content-block bg-dark text-white" id="webinar-section">
					<div class="container-fluid">
						<div class="row row-eq-height">
							<div class="col-md-4">
								<div class="row">

									<div class="col-md-12">
										<h2 class="heading-tertiary heading-bump">Upcoming webinars</h2>
									</div>
 									
									<div class="col-sm-12" id="webinar-info">
										<h3>How technology is changing the way we consume benefits</h3>
										<p>Aug 01, 2019 | 3 PM - 3:45 PM ET/12:00 - 12:45 PM PT</p> 

										<p>Alight is partnering with Employee Benefit News and Employee Benefit Advisor for a discussion on the latest trends in benefits technology and how they impact the way you implement benefit programs for your organization and your people.</p>
										
										<p><a class="btn btn-yellow" href="http://pages.marketing.employeebenefitadviser.com/20190801_ebn_eba_alight_ws_lp.html" target="_blank">Register now</a></p>

									</div>										
								</div>
							</div>						
							<div class="col-md-4">
								<div class="row">

									<div class="col-md-12">
										<h2 class="heading-tertiary heading-bump">Featured on-demand webinars</h2>
									</div>
 									
									<div class="col-sm-12" id="webinar-info">
										<h3>Transform your healthcare spend</h3>
										<p>How Essilor of America achieved 2.7x ROI</p> 

										<p>We want people to be good consumers of healthcare, but the reality is that most people focus on health benefits once a year. Learn how a company with 8,500 employees is lowering their healthcare cost trajectory by using an integrated health care navigation platform to engage participants throughout the year.</p>
										
										<p><a class="btn btn-yellow" href="https://go.alight.com/reduce-employer-healthcare-costs-webinar" target="_blank">Register Today</a></p>

									</div>										
								</div>
							</div>	
						
							<div class="col-md-4 align-middle" id="webinar-replays" style="border-left:0px; padding-left:0;">
								<h2 class="heading-tertiary heading-bump">Webinar replays</h2>
								<p>Browse our webinar replays to gain valuable information you might have missed.</p>
								<p><a class="btn btn-yellow" href="/our-story/events-and-webinars?default=all-webinars">Browse replays</a></p>
							</div>
													 
 <!-- no webinars section
 							<div class="col-md-8 col-md-push-4">
								<img src="/getmedia/8f8b7d68-f66c-4b80-8715-b391a8b22da8/home-no-webinar-placeholder.png" class="webinarimage">
							</div>
							<div class="col-md-4 col-md-pull-8 align-middle" id="webinar-replays" style="border-left:0px; padding-left:0;">
								<h2 class="heading-tertiary heading-bump">Webinar replays</h2>
								<p>Browse our webinar replays to gain valuable information you might have missed.</p>
								<p><a class="btn btn-yellow" href="/our-story/events-and-webinars?default=all-webinars">Browse replays</a></p>
							</div>								
 						
-->
						</div>
					</div>
				</section>
				<section class="content-block bg-xlight" id="live-events">
					<div class="container-fluid">
						<div class="row">
							<div class="col-sm-6">
								<h2 class="heading-tertiary">Join us live</h2>
							</div>
							<div class="col-sm-6 text-right-mobileonly heading-bump" id="quick-links">
								<p><a href="/our-story/events-and-webinars?default=conference">See all upcoming events</a></p>
							</div>
						</div>
						<div class="row">
 			
<!--
                            <div class="col-md-4" id="event-container">
								<div id="event-datemonth">
									<div class="bg-med">
										<span class="event-date">14</span> <span class="event-month">May</span>
									</div>
								</div>
								<div id="event-info">
									<h3>American Payroll Association (APA) Congress</h3>
									<p class="fulldate">Long Beach, CA — May 14-18, 2019</p>
									<p class="event-blurb">Come visit us at booth #711 at the American Payroll Association (APA) Congress - the world's largest payroll expo.</p>
									<p class="event-link"><a class="btn-small" href="https://www.apacongress.com/" target="_blank">Visit conference website</a></p>
								</div>
							</div>
                            <div class="col-md-4" id="event-container">
								<div id="event-datemonth">
									<div class="bg-med">
										<span class="event-date">03</span> <span class="event-month">June</span>
									</div>
								</div>
								<div id="event-info">
									<h3>Cornerstone Convergence</h3>
									<p class="fulldate">San Diego, CA — June 3-5, 2019</p>
									<p class="event-blurb">We look forward to seeing you in San Diego for the must-attend talent management conference of the year. Check back leading up to the conference for more info on what we have planned.</p>
									<p class="event-link"><a class="btn-small" href="https://go.alight.com/cornerstone-convergence-2019" target="_blank">View details</a></p>
								</div>
							</div>
-->
                            <div class="col-md-6" id="event-container">
								<div id="event-datemonth">
									<div class="bg-med">
										<span class="event-date">08</span> <span class="event-month">Sept</span>
									</div>
								</div>
								<div id="event-info">
									<h3>NAGDCA Annual Conference</h3>
									<p class="fulldate">New Orleans, LA — September 8-11, 2019</p>
									<p class="event-blurb">We hope to see you in New Orleans at the The National Association of Government Defined Contribution Administrators, Inc. (NAGDCA) Annual Conference - the premier government defined contribution event in the nation.</p>
									<p class="event-link"><a class="btn-small" href="https://www.cvent.com/events/2019-nagdca-annual-conference/event-summary-b6a1e215d8c845b187e7dba9f88fa6f7.aspx" target="_blank">View details</a></p>
								</div>
							</div>
                            <div class="col-md-6" id="event-container">
								<div id="event-datemonth">
									<div class="bg-med">
										<span class="event-date">22</span> <span class="event-month">Oct</span>
									</div>
								</div>
								<div id="event-info">
									<h3>Unleash Paris</h3>
									<p class="fulldate">October 22-23, 2019 - Paris, France</p>
									<p class="event-blurb">Stop by our booth at Unleash to learn how we can help you move your HCM to the Cloud and support you once you are live.</p>
									<p class="event-link"><a class="btn-small" href="https://unleashgroup.io/world" target="_blank">Visit conference website</a></p>
								</div>
							</div>
 

						</div>
					</div>
				</section>
				<section class="content-block container-fluid text-center" id="customersquote-section">
					<div class="row">
						<div class="text-center col-sm-12">
							<h2 class="heading-quaternary text-center">By reimagining how our customers thrive, we deliver unique value</h2>
						</div>
					</div><!--Carousel Block-->
					<div class="carousel-block" id="carousel">
						<div class="container-fluid">
							<div class="row">
								<div class="col-sm-12">
									<div class="carousel-primary slider text-center">
										<div class="carousel-item vcenter">
											<h3>Alight helps us provide the same kind of positive customer experience internally that we offer our external customers.</h3>
											<p>Rhonda Mobley, Senior Benefits Manager, North American HR Shared Services<br>
											Global Human Resources at Schneider Electric</p>
											<p><a class="btn btn-yellow" href="https://ideas.alight.com/customer-success-stories/schneider-electric-partners-with-alight-solutions-to-ease-the-burden-of-health-and-welfare-benefits-administration">Read more</a></p>
										</div>
										<div class="carousel-item vcenter">
											<h3>Centrica’s HR technology really didn’t give our people the kind of first class, user experience we were developing for our customers, they deserved better.</h3>
											<p>Rob Cook, Vice President of HR Technology, Centrica</p>
											<p><a class="btn btn-yellow" href="https://ideas.alight.com/customer-success-stories/workday-case-study-highlights-centrica">Read more</a></p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>
				<section class="image-block" id="bottom-talk-expert">
					<picture><img alt="" srcset="/getmedia/1cb79c2f-1e83-47f6-88d4-eb77f8e6bd4a/home-careers-section.jpg"></picture>
					<div class="image-overlay" id="bottom-talk-expert">
						<div class="container-fluid">
							<div class="row">
								<div class="col-md-4">
									<h2 class="heading-secondary">A bright path ahead</h2>
									<p>We believe in the power of people and know the best ideas can come from anywhere. Join a team that's enhancing work and life every day.</p><a class="btn btn-yellow" href="https://careers.alight.com/" target="_self">Explore careers</a>
								</div>
							</div>
						</div>
					</div>
				</section>
				<script type="text/javascript">
                    $('.autoplay').slick({
                      slidesToShow: 1,
                      slidesToScroll: 1,
                      autoplay: true,
                      autoplaySpeed: 5000,
                      dots: true,
                    });
					$(function () {
						$( '' ).insertBefore($( "footer" )); 
					});
					$(function() {  
					  $('#modalVideo').on('hidden.bs.modal', function () {
					    $('#youtube-video-iframe').attr("src", $('#youtube-video-iframe').attr("src"));
					  })
					});
				</script>
 
 <div class="modal-video modal fade" id="modalVideo" role="dialog" tabindex="-1" aria-labelledby="modalVideo"><div class="modal-dialog" role="document"><div class="modal-content"><button class="close-bio ss-delete" data-dismiss="modal"><span class="sr-only">Close</span></button><div class="modal-body"><iframe src="https://www.youtube.com/embed/wWpb6DixZ3M?rel=0&showinfo=0" id="youtube-video-iframe" frameborder="0" height="480" id="video" width="853" allowfullscreen></iframe></div></div></div></div>


<style>
.hubs-embedded.small-tiles #collection-items .tile.single {
	width: 250px;
	height: 330px;
}
.hubs-embedded #collection-items .tile.single>a.view {
	border: none !important;
	padding-left: none !important;
}
.hubs-embedded .tile.single>a.view:before {
	display: none !important;
}
.hubs-embedded #collection-items .tile.single .description {
	width: 100%!important;
	height: auto !important;
	bottom: initial !important;
	position: relative !important;
}
.hubs-embedded #collection-items .tile.single .description h4 {
	display: none !important;
}
label {
	text-transform: uppercase;
	font-size: 12px !important;
	line-height: 1.2em !important;
	letter-spacing: 0.5px !important;
	font-family: 'FSThriveElliot-Heavy' !important;
	margin-bottom: 1em !important;
	margin-top: 14px !important;
	color: #000000 !important;
	display: block !important;
	margin-top: 15px !important;
	margin-left: 14px !important;
	margin-right: 14px !important
}
.hubs-embedded .tile .img .duration {
	right: 20px;
}
.hubs-embedded .tile.single .description h3 {
	color: #000000 !important;
	margin-left: 14px !important;
	margin-right: 14px !important;
	font-size: 18px !important;
	line-height: 1.2em !important;
	letter-spacing: 0 !important;
	font-family: 'FSThriveElliot-Heavy' !important;
	margin-bottom: 0.6em !important;
	margin-top: 0 !important;
	font-weight: normal !important;
}
.hubs-embedded.small-tiles .tile.single .description h3 {
	font-size: 35px;
}
.hubs-embedded #collection-items .tile.single>a.view {
	display: block;
	font-size: 14px;
	letter-spacing: 1.5px;
	line-height: 1em !important;
	margin-top: 30px;
	text-transform: uppercase;
	padding-bottom: 14px !important;
	font-family: 'FSThriveElliot-Heavy';
	font-weight: normal;
	bottom: 0;
	left: 0;
	text-decoration: none;
	position: absolute;
	background: unset;
	padding-left: 14px !important;
	height: auto !important;
	color: #181919 !important;
}
.hubs-embedded #collection-items .tile.single .description h4 {
	margin-left: 14px !important;
	margin-right: 14px !important;
}
.hubs-embedded .tile.single>a.view:after, .hubs-embedded #collection-items .tile.single>a.view::before {
	content: "▹";
	font-family: SSStandard;
	font-size: 11px;
	font-style: normal;
	font-weight: normal;
	margin-left: 8px;
	text-rendering: optimizeLegibility;
	vertical-align: middle;
	white-space: nowrap;
	font-feature-settings: "liga";
	-webkit-font-smoothing: antialiased;
	text-decoration: none;
	position: relative;
	top: inherit;
	bottom: inherit;
	left: inherit;
	right: inherit;
	display: inline-block;
	background: inherit !important;
}
.hubs-embedded #collection-items .tile.single .img {
	margin: 0px !important;
	position: relative !important;
}
.hubs-embedded ul {
	margin-left: auto;
	margin-right: auto;
}
@media (min-width: 1150px) {
	.hubs-embedded #collection-items .tile.single:first-of-type {
		width: 520px;
		height: 680px;
	}
	.hubs-embedded #collection-items .tile.single:first-of-type .description h3 {
		font-size: 35px !important;
		line-height: 1.2em !important;
		font-family: 'FSThriveElliot-Heavy' !important;
		margin-bottom: 0.3em !important;
		margin-top: 14px !important;
	}
	.hubs-embedded #collection-items .tile.single:first-of-type .description h4 {
		display: block !important;
		line-height: 1.5em !important;
		font-size: 16px !important;
		color: #181919 !important;
		margin-top: 0 !important;
	}
}
@media (max-width: 1420px) {
	.hubs-embedded ul {
		width: 1080px !important;
	}
	.hubs-embedded #collection-items {
		width: 100% !important;
	}
}
@media (min-width: 1151px) and (max-width: 1420px) {
	.hubs-embedded.small-tiles #collection-items .tile.single:nth-child(6), .hubs-embedded.small-tiles #collection-items .tile.single:nth-child(7) {
		display: none !important;
	}
}
@media (min-width: 800px) and (max-width: 1150px) {
	.hubs-embedded.small-tiles #collection-items .tile.single:nth-child(7) {
		display: none !important;
	}
}
@media (max-width: 1150px) {
	.hubs-embedded ul {
		width: 820px !important;
	}
}
@media (max-width: 880px) {
	.hubs-embedded ul {
		width: 540px !important;
	}
	.hubs-embedded.small-tiles #collection-items .tile.single:nth-child(7) {
		display: none !important;
	}
}
@media (max-width: 600px) {
	.hubs-embedded #collection-items {
		width: 100% !important;
		margin: 0 !important;
		padding-left: 10px !important;
		padding-right: 10px !important;
	}
	.hubs-embedded ul {
		width: 100% !important;
	}
	.hubs-embedded #collection-items .tile.single {
		width: 100% !important;
		height: auto !important;
		margin: 0 !important;
	}
	li.tile.single.uberflip.portrait, li.tile.single:not(.list) {
		height: auto!important;
	}
	li.tile.single:not(.list) .description {
		overflow: visible !important;
		height: auto !important;
		float: right !important;
	}
	li.tile.single:not(.list) .img {
		overflow: visible !important;
		height: auto !important;
	}
	li.tile.single:not(.list) .img img {
		top: unset !important;
		left: unset !important;
		-webkit-transform: none !important;
		-ms-transform: none !important;
		transform: none !important;
		height: auto !important;
		position: relative !important;
	}
	.hubs-embedded #collection-items .tile.single .img {
		float: left !important;
		width: 50% !important;
		position: relative !important;
	}
	.hubs-embedded #collection-items .tile.single .description {
		float: right !important;
		width: 50% !important;
		margin-left: 0 !important;
		bottom: initial !important;
		position: relative !important;
		margin-left: 0 !important;
		padding-left: 0 !important;
	}
	.hubs-embedded .tile.single .description h3 {
		margin-top: 14px !important;
		margin-left: 0 !important;
		padding-left: 0 !important;
		font-size: 15px !important;
		line-height: 1.4em !important;
	}
	.hubs-embedded #collection-items .tile.single>a.view {
		display: none;
	}
}
@media (max-width: 450px) {
	.hubs-embedded .tile.single .description h3 {
		font-size: 15px !important;
	}
}
#allnews-section {
	background: #d8d8d8;
}
</style>


  </main>
  <!-- footer -->
  <footer class="site-footer" role="contentinfo">
    <div class="footer-primary">
      <div class="container-fluid">
        <div class="row">
          <div class="footer-col col-sm-6 col-md-2"><button aria-controls="footerOne" aria-expanded="false" class="toggle collapsed" data-target="#footerOne" data-toggle="collapse" type="button"><span class="icon-dropdown">Our solutions</span></button>
<div class="collapse" id="footerOne"><span class="footer-title" href="/what-we-do">Our<br class="footer-header-two-lines" />
solutions</span>
<ul>
	<li><a href="/health-solutions" target="_self">Health Solutions</a></li>
	<li><a href="/wealth-solutions" target="_self">Wealth Solutions</a></li>
	<li><a href="/hcm-solutions" target="_self">HCM Solutions</a></li>
	<li><a href="/financial-management-solutions" target="_self">Financial Management Solutions</a></li>
</ul>
</div>
</div>

<div class="footer-col col-sm-6 col-md-2"><button aria-controls="footerTwo" aria-expanded="false" class="toggle collapsed" data-target="#footerTwo" data-toggle="collapse" type="button"><span class="icon-dropdown">Who we serve</span></button>

<div class="collapse" id="footerTwo"><span class="footer-title">Who we<br class="footer-header-two-lines" />
serve</span>

<ul>
	<li><a href="/under-5k-employees" target="_self">Employers &lt; 5K</a></li>
	<li><a href="/5k-to-10k-employees" target="_self">Employers 5K &ndash; 10K</a></li>
	<li><a href="/over-10k-employees" target="_self">Employers &gt; 10K</a></li>
	<li><a href="/emea" target="_self">EMEA</a></li>
	<li><a href="/apac" target="_self">APAC</a></li>
</ul>
</div>
</div>

<div class="footer-col col-sm-6 col-md-2"><button aria-controls="footerThree" aria-expanded="false" class="toggle collapsed" data-target="#footerThree" data-toggle="collapse" type="button"><span class="icon-dropdown">Partner ecosystem</span></button>

<div class="collapse" id="footerThree"><span class="footer-title">Partner<br class="footer-header-two-lines" />
ecosystem</span>

<ul>
	<li><a href="/technology-partners" target="_self">Technology partners</a></li>
	<li><a href="/partner-network" target="_self">Alight Partner Network</a></li>
	<li><a href="/innovation-partners" target="_self">Innovation partners</a></li>
</ul>
</div>
</div>

<div class="footer-col col-sm-6 col-md-2"><button aria-controls="footerFour" aria-expanded="false" class="toggle collapsed" data-target="#footerFour" data-toggle="collapse" type="button"><span class="icon-dropdown">Research &amp; insights</span></button>

<div class="collapse" id="footerFour"><a class="footer-title" href="https://ideas.alight.com">Research &amp;<br class="footer-header-two-lines" />
insights</a>

<ul>
	<li><a href="https://ideas.alight.com/health" target="_self">Health Solutions</a></li>
	<li><a href="https://ideas.alight.com/wealth" target="_self">Wealth Solutions</a></li>
	<li><a href="https://ideas.alight.com/human-resources-financial-solutions" target="_self">HCM Solutions</a></li>
	<li><a href="/legacy-resources/" target="_self">Legacy resources</a></li>
</ul>
</div>
</div>

<div class="footer-col col-sm-6 col-md-2"><button aria-controls="footerFive" aria-expanded="false" class="toggle collapsed" data-target="#footerFive" data-toggle="collapse" type="button"><span class="icon-dropdown">About us</span></button>

<div class="collapse" id="footerFive"><a class="footer-title" href="/our-story">About<br class="footer-header-two-lines" />
us</a>

<ul>
	<li><a href="/our-story" target="_self">Our story</a></li>
	<li><a href="/our-story/leadership" target="_self">Leadership team</a></li>
	<li><a href="/our-story/newsroom" target="_self">Newsroom</a></li>
	<li><a href="/our-story/awards" target="_self">Awards</a></li>
	<li><a href="/our-story/events-and-webinars" target="_self">Events and webinars</a></li>
	<li><a href="/office-locations" target="_self">Office directory</a></li>
 
</ul>
</div>
</div>
<style type="text/css">.hubs-embedded #collection-items .tile.single>a.view {
	
	font-size: 14px;
	letter-spacing: 1.5px;
	line-height: 1em !important;
	margin-top: 30px;
	text-transform: uppercase;
	padding-bottom: 14px !important;
	font-family: 'FSThriveElliot-Heavy';
	font-weight: normal;
	bottom: 0;
	left: 0;
	text-decoration: none;
	position: absolute;
	background: unset;
	padding-left: 14px !important;
	height: auto !important;
	color: #181919 !important;
	border-top:0px !important;


}

.hubs-embedded .tile.single>a.view:after {
	content: "▹";
	font-family: SSStandard;
	font-size: 11px;
	font-style: normal;
	font-weight: normal;
	margin-left: 8px;
	text-rendering: optimizeLegibility;
	vertical-align: middle;
	white-space: nowrap;
	font-feature-settings: "liga";
	-webkit-font-smoothing: antialiased;
	text-decoration: none;
	position: relative;
	top: inherit;
	bottom: inherit;
	left: inherit;
	right: inherit;
	display: inline-block;
	background: inherit !important;

}
.hubs-embedded div.single.tile > a.view, .hubs-embedded li.single.tile > a.view {
	background-image: none !important;
}

.hubs-embedded #collection-items .tile.single>a.view::before {
 	background: inherit !important;
}
.hubs-embedded #collection-items .tile.single .description h4 {
    display: none;
}
</style>

          <div class="footer-info col-sm-6 col-md-2">
            <a href="/" class="footer-logo">
              <span class="sr-only">Alight</span>
            </a>
            <div style="padding-top: 0px; margin-top:-14px;">
<ul style="padding-top: 0px;">
	<li><a href="/find-your-hr-website">Find your HR website</a></li>
	<li><a href="https://careers.alight.com">Careers</a></li>
	<li><a href="/contact-alight-sales">Talk to Sales</a></li>	
</ul>
 </div>

<ul class="social list-inline">
<li><a target="target="_blank" href="https://www.linkedin.com/company/alightsolutions/" class="ss-linkedin" title="LinkedIn"><span class="sr-only">LinkedIn</span></a></li>
		<li><a target="target="_blank" href="https://twitter.com/AlightSolutions" class="ss-twitter" title="Twitter"><span class="sr-only">Twitter</span></a></li>
		<li><a target="target="_blank" href="https://www.facebook.com/Alight-Solutions-118543065376546" class="ss-facebook" title="Facebook"><span class="sr-only">Facebook</span></a></li>
		<li><a target="target="_blank" href="https://www.youtube.com/channel/UCccOxWy3Mv_igsPoO9Hmvwg" class="ss-youtube" title="YouTube"><span class="sr-only">YouTube</span></a></li>
		<li><a target="target="_blank" href="https://www.instagram.com/alight_solutions" class="ss-instagram" title="Instagram"><span class="sr-only">Instagram</span></a></li>
		
</ul>
 
          </div>
        </div>
        <div class="row footer-bottom">
          <div class="footer-bottom-links col-sm-12 col-md-4">
          <ul>
	<li><a href="/legal-terms" target="_self" title="Legal">Legal</a></li>
	<li><a href="/privacy" target="_self" title="Privacy">Privacy</a></li>
	<li><a href="/cookie-notice" target="_self" title="Cookie notice">Cookie notice</a></li>
</ul>

          </div>
          <div class="footer-copyright col-sm-12 col-md-8">
          <p>&copy;2019 Alight. All rights reserved. &reg; Alight is a registered trademark of Alight Solutions, LLC</p>
          </div>
        </div>
      </div>
   </div>
  </footer>
</div>
<script src="https://go.alight.com/rs/777-ERD-451/images/app-loop.js" type="text/javascript"></script> 
<!--<script src="/dist/js/app-min.js" type="text/javascript"></script>-->


<script type="text/javascript">
	//<![CDATA[
// Get query string parameters
$.urlParams = function () {
    var queryParameters = {},
        queryString = location.search.substring(1),
        re = /([^&=]+)=([^&]*)/g,
        m;

    // Creates a map with the query string parameters
    while (m = re.exec(queryString)) {
        queryParameters[decodeURIComponent(m[1])] = decodeURIComponent(m[2]);
    }

    return queryParameters;
}

// Prevent form submit
$('form').submit(function (e) {
    e.preventDefault();
});

// Build the query
$(document).keypress(function (ev) {
    var keycode = (ev.keyCode ? ev.keyCode : ev.which);
    if (keycode == '13') {
        var searchTerm = $('#primarySearch').val();
        if (searchTerm !== '') {
            var params = $.urlParams();
            params['searchText'] = $('<div/>').html(searchTerm).text();
            params['searchMode'] = "AnyWord";
            params['category'] = "All";
            if (location.pathname.toLowerCase().indexOf('search') > -1) {
                $('#primarySearch').val('');
                // Change the query string and reload
                location.search = $.param(params);
            } else {
                // Redirect to search results
                location.href = '/search?' + $.param(params);
            }
        }
    }
});
//]]>
</script>
<script type="text/javascript">
	//<![CDATA[
$(document).ready(function () {
    /*
    var urlPath = location.pathname.toLowerCase();
    // Add the hash to the path
    urlPath = urlPath + location.hash.toLowerCase();
    var urlSplit = urlPath.split('/');
    urlSplit = $.grep(urlSplit, function(n){ return (n); });
    var urlWholePath = '';
    var links = $("#PrimaryNav ul a");
    var selectedMenuItemClass = 'selected-menu-item';

    $('.primary-nav .panel-right.panel-default').show();

    // Highlight the selected links to create psuedo breadcrumb
    $.each(urlSplit, function (index, item) {
        if (item === '') {
            return true;
        }
        urlWholePath = urlWholePath + '/' + item;
        links.each(function () {
            var anchorLink = $(this);
            if (anchorLink.hasClass('panel-link')) {
                return true;
            }
            var anchorHref = anchorLink.attr('href').toLowerCase();
            if (anchorHref === "#") {
                return true;
            }
            if (anchorHref.endsWith('/')) {
                anchorHref = anchorHref.slice(0, -1);
            }
            if (anchorHref === urlWholePath.toLowerCase()) {
                anchorLink.addClass(selectedMenuItemClass);
            }
        });
    });

    if (urlSplit.length > 2) {
        $('.primary-nav .dropdown-menu-full .dropdown-section li.has-sub a.' +  selectedMenuItemClass).next('div.panel-right').addClass('panel-active');
        //$('.primary-nav .panel-right.panel-default').hide();
    }

    // Only the last sub-section should be highlighted
    var activeLinks = $('.primary-nav .dropdown-menu-full .sub-section > li > a.' + selectedMenuItemClass);
    if (activeLinks.length > 1) {
        activeLinks.each(function(index) {
            if (index < activeLinks.length - 1) {
                $(this).removeClass(selectedMenuItemClass)
            }
        });
    }
    
   // If url contains a hash, set related tab to active
    if (location.hash) {
        var hashValue = location.hash.replace('#', '');
        // Find current active tab and remove active state
        var tabActive = $('li.active');
        if (tabActive) {
            tabActive.removeClass('active')
        }
        // Set tab to active state
        var tabItem = $('a[href="' + location.hash + '"]');
        if (tabItem && tabItem.parent()) {
            tabItem.parent().addClass('active');
        }

        // Find the current active panel and remove active state
        var tabDiv = $('div.in.active');
        if (tabDiv) {
            tabDiv.removeClass('active');
            tabDiv.removeClass('in');
        }

        // Set panel to active state
        tabDiv = $('div[id="' + hashValue + '"]');
        if (tabDiv) {
            tabDiv.addClass('active');
            tabDiv.addClass('in');
        }
    }
    */
});
//]]>
</script>
<script type="text/javascript">
	//<![CDATA[
$(function() {
   	$('.leader-overlay .btn-yellow').click(function(){ 
		dataLayer.push({'event': 'homeBannerClick'});
	});

$( "h3.heading-quaternary:contains('DISCOVER THE ALIGHT PARTNER NETWORK')" ).css( "margin-top", "20px" );
});
//]]>
</script>
<script type="text/javascript">
	//<![CDATA[
$(function() {
   	$('.dropdown-toggle').mouseenter(function(){ 
		if (!($(this).parent().hasClass("open"))) {
			$(this).click();
		}
	});

    $('#expertRow').html("<h2>Connect with Alight</h2><p>Please fill out the form and a member of our sales team will be in touch as soon as possible.</p>");
    
 

	$(".dropdown-menu").mouseleave(function(){
		$('body').click();

	});


    if ((typeof $.urlParams()['formopen'] != "undefined") && ($.urlParams()['formopen'] == 'true'))
    {
        setTimeout(function(){  $('#talk-expert-10385').click(); }, 1000);
 
    }

$('#employees').children('option').remove();
$('#employees').append('<option value="0-999">0 - 999</option>');
$('#employees').append('<option value="1000-3499">1,000 - 3,499</option>');
$('#employees').append('<option value="3500-9999">3,500 - 9,999</option>');
$('#employees').append('<option value="10,000+">10,000 +</option>');

});
function expandContentArea(t) {

    $('.expanding-container').removeClass('expanded');
    $('#customer-' + t).addClass('expanded');
    $('html, body').animate({
        scrollTop: ($('#customer-' + t).offset().top - 120)
    }, 500);
}


//]]>
</script>
<script type="text/javascript">
	//<![CDATA[
$(function() {
 
    $('#modalVideo').on('show.bs.modal', function () { 
        $(this).find('iframe').attr("src", $(this).find('iframe').attr("src"));
    })
    $('#modalVideo').on('hidden.bs.modal', function () {
        $(this).find('iframe').attr("src", $(this).find('iframe').attr("src"));
    })
});
//]]>
</script>
    
    

<script type="text/javascript">
	//<![CDATA[
WebServiceCall('/cmsapi/webanalytics', 'LogHit', '{"NodeAliasPath":"/Home","DocumentCultureCode":"en-US","UrlReferrer":""}')
//]]>
</script></form>
</body>
</html>
