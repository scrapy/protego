    

<!DOCTYPE html>

<html >


<head>
    <title>YouGov | 
YouGov | 
</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge"><script type="text/javascript">window.NREUM||(NREUM={}),__nr_require=function(e,n,t){function r(t){if(!n[t]){var o=n[t]={exports:{}};e[t][0].call(o.exports,function(n){var o=e[t][1][n];return r(o||n)},o,o.exports)}return n[t].exports}if("function"==typeof __nr_require)return __nr_require;for(var o=0;o<t.length;o++)r(t[o]);return r}({1:[function(e,n,t){function r(){}function o(e,n,t){return function(){return i(e,[c.now()].concat(u(arguments)),n?null:this,t),n?void 0:this}}var i=e("handle"),a=e(3),u=e(4),f=e("ee").get("tracer"),c=e("loader"),s=NREUM;"undefined"==typeof window.newrelic&&(newrelic=s);var p=["setPageViewName","setCustomAttribute","setErrorHandler","finished","addToTrace","inlineHit","addRelease"],d="api-",l=d+"ixn-";a(p,function(e,n){s[n]=o(d+n,!0,"api")}),s.addPageAction=o(d+"addPageAction",!0),s.setCurrentRouteName=o(d+"routeName",!0),n.exports=newrelic,s.interaction=function(){return(new r).get()};var m=r.prototype={createTracer:function(e,n){var t={},r=this,o="function"==typeof n;return i(l+"tracer",[c.now(),e,t],r),function(){if(f.emit((o?"":"no-")+"fn-start",[c.now(),r,o],t),o)try{return n.apply(this,arguments)}catch(e){throw f.emit("fn-err",[arguments,this,e],t),e}finally{f.emit("fn-end",[c.now()],t)}}}};a("actionText,setName,setAttribute,save,ignore,onEnd,getContext,end,get".split(","),function(e,n){m[n]=o(l+n)}),newrelic.noticeError=function(e,n){"string"==typeof e&&(e=new Error(e)),i("err",[e,c.now(),!1,n])}},{}],2:[function(e,n,t){function r(e,n){if(!o)return!1;if(e!==o)return!1;if(!n)return!0;if(!i)return!1;for(var t=i.split("."),r=n.split("."),a=0;a<r.length;a++)if(r[a]!==t[a])return!1;return!0}var o=null,i=null,a=/Version\/(\S+)\s+Safari/;if(navigator.userAgent){var u=navigator.userAgent,f=u.match(a);f&&u.indexOf("Chrome")===-1&&u.indexOf("Chromium")===-1&&(o="Safari",i=f[1])}n.exports={agent:o,version:i,match:r}},{}],3:[function(e,n,t){function r(e,n){var t=[],r="",i=0;for(r in e)o.call(e,r)&&(t[i]=n(r,e[r]),i+=1);return t}var o=Object.prototype.hasOwnProperty;n.exports=r},{}],4:[function(e,n,t){function r(e,n,t){n||(n=0),"undefined"==typeof t&&(t=e?e.length:0);for(var r=-1,o=t-n||0,i=Array(o<0?0:o);++r<o;)i[r]=e[n+r];return i}n.exports=r},{}],5:[function(e,n,t){n.exports={exists:"undefined"!=typeof window.performance&&window.performance.timing&&"undefined"!=typeof window.performance.timing.navigationStart}},{}],ee:[function(e,n,t){function r(){}function o(e){function n(e){return e&&e instanceof r?e:e?f(e,u,i):i()}function t(t,r,o,i){if(!d.aborted||i){e&&e(t,r,o);for(var a=n(o),u=v(t),f=u.length,c=0;c<f;c++)u[c].apply(a,r);var p=s[y[t]];return p&&p.push([b,t,r,a]),a}}function l(e,n){h[e]=v(e).concat(n)}function m(e,n){var t=h[e];if(t)for(var r=0;r<t.length;r++)t[r]===n&&t.splice(r,1)}function v(e){return h[e]||[]}function g(e){return p[e]=p[e]||o(t)}function w(e,n){c(e,function(e,t){n=n||"feature",y[t]=n,n in s||(s[n]=[])})}var h={},y={},b={on:l,addEventListener:l,removeEventListener:m,emit:t,get:g,listeners:v,context:n,buffer:w,abort:a,aborted:!1};return b}function i(){return new r}function a(){(s.api||s.feature)&&(d.aborted=!0,s=d.backlog={})}var u="nr@context",f=e("gos"),c=e(3),s={},p={},d=n.exports=o();d.backlog=s},{}],gos:[function(e,n,t){function r(e,n,t){if(o.call(e,n))return e[n];var r=t();if(Object.defineProperty&&Object.keys)try{return Object.defineProperty(e,n,{value:r,writable:!0,enumerable:!1}),r}catch(i){}return e[n]=r,r}var o=Object.prototype.hasOwnProperty;n.exports=r},{}],handle:[function(e,n,t){function r(e,n,t,r){o.buffer([e],r),o.emit(e,n,t)}var o=e("ee").get("handle");n.exports=r,r.ee=o},{}],id:[function(e,n,t){function r(e){var n=typeof e;return!e||"object"!==n&&"function"!==n?-1:e===window?0:a(e,i,function(){return o++})}var o=1,i="nr@id",a=e("gos");n.exports=r},{}],loader:[function(e,n,t){function r(){if(!E++){var e=x.info=NREUM.info,n=l.getElementsByTagName("script")[0];if(setTimeout(s.abort,3e4),!(e&&e.licenseKey&&e.applicationID&&n))return s.abort();c(y,function(n,t){e[n]||(e[n]=t)}),f("mark",["onload",a()+x.offset],null,"api");var t=l.createElement("script");t.src="https://"+e.agent,n.parentNode.insertBefore(t,n)}}function o(){"complete"===l.readyState&&i()}function i(){f("mark",["domContent",a()+x.offset],null,"api")}function a(){return O.exists&&performance.now?Math.round(performance.now()):(u=Math.max((new Date).getTime(),u))-x.offset}var u=(new Date).getTime(),f=e("handle"),c=e(3),s=e("ee"),p=e(2),d=window,l=d.document,m="addEventListener",v="attachEvent",g=d.XMLHttpRequest,w=g&&g.prototype;NREUM.o={ST:setTimeout,SI:d.setImmediate,CT:clearTimeout,XHR:g,REQ:d.Request,EV:d.Event,PR:d.Promise,MO:d.MutationObserver};var h=""+location,y={beacon:"bam.nr-data.net",errorBeacon:"bam.nr-data.net",agent:"js-agent.newrelic.com/nr-1130.min.js"},b=g&&w&&w[m]&&!/CriOS/.test(navigator.userAgent),x=n.exports={offset:u,now:a,origin:h,features:{},xhrWrappable:b,userAgent:p};e(1),l[m]?(l[m]("DOMContentLoaded",i,!1),d[m]("load",r,!1)):(l[v]("onreadystatechange",o),d[v]("onload",r)),f("mark",["firstbyte",u],null,"api");var E=0,O=e(5)},{}]},{},["loader"]);</script><script type="text/javascript">window.NREUM||(NREUM={});NREUM.info={"licenseKey":"28418fab15","transactionName":"YVFaZEdTWkZRBhBYC1gbfkVbUUBcXwtLUhFbQVRFRhxHUFMXAUU7WlVaQxtEXVBHFl5ZC1tRZ0BUVVE=","applicationID":"29034332","errorBeacon":"bam.nr-data.net","applicationTime":60,"queueTime":0,"beacon":"bam.nr-data.net","agent":""}</script>
    <meta id="viewport" name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0">
    <script>if(document.documentMode)document.documentElement.className+=' ie ie'+document.documentMode</script>

    
    
        
            
        
        <meta property="og:site_name" content="YouGov: What the world thinks">
        
    
    <meta name="description" content="YouGov is a global market research and data company built on a simple idea: The more people participate in the decisions made by the institutions that serve them, the better those decisions will be. Discover how we can help your business." />
    <meta name="keywords" content="yougov research, yougov data, big data, india, online research, brandindex, omnibus, insights" />


    
    
        
        

        
<link rel="stylesheet" href="//d1rq7cuzerol8r.cloudfront.net/unified/global/a2c943b0/common.bundle.css">
<link rel="stylesheet" href="//d1rq7cuzerol8r.cloudfront.net/unified/global/a2c943b0/home-common.bundle.css">


        <link href="//d1rq7cuzerol8r.cloudfront.net/unified/global/a2c943b0/unified-svg.css" rel="stylesheet">
        <link href="//d1rq7cuzerol8r.cloudfront.net/unified/global/a2c943b0/unified-png.css" rel="stylesheet">

        
            
        
    


    
    <link rel="shortcut icon" href="//d1rq7cuzerol8r.cloudfront.net/unified/cu/img/favicon.ico">
    <link href="" rel="alternate" type="applicaton/atom+xml" />


    

    
    
    

    
    

    


    <script>
          var start_time = new Date().getTime();
    </script>

    
        
        <!-- Start of yougov Zendesk Widget script -->
<script>/*<![CDATA[*/window.zEmbed||function(e,t){var n,o,d,i,s,a=[],r=document.createElement("iframe");window.zEmbed=function(){a.push(arguments)},window.zE=window.zE||window.zEmbed,r.src="javascript:false",r.title="",r.role="presentation",(r.frameElement||r).style.cssText="display: none",d=document.getElementsByTagName("script"),d=d[d.length-1],d.parentNode.insertBefore(r,d),i=r.contentWindow,s=i.document;try{o=s}catch(e){n=document.domain,r.src='javascript:var d=document.open();d.domain="'+n+'";void(0);',o=s}o.open()._l=function(){var o=this.createElement("script");n&&(this.domain=n),o.id="js-iframe-async",o.src=e,this.t=+new Date,this.zendeskHost=t,this.zEQueue=a,this.body.appendChild(o)},o.write('<body onload="document._l();">'),o.close()}("https://assets.zendesk.com/embeddable_framework/main.js","yougov.zendesk.com");
/*]]>*/</script>
<!-- End of yougov Zendesk Widget script -->

    

</head>
<body ng-strict-di 
    class="unified cumulus home-page lang-hi hi en-hi find-solutions" ng-app="homeCumulusApp" id="homeCumulusApp"
>
    

    
        
            
            <div id="fb-root">
                <script>
                    window.fbAsyncInit = function() {
                        FB.init({
                            appId: '273247149353565',
                            status: true,
                            cookie: true,
                            xfbml: true,
                            oauth: true,
                            version: 'v2.8'
                        });

                        fbApiInit = true; //init flag

                        FB.AppEvents.logPageView();
                    };

                    (function(d, s, id){
                        var js, fjs = d.getElementsByTagName(s)[0];
                        if (d.getElementById(id)) {return;}
                        js = d.createElement(s); js.id = id;
                        js.src = "//connect.facebook.net/en_US/sdk.js";
                        fjs.parentNode.insertBefore(js, fjs);
                    }(document, 'script', 'facebook-jssdk'));

                    if (typeof(fbEnsureInit) === 'undefined') {
                        // Use this when you need to do a FB call contingent on the FB object loading.
                        function fbEnsureInit(callback) {
                            if(!window.fbApiInit) {
                                setTimeout(function() {fbEnsureInit(callback);}, 50);
                            } else {
                                if(callback) {
                                    callback();
                                }
                            }
                        };
                    }
                </script>
            </div>
        

        
            <aside ng-controller="offCanvasController" class="sidenav ng-cloak" ng-class="{'open' : offCanvas.isNavOpened}">
    <a href="#" ng-hide="offCanvas.isNavOpened" ng-click="showCanvas($event)" class="ng-cloak menu-icon " aria-expanded="false">
        <span><span class="text">Menu</span></span>
    </a>
    <div class="nav-wrapper" ng-class="{'open' : offCanvas.isNavOpened}">
        <a href="#" ng-click="hideCanvas($event)" class="close-menu">
            <span>Close menu</span>
            <span class="times">&times;</span>
        </a>

        <div class="user-info clearfix ng-cloak" ng-controller="userInfoCtrl as user" ng-show="user.data.user_id">
            <div class="avatar pull-left">
                <img ng-src="{[{ user.data.avatar_big }]}" />
            </div>
            <div class="pull-left">
                <div class="user-id">{[{ user.data.member_prefix }]} {[{ user.data.user_id }]}</div>
                <a href="{[{ ::user.appContextSrv.siteLanguage }]}/account/logout/" class="logins-box-logout link-dark">Logout</a>
            </div>
        </div>

        <div main-search placeholder-text="Search..." class="main-search" overlayed-area-selector=".search-overtake">
            <input type="text"/>
        </div>
        <div class="search-overtake">
            <div class="left-nav">
                <ul class="nav home-nav level-1 visible-xs">
                    <li>
                        <a href="/?stay" target="_parent">
                            <span class="nav-item-title">Home</span>
                            <span class="svgi icon-menu-arrow"></span>
                        </a>
                    </li>
                </ul>
                
                    <div class="nav-header hidden take-part ">
                        <div class="header-name">
                            <a href="/en-hi/account/" ><span class="svgi icon-take-part"></span>Take Part</a>
                        </div>
                    </div>
                    
                        
                            
                                <ul class="nav level-1 hidden">
    
        
            <li class=" ">

            
                <a href="/en-hi/results/" target="_parent">
            
                <span class="nav-item-title">
                    Latest Stories
                    
                </span>
                <span class="svgi icon-menu-arrow"></span>
                </a>
            </li>
        
    
        
            <li class=" ">

            
                <a href="/en-hi/account/panel-rewards" target="_parent">
            
                <span class="nav-item-title">
                    Rewards
                    
                </span>
                <span class="svgi icon-menu-arrow"></span>
                </a>
            </li>
        
    
        
            <li class=" ">

            
                <a href="/en-hi/account/charity" target="_parent">
            
                <span class="nav-item-title">
                    Charity
                    
                </span>
                <span class="svgi icon-menu-arrow"></span>
                </a>
            </li>
        
    
        
            <li class=" ">

            
                <a href="/en-hi/account/faqs" target="_parent">
            
                <span class="nav-item-title">
                    FAQs
                    
                </span>
                <span class="svgi icon-menu-arrow"></span>
                </a>
            </li>
        
    
        
            <li class=" ">

            
                <a href="/en-hi/account/" target="_parent">
            
                <span class="nav-item-title">
                    My Account
                    
                </span>
                <span class="svgi icon-menu-arrow"></span>
                </a>
            </li>
        
    
</ul>

                            
                        
                    

                    
                
                    <div class="nav-header hidden results ">
                        <div class="header-name">
                            <a href="/en-hi/results/" ><span class="svgi icon-results"></span>See Results</a>
                        </div>
                    </div>
                    
                        
                            
                                <ul class="nav level-1 hidden">
    
        
            <li class=" ">

            
                <a href="/en-hi/results" target="_parent">
            
                <span class="nav-item-title">
                    Home
                    
                </span>
                <span class="svgi icon-menu-arrow"></span>
                </a>
            </li>
        
    
        
            <li class=" ">

            
                <a href="/en-hi/news/categories/life/" target="_parent">
            
                <span class="nav-item-title">
                    Life
                    
                </span>
                <span class="svgi icon-menu-arrow"></span>
                </a>
            </li>
        
    
        
            <li class=" ">

            
                <a href="/en-hi/news/categories/consumer" target="_parent">
            
                <span class="nav-item-title">
                    Consumer
                    
                </span>
                <span class="svgi icon-menu-arrow"></span>
                </a>
            </li>
        
    
        
            <li class=" ">

            
                <a href="/en-hi/news/categories/sport" target="_parent">
            
                <span class="nav-item-title">
                    Sport
                    
                </span>
                <span class="svgi icon-menu-arrow"></span>
                </a>
            </li>
        
    
        
            <li class=" ">

            
                <a href="/en-hi/news/categories/politics" target="_parent">
            
                <span class="nav-item-title">
                    Politics
                    
                </span>
                <span class="svgi icon-menu-arrow"></span>
                </a>
            </li>
        
    
</ul>

                            
                        
                    

                    
                
                    <div class="nav-header hidden find-solutions ">
                        <div class="header-name">
                            <a href="/en-hi/find-solutions/" ><span class="svgi icon-find-solutions"></span>Find Solutions</a>
                        </div>
                    </div>
                    
                        
                            
                                <ul class="nav level-1 hidden">
    
        
            <li class=" ">

            
                <a href="/en-hi/find-solutions/panel" target="_parent">
            
                <span class="nav-item-title">
                    Our Panel
                    
                </span>
                <span class="svgi icon-menu-arrow"></span>
                </a>
            </li>
        
    
        
            <li class=" ">

            
                <a href="/en-hi/find-solutions/brandindex" target="_parent">
            
                <span class="nav-item-title">
                    BrandIndex
                    
                </span>
                <span class="svgi icon-menu-arrow"></span>
                </a>
            </li>
        
    
        
            <li class=" ">

            
                <a href="/en-hi/find-solutions/omnibus" target="_parent">
            
                <span class="nav-item-title">
                    Omnibus
                    
                </span>
                <span class="svgi icon-menu-arrow"></span>
                </a>
            </li>
        
    
        
            <li class=" ">

            
                <a href="/en-hi/find-solutions/profiles" target="_parent">
            
                <span class="nav-item-title">
                    Profiles
                    
                </span>
                <span class="svgi icon-menu-arrow"></span>
                </a>
            </li>
        
    
        
            <li class=" ">

            
                <a href="/en-hi/find-solutions/plan-and-track" target="_parent">
            
                <span class="nav-item-title">
                    Plan and Track
                    
                </span>
                <span class="svgi icon-menu-arrow"></span>
                </a>
            </li>
        
    
        
            <li class=" ">

            
                <a href="/en-hi/about/about" target="_parent">
            
                <span class="nav-item-title">
                    About YouGov
                    
                </span>
                <span class="svgi icon-menu-arrow"></span>
                </a>
            </li>
        
    
        
            <li class=" ">

            
                <a href="/en-hi/find-solutions/contact" target="_parent">
            
                <span class="nav-item-title">
                    Contact Us
                    
                </span>
                <span class="svgi icon-menu-arrow"></span>
                </a>
            </li>
        
    
</ul>

                            
                        
                    

                    
                
                    <div class="nav-header hidden hidden-xs ">
                        <div class="header-name">
                            <a href="/en-hi/about/" ><span class="svgi icon-hidden-xs"></span>ABOUT</a>
                        </div>
                    </div>
                    
                        
                            
                                <ul class="nav level-1 hidden">
    
        
            <li class=" ">

            
                <a href="/en-hi/about/about" target="_parent">
            
                <span class="nav-item-title">
                    About Us
                    
                </span>
                <span class="svgi icon-menu-arrow"></span>
                </a>
            </li>
        
    
        
            <li class=" ">

            
                <a href="/en-hi/about/panel" target="_parent">
            
                <span class="nav-item-title">
                    Our Panel
                    
                </span>
                <span class="svgi icon-menu-arrow"></span>
                </a>
            </li>
        
    
        
    
        
            <li class=" ">

            
                <a href="https://jobs.yougov.com/" target="_parent">
            
                <span class="nav-item-title">
                    Careers
                    
                </span>
                <span class="svgi icon-menu-arrow"></span>
                </a>
            </li>
        
    
        
            <li class=" ">

            
                <a href="/en-hi/about/investor-relations" target="_parent">
            
                <span class="nav-item-title">
                    Investor Relations
                    
                </span>
                <span class="svgi icon-menu-arrow"></span>
                </a>
            </li>
        
    
        
            <li class=" ">

            
                <a href="/en-hi/about/privacy" target="_parent">
            
                <span class="nav-item-title">
                    Privacy Policy
                    
                </span>
                <span class="svgi icon-menu-arrow"></span>
                </a>
            </li>
        
    
        
            <li class=" ">

            
                <a href="/en-hi/about/cookies" target="_parent">
            
                <span class="nav-item-title">
                    Cookie Policy
                    
                </span>
                <span class="svgi icon-menu-arrow"></span>
                </a>
            </li>
        
    
        
            <li class=" ">

            
                <a href="/en-hi/about/terms-conditions" target="_parent">
            
                <span class="nav-item-title">
                    Terms &amp; Conditions
                    
                </span>
                <span class="svgi icon-menu-arrow"></span>
                </a>
            </li>
        
    
        
            <li class=" ">

            
                <a href="/en-hi/about/contact-us" target="_parent">
            
                <span class="nav-item-title">
                    Contact Us
                    
                </span>
                <span class="svgi icon-menu-arrow"></span>
                </a>
            </li>
        
    
</ul>

                            
                        
                    

                    
                 
            </div>
            
            <div class="footer-nav">
                
	<ul class="links">
    
        <li>
            <a href="/en-hi/about" class="pull-left None" target="_self" rel="noopener">
                <span class="nav-item-title">About YouGov</span>
                <span class="svgi icon-menu-arrow visible-xs"></span>
            </a>
        </li>
    
        <li>
            <a href="/en-hi/about/contact-us/" class="pull-left None" target="_self" rel="noopener">
                <span class="nav-item-title">Contact Us</span>
                <span class="svgi icon-menu-arrow visible-xs"></span>
            </a>
        </li>
    
        <li>
            <a href="/en-hi/about/investors/" class="pull-left None" target="_self" rel="noopener">
                <span class="nav-item-title">Investor relations</span>
                <span class="svgi icon-menu-arrow visible-xs"></span>
            </a>
        </li>
    
        <li>
            <a href="/en-hi/about/privacy/" class="pull-left None" target="_self" rel="noopener">
                <span class="nav-item-title">Privacy</span>
                <span class="svgi icon-menu-arrow visible-xs"></span>
            </a>
        </li>
    
        <li>
            <a href="/en-hi/about/terms-conditions/" class="pull-left None" target="_self" rel="noopener">
                <span class="nav-item-title">Terms and Conditions</span>
                <span class="svgi icon-menu-arrow visible-xs"></span>
            </a>
        </li>
    
        <li>
            <a href="/en-hi/about/cookies/" class="pull-left None" target="_self" rel="noopener">
                <span class="nav-item-title">Cookie Policy</span>
                <span class="svgi icon-menu-arrow visible-xs"></span>
            </a>
        </li>
    
    </ul>



    <ul class="social-bookmarks">
    
        <li><a href="https://www.facebook.com/YouGov" class="pull-left facebook" target="_blank" rel="noopener"></a></li>
    
        <li><a href="https://twitter.com/YouGov_mena" class="pull-left twitter" target="_blank" rel="noopener"></a></li>
    
        <li><a href="http://yougov.co.uk/news/feeds/latest/" class="pull-left rss" target="_blank" rel="noopener"></a></li>
    
        <li><a href="https://plus.google.com/112578385432209707900/" class="pull-left gplus" target="_blank" rel="noopener"></a></li>
    
        <li><a href="https://www.linkedin.com/company/yougov-mena" class="pull-left linkedin" target="_blank" rel="noopener"></a></li>
    
    </ul>


            </div>
        </div>
    </div>
</aside>

        

        <div class="home-page-container ng-cloak">

            

<header home-page-header class="home-page-header ng-cloak">
    <div class="map-bg-wrapper">
        <div class="map-bg" >
            <div id="container" map-canvas class="hidden-xs"></div>
        </div>
    </div>
    <nav>
        <a href="#" class="left-off-canvas-toggle-phone nav-icon" aria-expanded="false"><span class="stripes"></span></a>
        <div class="nav-container">
            <div class="logo">
                <div class="clearfix site-chooser-short">
                    
                        <a href="/en-hi/?stay" class="svgi icon-yougov-logo" save-current-page reset-current-page-selection="1"></a>
                    
                        <span site-chooser class="ng-cloak"></span>
                </div>
                <div ng-class="{'invisible': !displayContent}" class="site-chooser-full hidden-xs">
                    <span site-chooser full-name="true" class="ng-cloak"></span>
                </div>
            </div>

            <div class="icon-world-map"></div>
            <h2><span>{[{ ::labels.header.welcomeToYougov }]} </span><span>{[{ ::labels.header.whatWouldYouLike }]}</span></h2>
            
            <div class="page-sections">
                <ul class="page-nav">
                    
                        <li class="take-part">
                            <div>
                                <a href="/en-hi/account/" save-current-page="/en-hi/account/">
                                    <span class="nav-section-header">
                                        <span class="svgi icon-take-part"></span>
                                        <span class="nav-text">Take Part</span>
                                        
                                            <span class="alternate-nav-text">Take Part</span>
                                        
                                    </span>
                                </a>
                                
                                <a href="/en-hi/account/" class="nav-section-description" save-current-page="/en-hi/account/">
                                    
                                        <span>
                                            <span class="nav-description-image" style='background-image: url("//d18lkz4dllo6v2.cloudfront.net/r/88/Consumers.jpg?w=320")' ></span>
                                            <span class="nav-description-container">
                                                <span ellipsis class="nav-description-header">
                                                    
                                                    
                                                    Join YouGov's panel and share your views today!
                                                </span>
                                                <span ellipsis class="nav-description-text"></span>
                                            </span>
                                        </span>
                                    
                                </a>
                            </div>
                        </li>
                    
                        <li class="results">
                            <div>
                                <a href="/en-hi/results/" save-current-page="/en-hi/results/">
                                    <span class="nav-section-header">
                                        <span class="svgi icon-results"></span>
                                        <span class="nav-text">See Results</span>
                                        
                                            <span class="alternate-nav-text">See Results</span>
                                        
                                    </span>
                                </a>
                                
                                <a href="/en-hi/results/" class="nav-section-description" save-current-page="/en-hi/results/">
                                    
                                        <span>
                                            <span class="nav-description-image" style='background-image: url("//d18lkz4dllo6v2.cloudfront.net/cumulus_uploads/entry/2019-07-22/GettyImages-524172462.jpg?w=320")' ></span>
                                            <span class="nav-description-container">
                                                <span ellipsis class="nav-description-header">
                                                    
                                                        {[{ ::labels.header.latest }]}:
                                                    
                                                    
                                                    More than half of mutual fund investors in India are thinking of increasing their investments
                                                </span>
                                                <span ellipsis class="nav-description-text">Although mutual fund penetration still has room to grow, people who’ve been investing for more than 2 years are looking to add to their MF investments while many new millennial investors are still hesitant</span>
                                            </span>
                                        </span>
                                    
                                </a>
                            </div>
                        </li>
                    
                        <li class="find-solutions">
                            <div>
                                <a href="/en-hi/find-solutions/" save-current-page="/en-hi/find-solutions/">
                                    <span class="nav-section-header">
                                        <span class="svgi icon-find-solutions"></span>
                                        <span class="nav-text">Find Solutions</span>
                                        
                                            <span class="alternate-nav-text">Solutions</span>
                                        
                                    </span>
                                </a>
                                
                                <a href="/en-hi/find-solutions/" class="nav-section-description" save-current-page="/en-hi/find-solutions/">
                                    
                                        <span>
                                            <span class="nav-description-image" style='background-image: url("//d18lkz4dllo6v2.cloudfront.net/r/88/Solutions_image.png?w=260")' ></span>
                                            <span class="nav-description-container">
                                                <span ellipsis class="nav-description-header">
                                                    
                                                    
                                                    Discover our products and services
                                                </span>
                                                <span ellipsis class="nav-description-text"></span>
                                            </span>
                                        </span>
                                    
                                </a>
                            </div>
                        </li>
                    
                </ul>
            </div>

     
            <div ng-if="::displayContent" login-box class="fade-in"></div>
            
            <a href="#" class="magnifier-glass"><span class="svgi icon-magnifier-white left-off-canvas-toggle-phone"></span></a>
        </div>
    </nav>

    <div class="main-search-box">
        <div class="main-search-wrapper fade-in" ng-if="::displayContent">
            <div main-search placeholder-text="Search..." class="main-search" overlayed-area-selector=".search-overtake"><input type="text"/></div>
        </div>
    </div>
    
    <div class="line-arrow"></div>
    <div class="arrows-animation">
        <svg class="arrows">
            <path class="a1" d="M0 0 L20 20 L40 0"></path>
            <path class="a2" d="M0 20 L20 40 L40 20"></path>
        </svg>
    </div>
    <p ng-if="::displayContent" class="yougov-question fade-in ng-cloak">
        {[{ ::labels.header.whatIsYougov }]}
    </p>
</header>


            <div ng-if="::displayContent" class="home-page-content fade-in container">
                <div home-line>
                    

<div home-page-sections></div>


                </div>
            </div>

            
                <div cookie-confirm></div>
            

            
                <footer ng-if="displayContent" class="footer-tall">
    <div class="footer-content">
    <div class="section-nav">
        <div class="nav-header">
            <a href="/" class="svgi icon-yougov-logo"></a>
        </div>
        
	<ul class="links">
    
        <li>
            <a href="/en-hi/about" class="pull-left None" target="_self" rel="noopener">
                <span class="nav-item-title">About YouGov</span>
                <span class="svgi icon-menu-arrow visible-xs"></span>
            </a>
        </li>
    
        <li>
            <a href="/en-hi/about/contact-us/" class="pull-left None" target="_self" rel="noopener">
                <span class="nav-item-title">Contact Us</span>
                <span class="svgi icon-menu-arrow visible-xs"></span>
            </a>
        </li>
    
        <li>
            <a href="/en-hi/about/investors/" class="pull-left None" target="_self" rel="noopener">
                <span class="nav-item-title">Investor relations</span>
                <span class="svgi icon-menu-arrow visible-xs"></span>
            </a>
        </li>
    
        <li>
            <a href="/en-hi/about/privacy/" class="pull-left None" target="_self" rel="noopener">
                <span class="nav-item-title">Privacy</span>
                <span class="svgi icon-menu-arrow visible-xs"></span>
            </a>
        </li>
    
        <li>
            <a href="/en-hi/about/terms-conditions/" class="pull-left None" target="_self" rel="noopener">
                <span class="nav-item-title">Terms and Conditions</span>
                <span class="svgi icon-menu-arrow visible-xs"></span>
            </a>
        </li>
    
        <li>
            <a href="/en-hi/about/cookies/" class="pull-left None" target="_self" rel="noopener">
                <span class="nav-item-title">Cookie Policy</span>
                <span class="svgi icon-menu-arrow visible-xs"></span>
            </a>
        </li>
    
    </ul>



    <ul class="social-bookmarks">
    
        <li><a href="https://www.facebook.com/YouGov" class="pull-left facebook" target="_blank" rel="noopener"></a></li>
    
        <li><a href="https://twitter.com/YouGov_mena" class="pull-left twitter" target="_blank" rel="noopener"></a></li>
    
        <li><a href="http://yougov.co.uk/news/feeds/latest/" class="pull-left rss" target="_blank" rel="noopener"></a></li>
    
        <li><a href="https://plus.google.com/112578385432209707900/" class="pull-left gplus" target="_blank" rel="noopener"></a></li>
    
        <li><a href="https://www.linkedin.com/company/yougov-mena" class="pull-left linkedin" target="_blank" rel="noopener"></a></li>
    
    </ul>


    </div>

    
        <div class="section-nav take-part">
            <div class="nav-header take-part">
                <a href="/en-hi/account/" >Take Part</a>
            </div>
            
                
                    
                        <ul class="nav level-1 hidden">
    
        
            <li class=" ">

            
                <a href="/en-hi/results/" target="_parent">
            
                <span class="nav-item-title">
                    Latest Stories
                    
                </span>
                <span class="svgi icon-menu-arrow"></span>
                </a>
            </li>
        
    
        
            <li class=" ">

            
                <a href="/en-hi/account/panel-rewards" target="_parent">
            
                <span class="nav-item-title">
                    Rewards
                    
                </span>
                <span class="svgi icon-menu-arrow"></span>
                </a>
            </li>
        
    
        
            <li class=" ">

            
                <a href="/en-hi/account/charity" target="_parent">
            
                <span class="nav-item-title">
                    Charity
                    
                </span>
                <span class="svgi icon-menu-arrow"></span>
                </a>
            </li>
        
    
        
            <li class=" ">

            
                <a href="/en-hi/account/faqs" target="_parent">
            
                <span class="nav-item-title">
                    FAQs
                    
                </span>
                <span class="svgi icon-menu-arrow"></span>
                </a>
            </li>
        
    
        
            <li class=" ">

            
                <a href="/en-hi/account/" target="_parent">
            
                <span class="nav-item-title">
                    My Account
                    
                </span>
                <span class="svgi icon-menu-arrow"></span>
                </a>
            </li>
        
    
</ul>

                    
                
            

            
        </div>
    
        <div class="section-nav results">
            <div class="nav-header results">
                <a href="/en-hi/results/" >See Results</a>
            </div>
            
                
                    
                        <ul class="nav level-1 hidden">
    
        
            <li class=" ">

            
                <a href="/en-hi/results" target="_parent">
            
                <span class="nav-item-title">
                    Home
                    
                </span>
                <span class="svgi icon-menu-arrow"></span>
                </a>
            </li>
        
    
        
            <li class=" ">

            
                <a href="/en-hi/news/categories/life/" target="_parent">
            
                <span class="nav-item-title">
                    Life
                    
                </span>
                <span class="svgi icon-menu-arrow"></span>
                </a>
            </li>
        
    
        
            <li class=" ">

            
                <a href="/en-hi/news/categories/consumer" target="_parent">
            
                <span class="nav-item-title">
                    Consumer
                    
                </span>
                <span class="svgi icon-menu-arrow"></span>
                </a>
            </li>
        
    
        
            <li class=" ">

            
                <a href="/en-hi/news/categories/sport" target="_parent">
            
                <span class="nav-item-title">
                    Sport
                    
                </span>
                <span class="svgi icon-menu-arrow"></span>
                </a>
            </li>
        
    
        
            <li class=" ">

            
                <a href="/en-hi/news/categories/politics" target="_parent">
            
                <span class="nav-item-title">
                    Politics
                    
                </span>
                <span class="svgi icon-menu-arrow"></span>
                </a>
            </li>
        
    
</ul>

                    
                
            

            
        </div>
    
        <div class="section-nav find-solutions">
            <div class="nav-header find-solutions">
                <a href="/en-hi/find-solutions/" >Find Solutions</a>
            </div>
            
                
                    
                        <ul class="nav level-1 hidden">
    
        
            <li class=" ">

            
                <a href="/en-hi/find-solutions/panel" target="_parent">
            
                <span class="nav-item-title">
                    Our Panel
                    
                </span>
                <span class="svgi icon-menu-arrow"></span>
                </a>
            </li>
        
    
        
            <li class=" ">

            
                <a href="/en-hi/find-solutions/brandindex" target="_parent">
            
                <span class="nav-item-title">
                    BrandIndex
                    
                </span>
                <span class="svgi icon-menu-arrow"></span>
                </a>
            </li>
        
    
        
            <li class=" ">

            
                <a href="/en-hi/find-solutions/omnibus" target="_parent">
            
                <span class="nav-item-title">
                    Omnibus
                    
                </span>
                <span class="svgi icon-menu-arrow"></span>
                </a>
            </li>
        
    
        
            <li class=" ">

            
                <a href="/en-hi/find-solutions/profiles" target="_parent">
            
                <span class="nav-item-title">
                    Profiles
                    
                </span>
                <span class="svgi icon-menu-arrow"></span>
                </a>
            </li>
        
    
        
            <li class=" ">

            
                <a href="/en-hi/find-solutions/plan-and-track" target="_parent">
            
                <span class="nav-item-title">
                    Plan and Track
                    
                </span>
                <span class="svgi icon-menu-arrow"></span>
                </a>
            </li>
        
    
        
            <li class=" ">

            
                <a href="/en-hi/about/about" target="_parent">
            
                <span class="nav-item-title">
                    About YouGov
                    
                </span>
                <span class="svgi icon-menu-arrow"></span>
                </a>
            </li>
        
    
        
            <li class=" ">

            
                <a href="/en-hi/find-solutions/contact" target="_parent">
            
                <span class="nav-item-title">
                    Contact Us
                    
                </span>
                <span class="svgi icon-menu-arrow"></span>
                </a>
            </li>
        
    
</ul>

                    
                
            

            
        </div>
    
        <div class="section-nav hidden-xs">
            <div class="nav-header hidden-xs">
                <a href="/en-hi/about/" >ABOUT</a>
            </div>
            
                
                    
                        <ul class="nav level-1 hidden">
    
        
            <li class=" ">

            
                <a href="/en-hi/about/about" target="_parent">
            
                <span class="nav-item-title">
                    About Us
                    
                </span>
                <span class="svgi icon-menu-arrow"></span>
                </a>
            </li>
        
    
        
            <li class=" ">

            
                <a href="/en-hi/about/panel" target="_parent">
            
                <span class="nav-item-title">
                    Our Panel
                    
                </span>
                <span class="svgi icon-menu-arrow"></span>
                </a>
            </li>
        
    
        
    
        
            <li class=" ">

            
                <a href="https://jobs.yougov.com/" target="_parent">
            
                <span class="nav-item-title">
                    Careers
                    
                </span>
                <span class="svgi icon-menu-arrow"></span>
                </a>
            </li>
        
    
        
            <li class=" ">

            
                <a href="/en-hi/about/investor-relations" target="_parent">
            
                <span class="nav-item-title">
                    Investor Relations
                    
                </span>
                <span class="svgi icon-menu-arrow"></span>
                </a>
            </li>
        
    
        
            <li class=" ">

            
                <a href="/en-hi/about/privacy" target="_parent">
            
                <span class="nav-item-title">
                    Privacy Policy
                    
                </span>
                <span class="svgi icon-menu-arrow"></span>
                </a>
            </li>
        
    
        
            <li class=" ">

            
                <a href="/en-hi/about/cookies" target="_parent">
            
                <span class="nav-item-title">
                    Cookie Policy
                    
                </span>
                <span class="svgi icon-menu-arrow"></span>
                </a>
            </li>
        
    
        
            <li class=" ">

            
                <a href="/en-hi/about/terms-conditions" target="_parent">
            
                <span class="nav-item-title">
                    Terms &amp; Conditions
                    
                </span>
                <span class="svgi icon-menu-arrow"></span>
                </a>
            </li>
        
    
        
            <li class=" ">

            
                <a href="/en-hi/about/contact-us" target="_parent">
            
                <span class="nav-item-title">
                    Contact Us
                    
                </span>
                <span class="svgi icon-menu-arrow"></span>
                </a>
            </li>
        
    
</ul>

                    
                
            

            
        </div>
    
</div>

</footer>

            

        </div>
        <a class="exit-off-canvas hidden left-off-canvas-toggle-phone"></a>

        <script id="home_map_complex" type="text/template">
{"side_size":8, "points":[{"x":141,"y":382},{"x":505,"y":592},{"x":211,"y":536},{"x":337,"y":634},{"x":449,"y":522},{"x":197,"y":312},{"x":365,"y":802},{"x":253,"y":354},{"x":253,"y":480},{"x":267,"y":802},{"x":281,"y":340},{"x":519,"y":564},{"x":253,"y":788},{"x":463,"y":508},{"x":239,"y":172},{"x":225,"y":200},{"x":505,"y":424},{"x":421,"y":634},{"x":211,"y":690},{"x":295,"y":172},{"x":323,"y":60},{"x":211,"y":4},{"x":337,"y":494},{"x":127,"y":494},{"x":351,"y":620},{"x":211,"y":816},{"x":351,"y":914},{"x":407,"y":396},{"x":99,"y":480},{"x":253,"y":438},{"x":561,"y":424},{"x":813,"y":298},{"x":463,"y":424},{"x":71,"y":508},{"x":85,"y":536},{"x":519,"y":424},{"x":533,"y":466},{"x":323,"y":438},{"x":197,"y":130},{"x":729,"y":382},{"x":575,"y":494},{"x":99,"y":340},{"x":743,"y":438},{"x":631,"y":396},{"x":239,"y":32},{"x":421,"y":368},{"x":491,"y":620},{"x":211,"y":550},{"x":407,"y":368},{"x":225,"y":844},{"x":407,"y":508},{"x":365,"y":816},{"x":379,"y":662},{"x":267,"y":746},{"x":281,"y":522},{"x":225,"y":158},{"x":617,"y":396},{"x":281,"y":228},{"x":393,"y":606},{"x":309,"y":830},{"x":309,"y":802},{"x":183,"y":690},{"x":169,"y":466},{"x":757,"y":438},{"x":561,"y":396},{"x":351,"y":480},{"x":239,"y":494},{"x":393,"y":732},{"x":253,"y":690},{"x":155,"y":410},{"x":421,"y":578},{"x":365,"y":466},{"x":365,"y":396},{"x":323,"y":928},{"x":169,"y":18},{"x":715,"y":466},{"x":43,"y":480},{"x":407,"y":690},{"x":337,"y":592},{"x":449,"y":424},{"x":701,"y":396},{"x":323,"y":382},{"x":267,"y":760},{"x":323,"y":354},{"x":253,"y":872},{"x":547,"y":410},{"x":631,"y":340},{"x":239,"y":550},{"x":449,"y":368},{"x":267,"y":844},{"x":771,"y":368},{"x":281,"y":830},{"x":393,"y":242},{"x":407,"y":732},{"x":435,"y":326},{"x":267,"y":522},{"x":323,"y":788},{"x":253,"y":816},{"x":295,"y":942},{"x":225,"y":774},{"x":253,"y":830},{"x":239,"y":88},{"x":575,"y":536},{"x":589,"y":466},{"x":351,"y":270},{"x":869,"y":284},{"x":323,"y":564},{"x":309,"y":228},{"x":71,"y":382},{"x":253,"y":284},{"x":281,"y":536},{"x":701,"y":354},{"x":365,"y":648},{"x":295,"y":732},{"x":323,"y":116},{"x":295,"y":816},{"x":631,"y":522},{"x":267,"y":508},{"x":575,"y":480},{"x":211,"y":662},{"x":393,"y":340},{"x":85,"y":466},{"x":295,"y":900},{"x":295,"y":74},{"x":351,"y":592},{"x":323,"y":242},{"x":351,"y":732},{"x":309,"y":424},{"x":309,"y":914},{"x":323,"y":830},{"x":71,"y":354},{"x":589,"y":424},{"x":127,"y":452},{"x":239,"y":144},{"x":295,"y":648},{"x":309,"y":746},{"x":267,"y":788},{"x":239,"y":410},{"x":561,"y":536},{"x":365,"y":536},{"x":295,"y":578},{"x":211,"y":368},{"x":323,"y":102},{"x":281,"y":312},{"x":323,"y":158},{"x":631,"y":494},{"x":141,"y":494},{"x":113,"y":452},{"x":547,"y":368},{"x":323,"y":228},{"x":267,"y":886},{"x":379,"y":732},{"x":113,"y":424},{"x":309,"y":872},{"x":309,"y":186},{"x":239,"y":326},{"x":295,"y":676},{"x":113,"y":410},{"x":309,"y":956},{"x":393,"y":536},{"x":505,"y":396},{"x":575,"y":452},{"x":239,"y":564},{"x":533,"y":550},{"x":211,"y":382},{"x":813,"y":354},{"x":183,"y":648},{"x":281,"y":494},{"x":281,"y":256},{"x":379,"y":368},{"x":281,"y":172},{"x":757,"y":298},{"x":309,"y":844},{"x":211,"y":676},{"x":267,"y":424},{"x":617,"y":368},{"x":43,"y":522},{"x":771,"y":354},{"x":295,"y":228},{"x":225,"y":648},{"x":155,"y":424},{"x":211,"y":844},{"x":253,"y":494},{"x":351,"y":844},{"x":225,"y":186},{"x":771,"y":396},{"x":239,"y":732},{"x":225,"y":382},{"x":379,"y":382},{"x":211,"y":830},{"x":393,"y":438},{"x":239,"y":298},{"x":267,"y":410},{"x":295,"y":88},{"x":505,"y":438},{"x":169,"y":536},{"x":519,"y":606},{"x":267,"y":550},{"x":785,"y":368},{"x":197,"y":452},{"x":491,"y":648},{"x":491,"y":564},{"x":309,"y":116},{"x":253,"y":732},{"x":477,"y":634},{"x":407,"y":606},{"x":267,"y":242},{"x":281,"y":116},{"x":407,"y":340},{"x":253,"y":452},{"x":575,"y":382},{"x":337,"y":522},{"x":561,"y":550},{"x":309,"y":172},{"x":365,"y":60},{"x":477,"y":592},{"x":365,"y":550},{"x":239,"y":788},{"x":295,"y":340},{"x":183,"y":312},{"x":183,"y":564},{"x":169,"y":508},{"x":127,"y":396},{"x":393,"y":480},{"x":337,"y":886},{"x":757,"y":354},{"x":477,"y":578},{"x":323,"y":648},{"x":491,"y":536},{"x":813,"y":312},{"x":603,"y":410},{"x":253,"y":466},{"x":29,"y":508},{"x":197,"y":522},{"x":323,"y":732},{"x":827,"y":242},{"x":841,"y":298},{"x":169,"y":256},{"x":337,"y":74},{"x":337,"y":228},{"x":393,"y":452},{"x":379,"y":690},{"x":225,"y":886},{"x":491,"y":354},{"x":295,"y":914},{"x":155,"y":690},{"x":267,"y":942},{"x":365,"y":676},{"x":365,"y":620},{"x":729,"y":326},{"x":295,"y":284},{"x":141,"y":340},{"x":435,"y":634},{"x":295,"y":368},{"x":155,"y":508},{"x":421,"y":508},{"x":323,"y":914},{"x":197,"y":592},{"x":575,"y":410},{"x":295,"y":802},{"x":337,"y":298},{"x":323,"y":956},{"x":211,"y":648},{"x":351,"y":340},{"x":337,"y":648},{"x":169,"y":704},{"x":351,"y":564},{"x":169,"y":550},{"x":561,"y":480},{"x":141,"y":368},{"x":309,"y":480},{"x":421,"y":718},{"x":393,"y":592},{"x":323,"y":172},{"x":309,"y":774},{"x":645,"y":508},{"x":351,"y":830},{"x":365,"y":410},{"x":295,"y":984},{"x":337,"y":914},{"x":281,"y":774},{"x":281,"y":844},{"x":337,"y":326},{"x":435,"y":424},{"x":281,"y":816},{"x":365,"y":704},{"x":239,"y":900},{"x":365,"y":74},{"x":729,"y":368},{"x":351,"y":704},{"x":309,"y":410},{"x":281,"y":60},{"x":323,"y":676},{"x":827,"y":256},{"x":477,"y":522},{"x":505,"y":466},{"x":225,"y":298},{"x":365,"y":354},{"x":211,"y":424},{"x":365,"y":368},{"x":239,"y":158},{"x":561,"y":592},{"x":211,"y":564},{"x":799,"y":326},{"x":99,"y":522},{"x":225,"y":536},{"x":351,"y":634},{"x":519,"y":438},{"x":225,"y":438},{"x":253,"y":298},{"x":225,"y":802},{"x":211,"y":74},{"x":295,"y":242},{"x":729,"y":452},{"x":211,"y":116},{"x":477,"y":480},{"x":225,"y":340},{"x":351,"y":396},{"x":505,"y":564},{"x":435,"y":340},{"x":603,"y":438},{"x":435,"y":606},{"x":617,"y":438},{"x":309,"y":312},{"x":435,"y":578},{"x":211,"y":410},{"x":421,"y":620},{"x":253,"y":774},{"x":729,"y":312},{"x":155,"y":368},{"x":715,"y":382},{"x":267,"y":74},{"x":505,"y":536},{"x":379,"y":410},{"x":757,"y":326},{"x":743,"y":410},{"x":267,"y":32},{"x":351,"y":466},{"x":155,"y":312},{"x":463,"y":606},{"x":743,"y":382},{"x":491,"y":340},{"x":421,"y":536},{"x":785,"y":270},{"x":757,"y":368},{"x":351,"y":410},{"x":295,"y":564},{"x":211,"y":452},{"x":183,"y":452},{"x":337,"y":340},{"x":127,"y":368},{"x":225,"y":46},{"x":281,"y":858},{"x":211,"y":312},{"x":155,"y":284},{"x":295,"y":452},{"x":211,"y":18},{"x":211,"y":186},{"x":267,"y":606},{"x":295,"y":704},{"x":127,"y":340},{"x":57,"y":494},{"x":225,"y":704},{"x":211,"y":298},{"x":561,"y":494},{"x":617,"y":452},{"x":463,"y":592},{"x":281,"y":326},{"x":421,"y":550},{"x":169,"y":578},{"x":337,"y":550},{"x":71,"y":312},{"x":463,"y":634},{"x":155,"y":578},{"x":281,"y":46},{"x":253,"y":844},{"x":421,"y":424},{"x":435,"y":662},{"x":477,"y":424},{"x":197,"y":480},{"x":365,"y":760},{"x":113,"y":522},{"x":841,"y":312},{"x":295,"y":844},{"x":659,"y":354},{"x":295,"y":354},{"x":239,"y":102},{"x":169,"y":284},{"x":337,"y":214},{"x":253,"y":102},{"x":323,"y":396},{"x":771,"y":284},{"x":127,"y":410},{"x":309,"y":928},{"x":211,"y":494},{"x":337,"y":466},{"x":267,"y":382},{"x":617,"y":354},{"x":309,"y":522},{"x":519,"y":522},{"x":715,"y":354},{"x":267,"y":592},{"x":211,"y":326},{"x":295,"y":396},{"x":743,"y":312},{"x":407,"y":676},{"x":253,"y":270},{"x":477,"y":620},{"x":253,"y":718},{"x":99,"y":508},{"x":155,"y":340},{"x":337,"y":354},{"x":267,"y":816},{"x":169,"y":690},{"x":211,"y":200},{"x":477,"y":382},{"x":239,"y":4},{"x":281,"y":872},{"x":715,"y":368},{"x":183,"y":368},{"x":267,"y":578},{"x":323,"y":466},{"x":155,"y":494},{"x":379,"y":648},{"x":351,"y":452},{"x":85,"y":480},{"x":43,"y":452},{"x":365,"y":424},{"x":435,"y":522},{"x":295,"y":592},{"x":617,"y":340},{"x":435,"y":410},{"x":365,"y":564},{"x":225,"y":172},{"x":435,"y":676},{"x":281,"y":298},{"x":211,"y":620},{"x":239,"y":396},{"x":351,"y":368},{"x":225,"y":662},{"x":309,"y":74},{"x":267,"y":158},{"x":267,"y":928},{"x":253,"y":74},{"x":267,"y":102},{"x":463,"y":354},{"x":435,"y":368},{"x":197,"y":88},{"x":743,"y":452},{"x":379,"y":746},{"x":351,"y":802},{"x":211,"y":340},{"x":141,"y":662},{"x":281,"y":214},{"x":463,"y":662},{"x":589,"y":410},{"x":211,"y":354},{"x":225,"y":424},{"x":575,"y":578},{"x":141,"y":592},{"x":211,"y":634},{"x":197,"y":802},{"x":239,"y":424},{"x":169,"y":298},{"x":379,"y":424},{"x":365,"y":718},{"x":267,"y":88},{"x":267,"y":620},{"x":533,"y":508},{"x":57,"y":522},{"x":393,"y":634},{"x":295,"y":536},{"x":57,"y":466},{"x":379,"y":578},{"x":323,"y":270},{"x":267,"y":396},{"x":225,"y":872},{"x":435,"y":508},{"x":295,"y":662},{"x":589,"y":480},{"x":589,"y":494},{"x":743,"y":424},{"x":337,"y":284},{"x":211,"y":718},{"x":799,"y":270},{"x":491,"y":480},{"x":281,"y":382},{"x":127,"y":326},{"x":71,"y":466},{"x":337,"y":382},{"x":491,"y":382},{"x":449,"y":396},{"x":351,"y":760},{"x":239,"y":480},{"x":211,"y":732},{"x":295,"y":130},{"x":421,"y":522},{"x":379,"y":326},{"x":253,"y":606},{"x":379,"y":396},{"x":141,"y":634},{"x":547,"y":382},{"x":211,"y":466},{"x":365,"y":914},{"x":295,"y":550},{"x":869,"y":312},{"x":253,"y":340},{"x":603,"y":480},{"x":85,"y":550},{"x":435,"y":438},{"x":211,"y":144},{"x":141,"y":522},{"x":183,"y":606},{"x":491,"y":578},{"x":197,"y":438},{"x":239,"y":662},{"x":295,"y":830},{"x":505,"y":480},{"x":141,"y":564},{"x":617,"y":508},{"x":379,"y":312},{"x":309,"y":256},{"x":561,"y":578},{"x":253,"y":158},{"x":603,"y":368},{"x":799,"y":382},{"x":225,"y":410},{"x":295,"y":746},{"x":337,"y":438},{"x":225,"y":480},{"x":155,"y":634},{"x":547,"y":494},{"x":155,"y":452},{"x":57,"y":340},{"x":449,"y":480},{"x":547,"y":452},{"x":533,"y":410},{"x":113,"y":550},{"x":757,"y":284},{"x":351,"y":606},{"x":155,"y":32},{"x":99,"y":424},{"x":407,"y":480},{"x":379,"y":802},{"x":351,"y":508},{"x":771,"y":452},{"x":309,"y":550},{"x":71,"y":368},{"x":183,"y":46},{"x":785,"y":284},{"x":281,"y":732},{"x":337,"y":928},{"x":449,"y":662},{"x":309,"y":704},{"x":505,"y":634},{"x":337,"y":676},{"x":71,"y":452},{"x":505,"y":508},{"x":281,"y":676},{"x":267,"y":662},{"x":295,"y":410},{"x":477,"y":648},{"x":155,"y":550},{"x":323,"y":74},{"x":337,"y":788},{"x":813,"y":284},{"x":309,"y":732},{"x":435,"y":592},{"x":281,"y":186},{"x":141,"y":606},{"x":295,"y":466},{"x":533,"y":480},{"x":99,"y":438},{"x":169,"y":564},{"x":337,"y":760},{"x":113,"y":396},{"x":337,"y":746},{"x":225,"y":214},{"x":309,"y":970},{"x":253,"y":942},{"x":295,"y":200},{"x":211,"y":256},{"x":253,"y":368},{"x":463,"y":494},{"x":323,"y":634},{"x":267,"y":326},{"x":281,"y":802},{"x":393,"y":494},{"x":253,"y":46},{"x":449,"y":634},{"x":561,"y":368},{"x":323,"y":452},{"x":253,"y":508},{"x":281,"y":88},{"x":743,"y":340},{"x":407,"y":634},{"x":477,"y":368},{"x":715,"y":452},{"x":211,"y":802},{"x":771,"y":410},{"x":267,"y":312},{"x":141,"y":508},{"x":379,"y":592},{"x":365,"y":522},{"x":239,"y":214},{"x":239,"y":46},{"x":351,"y":228},{"x":211,"y":522},{"x":449,"y":438},{"x":155,"y":620},{"x":687,"y":354},{"x":183,"y":466},{"x":253,"y":662},{"x":169,"y":438},{"x":309,"y":242},{"x":379,"y":564},{"x":477,"y":452},{"x":365,"y":494},{"x":393,"y":704},{"x":85,"y":340},{"x":267,"y":466},{"x":169,"y":354},{"x":519,"y":578},{"x":239,"y":452},{"x":631,"y":508},{"x":449,"y":494},{"x":281,"y":914},{"x":253,"y":592},{"x":281,"y":886},{"x":841,"y":284},{"x":603,"y":382},{"x":365,"y":508},{"x":351,"y":242},{"x":365,"y":858},{"x":267,"y":116},{"x":197,"y":550},{"x":435,"y":690},{"x":239,"y":872},{"x":225,"y":634},{"x":519,"y":592},{"x":533,"y":396},{"x":309,"y":270},{"x":365,"y":690},{"x":533,"y":578},{"x":239,"y":354},{"x":183,"y":704},{"x":771,"y":382},{"x":715,"y":312},{"x":365,"y":270},{"x":323,"y":774},{"x":421,"y":690},{"x":225,"y":690},{"x":197,"y":340},{"x":281,"y":788},{"x":309,"y":60},{"x":337,"y":536},{"x":253,"y":956},{"x":281,"y":900},{"x":267,"y":270},{"x":225,"y":130},{"x":533,"y":536},{"x":449,"y":508},{"x":197,"y":242},{"x":267,"y":900},{"x":239,"y":186},{"x":491,"y":438},{"x":379,"y":774},{"x":281,"y":690},{"x":295,"y":438},{"x":365,"y":228},{"x":253,"y":914},{"x":267,"y":284},{"x":799,"y":284},{"x":757,"y":480},{"x":351,"y":438},{"x":505,"y":494},{"x":645,"y":354},{"x":519,"y":536},{"x":323,"y":592},{"x":281,"y":74},{"x":211,"y":32},{"x":211,"y":746},{"x":729,"y":340},{"x":197,"y":4},{"x":309,"y":130},{"x":323,"y":508},{"x":421,"y":606},{"x":421,"y":648},{"x":771,"y":340},{"x":547,"y":578},{"x":393,"y":396},{"x":141,"y":396},{"x":463,"y":410},{"x":29,"y":466},{"x":379,"y":438},{"x":435,"y":564},{"x":617,"y":480},{"x":589,"y":536},{"x":141,"y":648},{"x":141,"y":354},{"x":267,"y":872},{"x":491,"y":424},{"x":701,"y":382},{"x":239,"y":508},{"x":463,"y":550},{"x":407,"y":620},{"x":463,"y":368},{"x":477,"y":410},{"x":337,"y":620},{"x":225,"y":74},{"x":743,"y":354},{"x":505,"y":452},{"x":43,"y":536},{"x":561,"y":466},{"x":183,"y":242},{"x":407,"y":550},{"x":491,"y":592},{"x":323,"y":536},{"x":197,"y":648},{"x":575,"y":466},{"x":309,"y":760},{"x":267,"y":704},{"x":225,"y":4},{"x":281,"y":746},{"x":463,"y":480},{"x":491,"y":606},{"x":799,"y":354},{"x":365,"y":774},{"x":575,"y":550},{"x":337,"y":662},{"x":225,"y":760},{"x":435,"y":354},{"x":379,"y":494},{"x":281,"y":970},{"x":309,"y":606},{"x":799,"y":368},{"x":463,"y":578},{"x":799,"y":298},{"x":239,"y":382},{"x":295,"y":256},{"x":309,"y":634},{"x":267,"y":858},{"x":225,"y":620},{"x":337,"y":256},{"x":379,"y":788},{"x":771,"y":298},{"x":197,"y":298},{"x":421,"y":704},{"x":309,"y":88},{"x":449,"y":550},{"x":211,"y":60},{"x":267,"y":438},{"x":197,"y":662},{"x":743,"y":368},{"x":29,"y":452},{"x":463,"y":466},{"x":211,"y":774},{"x":309,"y":662},{"x":603,"y":494},{"x":197,"y":368},{"x":785,"y":410},{"x":183,"y":508},{"x":309,"y":340},{"x":15,"y":466},{"x":197,"y":102},{"x":281,"y":130},{"x":155,"y":676},{"x":183,"y":88},{"x":211,"y":284},{"x":841,"y":256},{"x":323,"y":620},{"x":225,"y":592},{"x":351,"y":494},{"x":267,"y":46},{"x":239,"y":690},{"x":281,"y":368},{"x":253,"y":424},{"x":211,"y":46},{"x":169,"y":270},{"x":267,"y":298},{"x":365,"y":256},{"x":253,"y":116},{"x":505,"y":340},{"x":351,"y":872},{"x":379,"y":452},{"x":323,"y":326},{"x":281,"y":564},{"x":379,"y":228},{"x":323,"y":690},{"x":239,"y":438},{"x":673,"y":396},{"x":659,"y":368},{"x":281,"y":718},{"x":337,"y":130},{"x":197,"y":718},{"x":225,"y":242},{"x":239,"y":816},{"x":365,"y":662},{"x":281,"y":158},{"x":183,"y":732},{"x":183,"y":410},{"x":785,"y":354},{"x":127,"y":438},{"x":337,"y":718},{"x":379,"y":718},{"x":309,"y":298},{"x":169,"y":424},{"x":197,"y":564},{"x":253,"y":18},{"x":99,"y":326},{"x":393,"y":312},{"x":239,"y":914},{"x":687,"y":396},{"x":309,"y":452},{"x":715,"y":340},{"x":351,"y":382},{"x":393,"y":718},{"x":57,"y":536},{"x":435,"y":536},{"x":421,"y":592},{"x":365,"y":788},{"x":141,"y":480},{"x":127,"y":466},{"x":603,"y":522},{"x":365,"y":438},{"x":575,"y":438},{"x":407,"y":578},{"x":617,"y":410},{"x":407,"y":438},{"x":547,"y":466},{"x":379,"y":298},{"x":211,"y":788},{"x":323,"y":760},{"x":337,"y":900},{"x":281,"y":284},{"x":197,"y":536},{"x":407,"y":704},{"x":351,"y":256},{"x":533,"y":368},{"x":351,"y":326},{"x":309,"y":858},{"x":547,"y":480},{"x":253,"y":704},{"x":295,"y":60},{"x":715,"y":396},{"x":477,"y":508},{"x":239,"y":284},{"x":365,"y":382},{"x":197,"y":732},{"x":253,"y":746},{"x":309,"y":368},{"x":309,"y":564},{"x":225,"y":284},{"x":365,"y":340},{"x":421,"y":662},{"x":225,"y":550},{"x":393,"y":354},{"x":309,"y":788},{"x":281,"y":984},{"x":365,"y":480},{"x":295,"y":480},{"x":295,"y":382},{"x":295,"y":214},{"x":463,"y":522},{"x":225,"y":354},{"x":393,"y":522},{"x":757,"y":340},{"x":323,"y":718},{"x":183,"y":480},{"x":519,"y":550},{"x":393,"y":508},{"x":113,"y":480},{"x":379,"y":354},{"x":561,"y":522},{"x":365,"y":592},{"x":575,"y":522},{"x":295,"y":522},{"x":211,"y":858},{"x":225,"y":228},{"x":253,"y":550},{"x":547,"y":564},{"x":225,"y":396},{"x":239,"y":116},{"x":113,"y":326},{"x":239,"y":522},{"x":253,"y":172},{"x":589,"y":452},{"x":169,"y":676},{"x":855,"y":298},{"x":225,"y":676},{"x":169,"y":382},{"x":351,"y":816},{"x":253,"y":228},{"x":757,"y":466},{"x":197,"y":508},{"x":393,"y":690},{"x":379,"y":536},{"x":365,"y":886},{"x":351,"y":900},{"x":183,"y":130},{"x":225,"y":18},{"x":295,"y":606},{"x":295,"y":144},{"x":337,"y":102},{"x":57,"y":550},{"x":421,"y":494},{"x":603,"y":466},{"x":267,"y":228},{"x":393,"y":326},{"x":239,"y":74},{"x":351,"y":662},{"x":155,"y":536},{"x":183,"y":760},{"x":435,"y":704},{"x":281,"y":928},{"x":631,"y":354},{"x":505,"y":578},{"x":239,"y":368},{"x":253,"y":760},{"x":365,"y":312},{"x":337,"y":844},{"x":757,"y":452},{"x":141,"y":620},{"x":239,"y":634},{"x":295,"y":718},{"x":239,"y":746},{"x":365,"y":326},{"x":267,"y":452},{"x":309,"y":158},{"x":99,"y":396},{"x":113,"y":466},{"x":295,"y":620},{"x":295,"y":508},{"x":337,"y":606},{"x":351,"y":774},{"x":253,"y":900},{"x":323,"y":578},{"x":393,"y":424},{"x":253,"y":60},{"x":253,"y":928},{"x":421,"y":480},{"x":519,"y":508},{"x":281,"y":200},{"x":225,"y":788},{"x":197,"y":270},{"x":337,"y":872},{"x":281,"y":634},{"x":855,"y":284},{"x":421,"y":466},{"x":533,"y":424},{"x":589,"y":368},{"x":365,"y":242},{"x":225,"y":732},{"x":463,"y":620},{"x":393,"y":550},{"x":295,"y":928},{"x":225,"y":606},{"x":57,"y":508},{"x":295,"y":312},{"x":337,"y":60},{"x":183,"y":550},{"x":225,"y":522},{"x":547,"y":550},{"x":155,"y":718},{"x":211,"y":88},{"x":743,"y":326},{"x":71,"y":522},{"x":477,"y":354},{"x":491,"y":410},{"x":757,"y":382},{"x":183,"y":578},{"x":99,"y":354},{"x":337,"y":144},{"x":435,"y":452},{"x":449,"y":676},{"x":267,"y":564},{"x":715,"y":438},{"x":421,"y":676},{"x":323,"y":872},{"x":183,"y":424},{"x":253,"y":564},{"x":225,"y":116},{"x":435,"y":494},{"x":155,"y":438},{"x":183,"y":256},{"x":211,"y":270},{"x":309,"y":676},{"x":85,"y":522},{"x":407,"y":536},{"x":295,"y":774},{"x":309,"y":214},{"x":477,"y":438},{"x":239,"y":858},{"x":281,"y":508},{"x":393,"y":662},{"x":99,"y":382},{"x":533,"y":354},{"x":239,"y":830},{"x":169,"y":522},{"x":309,"y":102},{"x":337,"y":802},{"x":337,"y":578},{"x":169,"y":326},{"x":379,"y":522},{"x":253,"y":886},{"x":617,"y":466},{"x":295,"y":158},{"x":85,"y":494},{"x":505,"y":550},{"x":183,"y":746},{"x":407,"y":312},{"x":743,"y":298},{"x":547,"y":438},{"x":309,"y":648},{"x":253,"y":312},{"x":113,"y":382},{"x":57,"y":326},{"x":547,"y":592},{"x":85,"y":396},{"x":771,"y":438},{"x":827,"y":270},{"x":393,"y":368},{"x":757,"y":396},{"x":253,"y":186},{"x":575,"y":396},{"x":365,"y":900},{"x":337,"y":410},{"x":183,"y":536},{"x":155,"y":382},{"x":141,"y":326},{"x":281,"y":704},{"x":281,"y":956},{"x":155,"y":704},{"x":225,"y":312},{"x":323,"y":802},{"x":729,"y":466},{"x":253,"y":144},{"x":239,"y":130},{"x":267,"y":480},{"x":211,"y":228},{"x":799,"y":256},{"x":519,"y":396},{"x":463,"y":340},{"x":337,"y":88},{"x":239,"y":704},{"x":127,"y":312},{"x":253,"y":620},{"x":785,"y":382},{"x":337,"y":942},{"x":477,"y":466},{"x":393,"y":676},{"x":197,"y":382},{"x":673,"y":354},{"x":309,"y":494},{"x":309,"y":284},{"x":505,"y":606},{"x":421,"y":564},{"x":85,"y":452},{"x":799,"y":340},{"x":337,"y":690},{"x":127,"y":424},{"x":225,"y":508},{"x":435,"y":480},{"x":589,"y":438},{"x":267,"y":690},{"x":617,"y":522},{"x":337,"y":452},{"x":239,"y":648},{"x":309,"y":354},{"x":239,"y":844},{"x":295,"y":298},{"x":169,"y":312},{"x":113,"y":494},{"x":71,"y":564},{"x":113,"y":536},{"x":603,"y":396},{"x":323,"y":746},{"x":337,"y":270},{"x":323,"y":200},{"x":169,"y":32},{"x":603,"y":452},{"x":421,"y":354},{"x":85,"y":410},{"x":337,"y":158},{"x":127,"y":508},{"x":365,"y":606},{"x":197,"y":284},{"x":309,"y":466},{"x":729,"y":396},{"x":295,"y":326},{"x":141,"y":550},{"x":463,"y":648},{"x":225,"y":270},{"x":673,"y":382},{"x":491,"y":522},{"x":225,"y":60},{"x":351,"y":354},{"x":533,"y":592},{"x":239,"y":774},{"x":337,"y":396},{"x":813,"y":368},{"x":477,"y":606},{"x":533,"y":438},{"x":729,"y":354},{"x":449,"y":690},{"x":323,"y":298},{"x":449,"y":382},{"x":267,"y":130},{"x":281,"y":592},{"x":547,"y":424},{"x":323,"y":494},{"x":351,"y":284},{"x":309,"y":578},{"x":323,"y":704},{"x":309,"y":620},{"x":211,"y":578},{"x":281,"y":270},{"x":211,"y":102},{"x":197,"y":326},{"x":197,"y":396},{"x":435,"y":620},{"x":155,"y":606},{"x":323,"y":886},{"x":239,"y":760},{"x":379,"y":340},{"x":155,"y":592},{"x":757,"y":494},{"x":323,"y":522},{"x":477,"y":340},{"x":183,"y":354},{"x":477,"y":536},{"x":337,"y":564},{"x":281,"y":354},{"x":491,"y":494},{"x":267,"y":368},{"x":197,"y":830},{"x":631,"y":480},{"x":827,"y":326},{"x":575,"y":508},{"x":155,"y":522},{"x":323,"y":424},{"x":309,"y":326},{"x":407,"y":326},{"x":547,"y":522},{"x":477,"y":396},{"x":337,"y":116},{"x":519,"y":354},{"x":281,"y":424},{"x":365,"y":452},{"x":617,"y":494},{"x":169,"y":718},{"x":379,"y":830},{"x":351,"y":88},{"x":267,"y":172},{"x":225,"y":144},{"x":491,"y":466},{"x":603,"y":424},{"x":127,"y":382},{"x":169,"y":634},{"x":155,"y":396},{"x":757,"y":424},{"x":519,"y":466},{"x":183,"y":676},{"x":827,"y":312},{"x":267,"y":732},{"x":771,"y":424},{"x":211,"y":130},{"x":785,"y":326},{"x":799,"y":396},{"x":701,"y":368},{"x":757,"y":508},{"x":491,"y":368},{"x":505,"y":368},{"x":211,"y":704},{"x":267,"y":256},{"x":407,"y":648},{"x":575,"y":368},{"x":267,"y":774},{"x":547,"y":396},{"x":71,"y":494},{"x":239,"y":60},{"x":337,"y":830},{"x":281,"y":102},{"x":267,"y":200},{"x":281,"y":452},{"x":561,"y":508},{"x":183,"y":32},{"x":225,"y":452},{"x":141,"y":578},{"x":505,"y":354},{"x":197,"y":746},{"x":323,"y":368},{"x":253,"y":410},{"x":141,"y":298},{"x":337,"y":46},{"x":211,"y":592},{"x":253,"y":634},{"x":169,"y":480},{"x":239,"y":802},{"x":239,"y":578},{"x":407,"y":592},{"x":141,"y":452},{"x":197,"y":18},{"x":281,"y":466},{"x":29,"y":522},{"x":519,"y":452},{"x":547,"y":508},{"x":533,"y":494},{"x":449,"y":606},{"x":323,"y":284},{"x":477,"y":564},{"x":197,"y":606},{"x":71,"y":536},{"x":771,"y":312},{"x":337,"y":858},{"x":309,"y":144},{"x":71,"y":550},{"x":785,"y":312},{"x":351,"y":746},{"x":197,"y":60},{"x":99,"y":466},{"x":533,"y":564},{"x":561,"y":564},{"x":183,"y":396},{"x":323,"y":88},{"x":197,"y":676},{"x":421,"y":438},{"x":337,"y":312},{"x":323,"y":214},{"x":197,"y":46},{"x":225,"y":494},{"x":519,"y":480},{"x":337,"y":424},{"x":449,"y":592},{"x":351,"y":46},{"x":379,"y":634},{"x":407,"y":382},{"x":323,"y":46},{"x":505,"y":620},{"x":757,"y":410},{"x":337,"y":480},{"x":197,"y":424},{"x":239,"y":18},{"x":253,"y":396},{"x":393,"y":466},{"x":99,"y":410},{"x":617,"y":326},{"x":365,"y":732},{"x":183,"y":662},{"x":295,"y":970},{"x":197,"y":760},{"x":253,"y":648},{"x":309,"y":382},{"x":463,"y":536},{"x":197,"y":620},{"x":407,"y":522},{"x":197,"y":578},{"x":239,"y":718},{"x":57,"y":480},{"x":281,"y":578},{"x":323,"y":900},{"x":281,"y":648},{"x":547,"y":536},{"x":267,"y":536},{"x":379,"y":704},{"x":127,"y":354},{"x":589,"y":522},{"x":379,"y":256},{"x":239,"y":592},{"x":785,"y":256},{"x":533,"y":452},{"x":267,"y":676},{"x":253,"y":802},{"x":239,"y":606},{"x":281,"y":438},{"x":351,"y":788},{"x":183,"y":270},{"x":323,"y":606},{"x":463,"y":564},{"x":379,"y":676},{"x":197,"y":788},{"x":225,"y":368},{"x":323,"y":144},{"x":85,"y":354},{"x":29,"y":480},{"x":743,"y":396},{"x":253,"y":382},{"x":379,"y":480},{"x":785,"y":424},{"x":365,"y":830},{"x":771,"y":466},{"x":785,"y":340},{"x":435,"y":396},{"x":365,"y":746},{"x":337,"y":774},{"x":295,"y":116},{"x":169,"y":592},{"x":267,"y":60},{"x":631,"y":466},{"x":295,"y":760},{"x":225,"y":816},{"x":589,"y":564},{"x":351,"y":298},{"x":491,"y":396},{"x":197,"y":634},{"x":323,"y":186},{"x":183,"y":326},{"x":561,"y":410},{"x":211,"y":396},{"x":323,"y":312},{"x":169,"y":606},{"x":631,"y":438},{"x":1,"y":452},{"x":155,"y":326},{"x":239,"y":270},{"x":267,"y":648},{"x":197,"y":494},{"x":169,"y":396},{"x":813,"y":270},{"x":757,"y":312},{"x":645,"y":368},{"x":85,"y":508},{"x":99,"y":494},{"x":85,"y":368},{"x":197,"y":466},{"x":239,"y":242},{"x":309,"y":816},{"x":687,"y":382},{"x":253,"y":326},{"x":169,"y":732},{"x":827,"y":298},{"x":183,"y":284},{"x":309,"y":718},{"x":351,"y":522},{"x":155,"y":354},{"x":169,"y":340},{"x":407,"y":564},{"x":99,"y":368},{"x":323,"y":130},{"x":561,"y":452},{"x":295,"y":886},{"x":799,"y":312},{"x":99,"y":536},{"x":449,"y":410},{"x":127,"y":480},{"x":267,"y":830},{"x":351,"y":858},{"x":253,"y":32},{"x":99,"y":452},{"x":561,"y":438},{"x":365,"y":284},{"x":351,"y":690},{"x":449,"y":564},{"x":407,"y":424},{"x":211,"y":242},{"x":85,"y":326},{"x":15,"y":480},{"x":309,"y":438},{"x":295,"y":186},{"x":323,"y":942},{"x":379,"y":620},{"x":393,"y":382},{"x":183,"y":620},{"x":239,"y":256},{"x":351,"y":102},{"x":183,"y":494},{"x":519,"y":410},{"x":155,"y":662},{"x":309,"y":536},{"x":239,"y":200},{"x":239,"y":228},{"x":309,"y":508},{"x":449,"y":452},{"x":253,"y":256},{"x":309,"y":396},{"x":309,"y":592},{"x":365,"y":46},{"x":421,"y":326},{"x":169,"y":368},{"x":197,"y":774},{"x":295,"y":872},{"x":477,"y":494},{"x":183,"y":298},{"x":253,"y":88},{"x":253,"y":242},{"x":491,"y":508},{"x":281,"y":760},{"x":295,"y":858},{"x":169,"y":410},{"x":225,"y":32},{"x":365,"y":844},{"x":435,"y":648},{"x":463,"y":396},{"x":351,"y":578},{"x":533,"y":522},{"x":211,"y":214},{"x":239,"y":340},{"x":113,"y":354},{"x":169,"y":746},{"x":225,"y":256},{"x":589,"y":508},{"x":183,"y":116},{"x":463,"y":438},{"x":575,"y":564},{"x":57,"y":354},{"x":337,"y":242},{"x":295,"y":634},{"x":211,"y":508},{"x":351,"y":214},{"x":379,"y":816},{"x":169,"y":620},{"x":183,"y":718},{"x":589,"y":396},{"x":561,"y":382},{"x":239,"y":466},{"x":295,"y":956},{"x":211,"y":480},{"x":351,"y":718},{"x":155,"y":298},{"x":225,"y":102},{"x":295,"y":102},{"x":309,"y":200},{"x":309,"y":942},{"x":169,"y":662},{"x":155,"y":564},{"x":477,"y":662},{"x":421,"y":410},{"x":281,"y":396},{"x":393,"y":620},{"x":267,"y":914},{"x":463,"y":382},{"x":295,"y":494},{"x":351,"y":74},{"x":169,"y":452},{"x":267,"y":718},{"x":267,"y":494},{"x":183,"y":18},{"x":295,"y":424},{"x":407,"y":354},{"x":393,"y":648},{"x":379,"y":466},{"x":477,"y":550},{"x":197,"y":410},{"x":197,"y":116},{"x":687,"y":368},{"x":267,"y":354},{"x":183,"y":774},{"x":267,"y":186},{"x":225,"y":466},{"x":155,"y":480},{"x":281,"y":620},{"x":225,"y":746},{"x":183,"y":382},{"x":309,"y":886},{"x":589,"y":382},{"x":449,"y":340},{"x":449,"y":536},{"x":253,"y":676},{"x":463,"y":676},{"x":323,"y":256},{"x":253,"y":130},{"x":351,"y":424},{"x":351,"y":648},{"x":183,"y":340},{"x":323,"y":858},{"x":281,"y":410},{"x":379,"y":550},{"x":491,"y":550},{"x":267,"y":634},{"x":225,"y":578},{"x":603,"y":508},{"x":505,"y":410},{"x":771,"y":270},{"x":379,"y":242},{"x":225,"y":830},{"x":183,"y":592},{"x":267,"y":144},{"x":393,"y":410},{"x":197,"y":354},{"x":211,"y":438},{"x":813,"y":340},{"x":253,"y":200},{"x":113,"y":368},{"x":323,"y":816},{"x":365,"y":634},{"x":421,"y":382},{"x":519,"y":620},{"x":155,"y":466},{"x":183,"y":634},{"x":519,"y":368},{"x":799,"y":410},{"x":141,"y":410},{"x":337,"y":508},{"x":435,"y":466},{"x":337,"y":368},{"x":281,"y":942},{"x":253,"y":578},{"x":239,"y":676},{"x":225,"y":718},{"x":449,"y":578},{"x":351,"y":536},{"x":323,"y":844},{"x":393,"y":578},{"x":449,"y":620},{"x":365,"y":298},{"x":491,"y":452},{"x":337,"y":732},{"x":379,"y":606},{"x":449,"y":704},{"x":183,"y":522},{"x":253,"y":214},{"x":351,"y":676},{"x":253,"y":536},{"x":435,"y":382},{"x":379,"y":508},{"x":197,"y":74},{"x":351,"y":144},{"x":225,"y":326},{"x":253,"y":858},{"x":169,"y":494},{"x":785,"y":298},{"x":533,"y":606},{"x":281,"y":480},{"x":575,"y":424},{"x":71,"y":480},{"x":351,"y":60},{"x":827,"y":284},{"x":407,"y":410},{"x":337,"y":704},{"x":197,"y":704},{"x":323,"y":410},{"x":113,"y":508},{"x":155,"y":648},{"x":43,"y":508},{"x":813,"y":256},{"x":323,"y":480},{"x":15,"y":452},{"x":197,"y":228},{"x":71,"y":326},{"x":99,"y":550},{"x":519,"y":382},{"x":85,"y":382},{"x":351,"y":312},{"x":365,"y":872},{"x":295,"y":270},{"x":281,"y":550},{"x":239,"y":620},{"x":505,"y":522},{"x":183,"y":438},{"x":673,"y":368},{"x":169,"y":648},{"x":407,"y":718},{"x":197,"y":256},{"x":295,"y":690},{"x":407,"y":466},{"x":841,"y":270},{"x":281,"y":144},{"x":197,"y":32},{"x":813,"y":326},{"x":267,"y":214},{"x":239,"y":312},{"x":393,"y":564},{"x":225,"y":858},{"x":771,"y":326},{"x":309,"y":690},{"x":183,"y":102},{"x":197,"y":816},{"x":71,"y":340},{"x":211,"y":606},{"x":267,"y":970},{"x":267,"y":340},{"x":617,"y":312},{"x":295,"y":788},{"x":323,"y":340},{"x":351,"y":886},{"x":239,"y":536},{"x":505,"y":382},{"x":309,"y":900},{"x":267,"y":956},{"x":141,"y":438},{"x":323,"y":662},{"x":785,"y":396},{"x":421,"y":340},{"x":449,"y":466},{"x":407,"y":494},{"x":365,"y":578},{"x":491,"y":634},{"x":463,"y":452},{"x":449,"y":354},{"x":57,"y":452},{"x":449,"y":648},{"x":281,"y":606},{"x":421,"y":452},{"x":225,"y":88},{"x":141,"y":466},{"x":407,"y":662},{"x":435,"y":550},{"x":239,"y":886},{"x":141,"y":312},{"x":729,"y":438},{"x":113,"y":438},{"x":519,"y":494},{"x":85,"y":424},{"x":43,"y":466},{"x":421,"y":396},{"x":281,"y":662},{"x":281,"y":242},{"x":337,"y":816},{"x":113,"y":340},{"x":197,"y":690},{"x":141,"y":424},{"x":211,"y":760},{"x":407,"y":452},{"x":141,"y":536},{"x":351,"y":550},{"x":225,"y":564},{"x":533,"y":382},{"x":253,"y":522},{"x":323,"y":550}],"max_y":984,"max_x":869}
</script>


        
    
            <script src="https://www.google.com/recaptcha/api.js?render=explicit" async defer></script>
            <script>
                window.angular_data = {};
                window.angular_data.opigramEnabled = false;

                
                    angular_data.registration_accept_terms_type = "registrationWithAcceptTerms";
                

                
                    angular_data.recaptcha_site_key = "6LdWgF8UAAAAANbaAxdOQU3NY1thw6hMbg1B1l1R";
                

                

                

                window.angular_data.i18n = {"previewPopups": {"visitFullProfile": "Visit full profile", "thingsBothDislike": "Things you both dislike", "thingsBothLike": "Things you both like", "memberPreview": "Member preview"}, "marketo": {"pleaseWait": "Please wait", "popup": {"header": "Leave details below and one of our team will be in touch within 24 hours", "title": "Would you like to know more about", "contact": "or call now for more info %s"}, "businessEmailError": "Please use a business email address."}, "todaysAgenda": {"header": "Todays agenda"}, "surveysIntro": {"checkPoints": "Check your points balance", "thanks": "Thank you. You have completed the survey and banked your points!", "nextAction": "Would you be interested in answering a few more questions? They cover your attitudes to issues in the news and life in general.", "moreQuestions": "Answer more questions"}, "electionsProjectionsPlot": {"tooltip": {"high": "High", "low": "Low", "est": "Est."}}, "opinions": {"swearError": "Obscene, threatening, abusive or hateful language violates our Terms and Conditions.", "typeResponseHere": "Type your response here...", "myOpinionFeed": "My opinion feed", "latestOpinionOn": "Latest opinion on..."}, "chapters": {"completed": "You've completed all %s chapters - click below to get your hands on %s cash!", "redeem": "Redeem %s", "email": "We'll invite you to the next chapter by email tomorrow!", "congratulations": "<strong>Congratulations!</strong>", "titleCompleted": "Chapter %s completed!", "title": "Chapter %s of %s completed!", "description": "You're on your way to %s in cash."}, "searchCube": {"typeHere": "Type here...", "learnMoreAboutCube": "Learn more about the YouGov Cube", "hotTopicsHeader": "Hot Topics", "header": "Search the YouGov Cube", "resultsHeader": "Results", "moreSuggestions": "More suggestions"}, "flyouts": {"seeFullResults": "See full results"}, "yougovDailyAd": {"header": "YouGov <br/> Daily", "content": "Get the first results from the three topical questions we ask the country every morning.", "signUp": "Sign up"}, "prizeDraw": {"youveEntered": "You\u2019ve now entered %s points for %s Prize Draw Entries.", "receiveEntries": "Receive %s entries  into our monthly prize draw where you can win one of our range of exciting prizes.", "header": "Prize draw", "enterPoints": "Enter %s points", "goodLuck": "Good luck!", "confirmEntries": "Are you sure you want to enter %s points for %s Prize Draw Entries?"}, "hyperWallet": {"stateProvince": "State/Province", "required": "You must provide a value for this field", "transferMethods": "Available transfer methods:", "personalDetails": "Personal Details", "city": "City", "postalCode": "Postal Code", "lastName": "Last Name", "firstName": "First Name", "address": "Address", "submit": "Submit"}, "correlations": {"correlation": "Correlation", "correlatedWith": "Correlated with"}, "mobileAd": {"additionalInfo": "to get notifications for paid surveys and take your next survey on your smartphone!", "downloadApp": "Download the new <strong>YouGov app</strong>"}, "userInfo": {"memberSince": "Member since", "seeMyProfile": "See my profile"}, "dailyEmailSubscribe": {"subscribe": "Subscribe", "subscribeError": "Error occurred, please try again.", "emailRequired": "Email is required", "incorrectEmail": "Your email format isn\u2019t correct", "subscribeSuccess": "Thanks, your subscription has been confirmed.", "enterEmail": "Enter email address"}, "profilesLiteBanner": {"contentText": "Search for any brand, celebrity or thing and find out about their customers", "search": "Search...", "profiles": "Profiles"}, "pushNotifications": {"dontSubscribe": "Don't subscribe to notifications", "yesPlease": "Yes, please!", "getNotifications": "Get notifications about changes to voting intention."}, "surveys": {"notHeardOf": "Not heard of", "live_notice": "Final weighted results published at the end of day.", "live_poll": "Live Poll", "next": "Next", "scoresError": "Sorry, there\u2019s a slight problem.", "live_notice_short": "Weighted results published at end of day.", "live": "Live", "back": "Back", "answers": {"opneText": {"placeholder": "Please specify"}, "validation": {"maxLength": "Please enter no more than %s characters.", "generic": "Incorrect answer", "required": "Answer required", "range": "Please enter a value between %s and %s.", "min": "Please enter a value less than or equal to %s.", "pattern": {"post_code": "Incorrect post code", "int": "Value is not a number"}, "max": "Please enter a value greater than or equal to %s."}}, "scoresHeader": "Please tell us what you think about the following %s:", "scoresErrorClickHereToSkip": "Click here to skip..."}, "twitterFollow": {"message": "Follow %s on twitter and stay up to date with the latest news and results", "follow": "Follow"}, "available_surveys": {"no_surveys_description": "In the meantime, why not fill in your profile by responding to the questions in your Feed...", "currency": "\u00a3\u00a3\u00a3", "take_the_survey": "Take the Survey", "no_surveys_message": "We don't have a full length survey for you right now. Won't be long!", "header": "Available Surveys", "live_since": "Live since", "more": "More"}, "siteChooser": {"countries": {"it": "Italy", "uk": "UK", "mena": "Middle East &<br /> North Africa", "se": "Sweden", "es": "Spain", "south_asia": "South Asia", "no": "Norway", "fr": "France", "tw": "Taiwan", "asia_pacific": "Asia Pacific", "de": "Germany & Central Europe", "fi": "Finland", "pl": "Poland", "china": "China", "us": "United States", "dk": "Denmark"}, "header": "YouGov Global Sites", "currentSite": {"uk": "United Kingdom", "sg": "Singapore", "na": "North Africa", "se": "Sweden", "no": "Norway", "au": "Australia", "hk": "HongKong", "us": "United States", "es": "Spain", "tw": "Taiwan", "gcc": "GCC", "cn": "China", "it": "Italy", "vn": "Vietnam", "lev": "Middle East", "mena": "Middle East & North Africa", "ir": "Iran", "th": "Thailand", "id": "Indonesia", "ph": "Philippines", "pl": "Poland", "my": "Malaysia", "in": "India", "pk": "Pakistan", "fr": "France", "asia_pacific": "Asia Pacific", "de": "Germany", "fi": "Finland", "dk": "Denmark"}, "languagesHeader": "Choose language"}, "ratings": {"notFound": "Not found", "addMoreRatings": "Add more ratings"}, "searchFilters": {"articles": "Web Pages", "pdfs": "PDFs", "all": "All", "week": "Past week", "topics": "Topics", "filters": "Filters", "month": "Past month", "year": "Past year", "dateRange": "Date range", "day": "Past 24 hour"}, "countdown": {"lightbox_header": "Countdown to %s", "redeem_success_message": "You have now successfully redeemed your points for %s. We are processing your request, and we will send you your reward within 4 weeks.", "footer": "Take more surveys to earn more points...", "subheader": "You still need %s points to redeem %s.", "close": "Close", "redeem_success_header": "Congratulations!", "header": "Countdown to %s", "redeem_message": "Click here to redeem %s now!", "reddem_success_thank_you_message": "Thank you for your continued participation in YouGov!"}, "search": {"of": "of", "pages": "PAGES:", "suggestedPages": "Suggested YouGov topic pages:", "seeMore": "See more", "topHits": "Top hits:", "tryDiffTerm": "Try typing a different term...", "topics": "TOPICS:", "suggested_topics": "Suggested Topics:", "relatedPdfs": "Related PDFs", "relatedArticles": "Related articles", "goToPage": "Go to page"}, "rewards": {"youHave": "You have", "seeMoreItems": "See more items", "youHaveEnoughPoints": "You have enough points for any of the following items in red. Click to redeem...", "redeem": "Redeem", "header": "Rewards", "points": "points"}, "acceptTerms": {"validation": {"errors": {"required": "Please accept the terms to continue."}}}, "welcome": {"header": "Welcome to YouGov !", "startSurvey": "Start survey", "facebook": "Click the link below to start your first survey, and earn your first points.", "email": "Please check your email to confirm your registration and start earning points."}, "smartBanner": {"storeIos": "On the App Store", "storeAndroid": "In Google Play", "title": "YouGov", "free": "Free", "view": "View"}, "reportToYougov": {"success_message": "Opinion reported", "question_text": "Are you sure?", "error_message": "Sorry, try again"}, "permissions": {"unsubscribeFromPanel": "If you\u2019d like to stop receiving survey invites all together, you will need to unsubscribe from the YouGov panel, which you can do on your account page.", "giveConsent": {"religion": "By answering this question you will be giving your consent to YouGov using information about your religious or philosophical beliefs. You can change this on your Account page at any time.", "sex": "By answering this question you will be giving your consent to YouGov using information about your sex life or sexual orientation. You can change this on your Account page at any time.", "health": "By answering this question you will be giving your consent to YouGov using information about your health. You can change this on your Account page at any time.", "union": "By answering this question you will be giving your consent to YouGov using information about your membership of trade unions. You can change this on your Account page at any time.", "race": "By answering this question you will be giving your consent to YouGov using information about your racial or ethnic origin. You can change this on your Account page at any time.", "politics": "By answering this question you will be giving your consent to YouGov using information about your political opinions. You can change this on your Account page at any time."}, "anonymousUse": {"title": "Uses of your data"}, "marketing": {"yes": "Yes, please", "no": "No, thanks", "title": "Emails and notifications", "description": "We would like to send you emails and notifications when your opinions feature in the news, or when we have interesting news to share about your YouGov account. Is that OK?"}, "saveChanges": "Save changes", "title": "Permissions", "spd": {"dataAbout": {"religion": "Data about your religious or philosophical beliefs", "sex": "Data about your sex life or sexual orientation", "health": "Data about your health", "union": "Data about your membership of trade unions", "race": "Data about your racial or ethnic origin", "politics": "Data about your political opinions"}, "selectAll": "Select All", "privacyNotice": "Privacy notice", "title": "Special categories of personal data", "description": "We need your specific permission to use your opinion on some special categories of personal data. You can review and edit your consents below. We will only ever use your data as described in our"}, "description": "We\u2019re very grateful that you are prepared to share your opinions with us. They shape the news and improve decisions made by the organisations that serve you. YouGov always has, and always will, treat everything you share with us with the utmost care, and we are committed to protecting your privacy. You can always use this page to control how we use your data."}, "lightbox": {"opinionReport": "Opinion report", "changeAvatar": "Change avatar"}, "opiSet": {"addResponse": "Add a response", "addNewOpinion": "Add a new opinion", "joinDiscussionOn": "Join the discussion on..."}, "live_survey_results": {"contact_info": {"press_office_header": "Press Office"}, "see_more_on": {"header": "See more on..."}, "rhs_sideabar": {"header": "Contact"}, "surveys_results": {"interim_survey_results": "Interim survey results (unweighted)", "end_date": "on %survey_date%", "back_to_list_mobile": "Archive", "interim_survey_results_date": "- survey closes at %survey_date% with final results available shortly after", "header": "survey results", "back_to_list": "See full archive", "results": "%s <span class=\"survey-results\"> results</span>", "description": "%total% UK adults were questioned%survey_date%.<br/>Results are weighted to be representative of the GB population."}, "surveys_list": {"header": "Latest Live Survey Results"}, "social_bookmarks": {"header": "Share", "header_extended": "this survey"}, "social_share": {"page_title": "YouGov | Live Survey Results", "title": "Live Survey Results"}, "question_results": {"total": "Total", "seeResults": "See Results"}}, "redeem": {"lightbox_header": "Redeem %s", "for": "for", "confirm_question": "Are you sure you want to redeem %s points for %s?", "disclaimer": "Please take care when entering your account details. YouGov will not be responsible for any incorrect details entered and any subsequent non-payment.", "confirm": "Redeem", "success_message": "You redeemed %s points for %s", "error_message": "Error while redeeming points", "points": "points!"}, "loginRegister": {"reset_my_password": "Reset my password", "error_occured_try_again": "Error occurred, please try again", "terms_of_service_onboarding": "Terms of Service", "general_users_agreement": "general user's agreement of the YouGov Online Panel", "forgotten_password_enter_email": "Email", "okTryOut": "OK then, I\u2019ll try it out", "email_sign_up": "Sign up with e-mail", "facebook_join": "Join with Facebook", "reset_password_success": "Forgotten your password?", "register_ok": "Ok", "join_yougov_today": "Join YouGov today to make your opinion count!", "invalid_email_and_password": "Oops: your email format isn\u2019t right and you need to enter a password.", "and_onboarding": "&", "joinWithFacebook": "Join with Facebook", "already_yougov_member": "Already a member of YouGov.", "professional_services": "View YouGov\u2019s professional services", "terms_and_conditions": "Terms and Conditions", "earn_cash_and_prizes": "(And guess what, you earn cash and prizes along the way!)", "invalid_email": "Oops: your email format isn\u2019t right", "or_register_with": "or register with", "dont_ask_me_again": "Don't ask me again", "join_to_take_part": "Join YouGov today to take part in influential surveys on the big issues of the day.", "register_thanks": "Thanks for registering!", "reset_password_success_message": "We've sent you an email with a link to reset your password.", "ticking_square_on_the_left": "by ticking the square on the left", "enter_your_email": "Enter your e-mail address below, and we'll e-mail instructions for setting a new one.", "carry_on_answering_questions": "Stay here and carry on answering questions", "password_remember": "I remember my password. log me in", "logIn": "Log in", "register_you_receive_email": "You\u2019ll now receive an email from us containing a link that you\u2019ll need to click on for us to authenticate you.", "login_whats_next": "What would you like to do next?", "register_join_yougov": "Join YouGov to take part in interesting surveys and earn points and rewards!", "login_password_placeholder": "Password", "login_remember_label": "Keep me signed in", "forgotten_your_password": "Forgotten your password?", "enter_details_below": "Enter your details below", "email_sign_in": "Sign in with e-mail", "sign_into_your_account": "Sign into your account...", "wouldYouTryYougov": "Would you like to try out being a YouGov member? It\u2019s the most influential opinion community in the country, where you take part in interesting surveys, earn points and cash", "onBoardingHeader": "Join now", "or_sign_in_with": "or sign in with", "want_you": "We want <span>you</span>!", "facebook_sign_up": "Sign up with Facebook", "already_member_register": "I\u2019m not a member of YouGov, register me", "members_area": "Take me to the members area", "alreadyHaveAccount": "Already have an account?", "login_are_you_member": "Are you already a member of YouGov?", "thanks_for_signing_in": "Thanks for signing in!", "agree_terms_onboarding": "I agree to", "email_sign_up_onboarding": "Join with Email", "already_member_login": "I\u2019m already a member of YouGov, log me in", "data_privacy_rules": "data privacy rules", "agree_terms": "I agree to the", "register_label": "+ Join", "login_member_no": "No", "register_not_now": "Not now", "register_click_emailed_link": "Click on the link and your registration will be complete and you\u2019ll be able to login into the site and create your own profile.", "register_privacy_policy": "Privacy Policy", "register_choose_password": "Choose a password", "login_email_placeholder": "Email", "login_forgot_password": "Forgot your password?", "login_label": "Login", "register_enter_email_onboarding": "E-mail", "register_thanks_onboarding": "Thank you for joining!", "opinion_on_issues": "Do you have an opinion on issues like", "facebook_sign_in": "Sign in with Facebook", "no_thanks": "No Thanks", "invalid_password": "Oops: you need to enter a password at least 6 characters long.", "register_enter_email_info_onboarding": "We will use it only to notify you about new surveys", "as_well_as_into_the": "as well as into the", "show_me_latest_news": "Show me latest news and polling data", "connect": "Connect", "register_enter_email": "Enter your email address", "register_by_joining_agree": "By joining, you agree to the", "register_choose_password_onboarding": "Password", "consent_use_data": "If you want to sign up, you have to consent to the use of your personal data as described in our", "login_member_yes": "Yes", "sign_in_info": "You need to be signed in as a YouGov member to add your opinion...", "login_here": "Login here", "or": "or"}, "cookie_confirm": {"cookie_confirm_more": "More...", "cookie_confirm_accept": "Accept", "cookie_confirm_text": "YouGov uses cookies to give you the best experience on our site. By continuing to browse, you are agreeing to our use of cookies."}, "latestArticles": {"header": "Latest Results"}, "suggestions": {"suggest_new": "Suggest a new:", "item_already_present": "Good news - we have this on YouGov already! Select CONFIRM to continue", "clear_text_field": "Clear", "select_subtypes": "Select subtypes", "just_checking": "Just checking", "wiki_search_info": "Want to share your opinion on something you can't find on YouGov? Then use the search field above to see if we can add it. We use a third-party database that has over 12,834,249 items, so there's a good chance it has what you're looking for. Unfortunately, if it doesn't have it, you're out of luck.", "type_to_search_placeholder": "Type to search", "go_back": "Go back", "suggest_sth_new": "Suggest something new...", "suggest_new_item": "Suggest new item", "confirm": "CONFIRM", "select_type_info": "Select the type of thing you want to add in the list below.", "suggestions_source": {"wiki": "Results from Wikipedia", "yougov": "Results from YouGov"}, "redirecting_to_page": "Redirecting to the page", "creating_page": "Creating the page"}, "opinionsMap": {"tipHeader": "Do you agree or disagree?"}, "joinYougovButton": {"joinYougovNow": "Join YouGov now"}, "login": {"join": "+ Join", "myPoints": "My points", "logout": "Logout", "notifications": "Notifications", "myAccount": "My account", "header": "Login"}, "home": {"header": {"welcomeToYougov": "Welcome to YouGov India.", "whatWouldYouLike": "What would you like to do?", "whatIsYougov": "What is YouGov?", "takePoll": "Take today's poll on", "latest": "Latest"}, "loginRegisterWidget": {"joinThePanel": "Join the Panel", "alreadyMember": "I\u2019m already a member, log me in"}, "whatTopicNext": "What topic would you like to go to next?"}, "general": {"stronglyDisagree": "Strongly disagree", "done": "Done", "next": "Next", "and": "and", "responses": "Responses", "no": "No", "opinions": "Opinions", "attitudes": "Attitudes", "previous": "Previous", "return": "Return", "total": "Total", "addNew": "Add new", "yes": "Yes", "enter": "Enter", "report": "Report", "loadMore": "Load more", "type": "Type", "noThanks": "No thanks", "cancel": "Cancel", "reallyLike": "Really like", "stronglyAgree": "Strongly agree", "surveys": "Surveys", "savedSuccessfully": "Changes saved successfully!", "facts": "Facts", "ratings": "Ratings", "mildlyDisagree": "Mildly disagree", "noResults": "No results", "strongInterests": "Strong interests", "like": "Like", "close": "Close", "reallyDontLike": "Really don't like", "ok": "OK", "skip": "Skip", "dontLike": "Don't like", "topInterests": "Top interests", "commonDislikes": "Common rarest dislikes", "in": "in", "member": "Member", "otherInterests": "Other interests", "mildlyAgree": "Mildly agree", "typeHere": "Type here...", "reviews": "Reviews", "by": "by", "change": "Change", "since": "since", "commonLikes": "Common rarest likes", "results": "Results", "more": "More", "respond": "Respond"}};

                window.angular_data.mobile_app_ids = {
                    ios: "1154082222",
                    android: "com.yougov.mobile.online",
                };

                window.dom_ready_time = false;

            </script>

            <script>
                function getQueryString() {
                    var query_string = {};
                    var query = window.location.search.substring(1);
                    var vars = query.split("&");

                    for (var i = 0; i < vars.length; i++) {

                        var pair = vars[i].split("=");

                        if (typeof query_string[pair[0]] === "undefined") {
                            query_string[pair[0]] = pair[1];
                        } else if (typeof query_string[pair[0]] === "string") {
                            query_string[pair[0]] = [ query_string[pair[0]], pair[1] ];
                        } else {
                            query_string[pair[0]].push(pair[1]);
                        }
                    }
                    return query_string;
                }

                document.addEventListener("DOMContentLoaded", function(event) {
                    window.dom_ready_time = new Date().getTime() - start_time;
                    var queryString = getQueryString();
                    var PERFORMANCE_INDICATOR_HIGH = 1200 || 1200;
                    var PERFORMANCE_INDICATOR_AVERAGE = 1500 || 1500;

                    if (queryString.map) {
                        if (queryString.map === 'simple'){
                            window.angular_data.home_dots_data = null;
                            window.angular_data.map_type = 'simple';
                        } else if (queryString.map === 'complex'){
                            window.angular_data.home_dots_data = JSON.parse($('#home_map_complex').html());
                            window.angular_data.map_type = 'complex';
                        }
                    } else {
                        if (window.dom_ready_time < PERFORMANCE_INDICATOR_HIGH) {
                            window.angular_data.home_dots_data = JSON.parse($('#home_map_complex').html());
                            window.angular_data.map_type = 'complex';
                        } else {
                            window.angular_data.home_dots_data = null;
                            window.angular_data.map_type = 'simple';
                        }
                    }
                });
            </script>
            
                


<script src="//d1rq7cuzerol8r.cloudfront.net/unified/global/a2c943b0/polyfills.bundle.js"></script>



<script src="//d1rq7cuzerol8r.cloudfront.net/unified/global/a2c943b0/vendor-1.bundle.js"></script>
<script src="//d1rq7cuzerol8r.cloudfront.net/unified/global/a2c943b0/vendor-2.bundle.js"></script>
<script src="//d1rq7cuzerol8r.cloudfront.net/unified/global/a2c943b0/common.bundle.js"></script>
<script src="//d1rq7cuzerol8r.cloudfront.net/unified/global/a2c943b0/home-common.bundle.js"></script>


            
            <script>
                window.mobileAndTabletcheck = function () {
                  var check = false;
                  (function(a){if(/(android|bb\d+|meego).+mobile|avantgo|bada\/|blackberry|blazer|compal|elaine|fennec|hiptop|iemobile|ip(hone|od)|iris|kindle|lge |maemo|midp|mmp|mobile.+firefox|netfront|opera m(ob|in)i|palm( os)?|phone|p(ixi|re)\/|plucker|pocket|psp|series(4|6)0|symbian|treo|up\.(browser|link)|vodafone|wap|windows ce|xda|xiino|android|ipad|playbook|silk/i.test(a)||/1207|6310|6590|3gso|4thp|50[1-6]i|770s|802s|a wa|abac|ac(er|oo|s\-)|ai(ko|rn)|al(av|ca|co)|amoi|an(ex|ny|yw)|aptu|ar(ch|go)|as(te|us)|attw|au(di|\-m|r |s )|avan|be(ck|ll|nq)|bi(lb|rd)|bl(ac|az)|br(e|v)w|bumb|bw\-(n|u)|c55\/|capi|ccwa|cdm\-|cell|chtm|cldc|cmd\-|co(mp|nd)|craw|da(it|ll|ng)|dbte|dc\-s|devi|dica|dmob|do(c|p)o|ds(12|\-d)|el(49|ai)|em(l2|ul)|er(ic|k0)|esl8|ez([4-7]0|os|wa|ze)|fetc|fly(\-|_)|g1 u|g560|gene|gf\-5|g\-mo|go(\.w|od)|gr(ad|un)|haie|hcit|hd\-(m|p|t)|hei\-|hi(pt|ta)|hp( i|ip)|hs\-c|ht(c(\-| |_|a|g|p|s|t)|tp)|hu(aw|tc)|i\-(20|go|ma)|i230|iac( |\-|\/)|ibro|idea|ig01|ikom|im1k|inno|ipaq|iris|ja(t|v)a|jbro|jemu|jigs|kddi|keji|kgt( |\/)|klon|kpt |kwc\-|kyo(c|k)|le(no|xi)|lg( g|\/(k|l|u)|50|54|\-[a-w])|libw|lynx|m1\-w|m3ga|m50\/|ma(te|ui|xo)|mc(01|21|ca)|m\-cr|me(rc|ri)|mi(o8|oa|ts)|mmef|mo(01|02|bi|de|do|t(\-| |o|v)|zz)|mt(50|p1|v )|mwbp|mywa|n10[0-2]|n20[2-3]|n30(0|2)|n50(0|2|5)|n7(0(0|1)|10)|ne((c|m)\-|on|tf|wf|wg|wt)|nok(6|i)|nzph|o2im|op(ti|wv)|oran|owg1|p800|pan(a|d|t)|pdxg|pg(13|\-([1-8]|c))|phil|pire|pl(ay|uc)|pn\-2|po(ck|rt|se)|prox|psio|pt\-g|qa\-a|qc(07|12|21|32|60|\-[2-7]|i\-)|qtek|r380|r600|raks|rim9|ro(ve|zo)|s55\/|sa(ge|ma|mm|ms|ny|va)|sc(01|h\-|oo|p\-)|sdk\/|se(c(\-|0|1)|47|mc|nd|ri)|sgh\-|shar|sie(\-|m)|sk\-0|sl(45|id)|sm(al|ar|b3|it|t5)|so(ft|ny)|sp(01|h\-|v\-|v )|sy(01|mb)|t2(18|50)|t6(00|10|18)|ta(gt|lk)|tcl\-|tdg\-|tel(i|m)|tim\-|t\-mo|to(pl|sh)|ts(70|m\-|m3|m5)|tx\-9|up(\.b|g1|si)|utst|v400|v750|veri|vi(rg|te)|vk(40|5[0-3]|\-v)|vm40|voda|vulc|vx(52|53|60|61|70|80|81|83|85|98)|w3c(\-| )|webc|whit|wi(g |nc|nw)|wmlb|wonu|x700|yas\-|your|zeto|zte\-/i.test(a.substr(0,4))) check = true;})(navigator.userAgent||navigator.vendor||window.opera);
                  return check;
                };

                if (window.mobileAndTabletcheck()) {
                    zE(function () {
                        zE.hide();
                    });
                }
            </script>
        
    <script>
        window.angular_data = window.angular_data || {};
        window.angular_data = angular.extend(window.angular_data, {"response_buttons": {"-1": {"level": -1, "css_class": "disagree-mildly"}, "2": {"level": 2, "css_class": "agree"}, "1": {"level": 1, "css_class": "agree-mildly"}, "-2": {"level": -2, "css_class": "disagree"}}, "available_surveys": {"more_url": "/account/"}, "loginRegister": {"privacy_policy_link": "/en-hi/about/privacy", "terms_and_conditions_link": "/en-hi/about/terms-conditions", "data_privacy_rules_link": "/en-hi/about/data-privacy-rules"}});
        window.angular_data.rtl =  false ;
        window.angular_data.logged_in_url = "/en-hi/results/";
        window.angular_data.show_social_media_icons =  true ;

        
            angular_data.initial_user_logged_in = false;
        
        angular_data.enableLocalStorage = true;
        angular_data.siteId = 93;

        window.angular_data.languages = null;
        window.angular_data.site_language =  "en-hi" ;

        
            angular_data.home_sections = [{"header": "<p><strong>YouGov</strong>&nbsp;is a community of&nbsp;<strong>over 5&nbsp;million people</strong>&nbsp;around the world who share their views...</p>\r\n", "type": "login-register", "url": "", "enabled": true}, {"header": "<p>We analyse all this information and publish selected findings every day on our website.</p>\r\n", "type": "latest-articles", "url": "", "enabled": true}, {"header": "<p>We call our database the YouGov&nbsp;<strong>Cube</strong>. We&#39;re pretty sure it is the largest daily updated record of people&#39;s habits and opinions in existence.</p>\r\n", "type": "yougov-cube", "url": "", "enabled": true}, {"type": "yougov-services", "header": "<p>Companies, governments and institutions use our data to&nbsp;<strong>better understand</strong>&nbsp;the people that sustain them...</p>\r\n", "enabled": true, "data": [{"header": "<p><img src=\"https://d25d2506sfb94s.cloudfront.net/r/88/YGV-BrandIndex.png\" style=\"width:578px\" /></p>\r\n", "image": "//d18lkz4dllo6v2.cloudfront.net/r/88/BrandIndex_small.PNG?w=260", "url": "/find-solutions/brandindex", "excerpt": ""}, {"header": "<p><img src=\"https://d25d2506sfb94s.cloudfront.net/r/88/YGV-Omnibus.png\" style=\"width:578px\" /></p>\r\n", "image": "//d18lkz4dllo6v2.cloudfront.net/r/88/Omnibus_small.PNG?w=260", "url": "/find-solutions/omnibus", "excerpt": ""}, {"header": "<p><img src=\"https://d25d2506sfb94s.cloudfront.net/r/93/insights_headline1.png\" style=\"height:34px; width:334px\" /></p>\r\n", "image": "//d18lkz4dllo6v2.cloudfront.net/r/93/yougov_insights.png?w=260", "url": "/find-solutions/insights", "excerpt": ""}, {"header": "<p><img src=\"https://d25d2506sfb94s.cloudfront.net/r/93/panel_headline1.png\" style=\"height:34px; width:334px\" /></p>\r\n", "image": "//d18lkz4dllo6v2.cloudfront.net/r/93/yougov_panel.png?w=260", "url": "/find-solutions/panel", "excerpt": ""}], "url": ""}];
        
        var menu = [{"menu_title": "Take Part", "excerpt": "", "menu_alternative_short_name": "", "enabled": true, "type": "take-part", "menu_url": "/en-hi/account/", "url": "", "title": "Join YouGov's panel and share your views today!", "image": "//d18lkz4dllo6v2.cloudfront.net/r/88/Consumers.jpg?w=320"}, {"menu_title": "See Results", "excerpt": "Although mutual fund penetration still has room to grow, people who\u2019ve been investing for more than 2 years are looking to add to their MF investments while many new millennial investors are still hesitant", "menu_alternative_short_name": "", "type": "results", "menu_url": "/en-hi/results/", "url": "/en-hi/news/2019/07/22/more-half-mutual-fund-investors-india-are-thinking/", "date": "2019-07-22", "title": "More than half of mutual fund investors in India are thinking of increasing their investments", "image": "//d18lkz4dllo6v2.cloudfront.net/cumulus_uploads/entry/2019-07-22/GettyImages-524172462.jpg?w=320"}, {"menu_title": "Find Solutions", "excerpt": "", "url": "", "menu_alternative_short_name": "Solutions", "type": "find-solutions", "menu_url": "/en-hi/find-solutions/", "enabled": true, "title": "Discover our products and services", "image": "//d18lkz4dllo6v2.cloudfront.net/r/88/Solutions_image.png?w=260"}]


    </script>

    

    
    
    

    
        <script src='//munchkin.marketo.net/munchkin.js' type='text/javascript'></script>
<script>
    if (window.Munchkin) {
        window.Munchkin.init('060-QFD-941', {"wsInfo": "&#39;&#39;"});
    }
</script>
    

    

    
        <script src="//in.yougov.com/_partner/request.js" type="text/javascript"></script>
    




        
    
     
    
        
<script type="text/javascript">
    (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
    (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
    m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
    })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

    ga('create', 'UA-3409854-105', 'auto');
    ga('require', 'linkid', 'linkid.js');
    ga('set', 'anonymizeIp', true);

    

    

    
        ga('send', 'pageview');
    
</script>
    


    
</body>
</html>
