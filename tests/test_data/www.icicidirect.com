
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head><meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <title>Open Online Trading Account | NSE / BSE Share & Stock Market Trading with iDirect (ICICI Direct)</title>
    <meta name="google-site-verification" content="aQzDKX0iK1Gt3rsKNwZoddpmUxZoUzZZZd-ZvbIqT34" />
    <meta name="Description" content="ICICI Direct (iDirect) offers live online share/stock market trading account, demat account, IPO, SIPs, mutual fund recommendations, tips, updates in India. Open trading account today and check our detailed analysis with a simplified online trading system.">
    <meta name="Keywords" content="stock market, share market, online trading in india, online share trading, online stock trading, equity trading, equity shares, idirect trading, bse trading, idirect demat account">
    <meta name="author" content="ICICI Direct">
    <meta name="revisit-after" content="15 days">
    <meta name="distribution" content="global">
    <meta name="GOOGLEBOT" content="INDEX, FOLLOW">
    <meta name="rating" content="general">
    <meta http-equiv="content-type" content="text/html; charset=iso-8859-1">
    <meta http-equiv="content-language" content="en">
    <script src="https://www.icicidirect.com/idirectcontent/home/scripts/jquery-1.8.3.min.js"
        type="text/javascript"></script>
    <script src="https://www.icicidirect.com/idirectcontent/home/scripts/jquery.royalslider.min.js"
        type="text/javascript"></script>
    <link href="https://www.icicidirect.com/idirectcontent/home/styles/royalslider.css"
        type="text/css" rel="Stylesheet" />
    <link href="https://www.icicidirect.com/idirectcontent/home/styles/rs-default.css"
        type="text/css" rel="Stylesheet" />
    <script type="text/javascript">
        jQuery(document).ready(function ($) {
            // Please note that autoHeight option has some conflicts with options like imageScaleMode, imageAlignCenter and autoScaleSlider
            // it's recommended to disable them when using autoHeight module
            $('#content-slider-1').royalSlider({
                autoHeight: true,
                arrowsNav: false,
                fadeinLoadedSlide: false,
                controlNavigationSpacing: 1,
                controlNavigation: 'tabs',
                imageScaleMode: 'none',
                imageAlignCenter: false,
                loop: true,
                loopRewind: true,
                autoPlay:
	{
	    enabled: true,
	    delay: 8000
	},
                numImagesToPreload: 6,
                keyboardNavEnabled: false,
                usePreloader: false
            });
        });
    </script>
    <script src="https://www.icicidirect.com/idirectcontent/home/scripts/simple.carousel.js"
        type="text/javascript"></script>
    <script type="text/javascript">
        jQuery(document).ready(function ($) {
            // example 1
            $("ul.example1").simplecarousel({
                width: 250,
                height: 120,
                visible: 3,
                auto: 5000,
                next: $('.next'),
                prev: $('.prev')
            });
        });
    </script>
    <script src="https://www.icicidirect.com/idirectcontent/home/scripts/ddaccordion.js"
        type="text/javascript"></script>
    <script type="text/javascript">
        //Initialize 2nd demo:
        ddaccordion.init({
            headerclass: "technology", //Shared CSS class name of headers group
            contentclass: "thelanguage", //Shared CSS class name of contents group
            revealtype: "click", //Reveal content when user clicks or onmouseover the header? Valid value: "click", "clickgo", or "mouseover"
            mouseoverdelay: 200, //if revealtype="mouseover", set delay in milliseconds before header expands onMouseover
            collapseprev: true, //Collapse previous content (so only one open at any time)? true/false 
            defaultexpanded: [], //index of content(s) open by default [index1, index2, etc]. [] denotes no content.
            onemustopen: true, //Specify whether at least one header should be open always (so never all headers closed)
            animatedefault: true, //Should contents open by default be animated into view?
            scrolltoheader: false, //scroll to header each time after it's been expanded by the user?
            persiststate: false, //persist state of opened contents within browser session?
            toggleclass: ["closedlanguage", "openlanguage"], //Two CSS classes to be applied to the header when it's collapsed and expanded, respectively ["class1", "class2"]
            togglehtml: ["prefix", "<span style=\"float:left;padding-left:8px;display:inline-block;height:18px;width:18px; background: url('https://www.icicidirect.com/idirectcontent/BaseMasterPage/images/homepage_icon.png')  no-repeat scroll -198px -7px transparent;\">", "<span style=\"float:left;display:inline-block;height:18px;width:18px; background: url('https://www.icicidirect.com/idirectcontent/BaseMasterPage/images/homepage_icon.png')  no-repeat scroll -224px -7px transparent;padding-left:8px;\">"], //Additional HTML added to the header when it's collapsed and expanded, respectively  ["position", "html1", "html2"] (see docs)
            animatespeed: "slow", //speed of animation: integer in milliseconds (ie: 200), or keywords "fast", "normal", or "slow"
            oninit: function (expandedindices) { //custom code to run when headers have initalized
                //do nothing
            },
            onopenclose: function (header, index, state, isuseractivated) { //custom code to run whenever a header is opened or closed
                //do nothing
            }
        })
    </script>
    <style type="text/css">
        .example1
        {
            margin: 0;
            padding: 0;
            list-style: none;
        }
        .buy_sellWrapper
        {
            float: left;
            width: 100%;
            background: url(https://www.icicidirect.com/idirectcontent/home/images/what_buy_sell_background.png) repeat-x;
            height: 137px;
        }
        .buy_sellNav
        {
            width: 980px;
            margin: 0 auto;
        }
        .next, .prev
        {
            cursor: pointer;
            float: left;
        }
        ul.example1 li
        {
            text-align: justify;
        }
        ul.example1 li span
        {
            display: block;
            margin: 5px;
        }
        .carousel-pagination li
        {
            display: block;
            width: 10px;
            height: 10px;
            margin-right: 5px;
            cursor: pointer;
            float: left;
            background: #333;
        }
        .carousel-pagination .carousel-pagination-active
        {
            background: #ff0000;
        }
        ul.example1 li span div p
        {
            line-height: 15px;
            font-size: 12px;
        }
        ul.example1 li span div p.head
        {
            font-size: 13px;
        }
        .button4
        {
            padding: 4px 7px 7px 7px;
            float: left;
            background-color: #053c6d;
            color: #ffffff !important;
            text-align: center;
            text-decoration: none;
            border: 1px solid #053c6d;
            font-weight: bold;
        }
    </style>
<link type="text/css" rel="Stylesheet" href="../BaseMasterPage/Styles/main.css?v=2" /><link type="text/css" rel="Stylesheet" href="../BaseMasterPage/Styles/jquery.autocomplete.css" /><link type="text/css" rel="stylesheet" href="../BaseMasterPage/styles/tinybox.css" /><link type="text/css" rel="stylesheet" href="../Research/styles/tabstyle.css" /><link type="text/css" rel="stylesheet" href="../BaseMasterPage/Styles/jquery-ui-1.10.4.calendar.css" /><link href="../BaseMasterPage/styles/table.css" type="text/css" rel="Stylesheet" /><link rel="alternate" media="only screen and (max-width: 640px)" href="https://secure.icicidirect.com/IDirectTrading/lbs/lbstrading.aspx" />
    <script type="text/javascript" src="https://www.icicidirect.com/idirectcontent/Basemasterpage/Scripts/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="https://www.icicidirect.com/idirectcontent/Basemasterpage/Scripts/jquery.autocomplete.js"></script>
    <script type="text/javascript" src="https://www.icicidirect.com/idirectcontent/Basemasterpage/Scripts/main.js?v=2"></script>
  
    <script type="text/javascript" src="https://www.icicidirect.com/idirectcontent/Basemasterpage/Scripts/tinybox.js"></script>
    <script type="text/javascript" src="https://www.icicidirect.com/idirectcontent/Basemasterpage/Scripts/jquery-ui-1.10.4.calendar.min.js"></script>
<title>

</title></head>
<body>
     <!-- Google Tag Manager -->
    <noscript><iframe src="//www.googletagmanager.com/ns.html?id=GTM-VW5H"
    height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
    <script>        (function (w, d, s, l, i) {
            w[l] = w[l] || []; w[l].push({ 'gtm.start':
    new Date().getTime(), event: 'gtm.js'
            }); var f = d.getElementsByTagName(s)[0],
    j = d.createElement(s), dl = l != 'dataLayer' ? '&l=' + l : ''; j.async = true; j.src =
    '//www.googletagmanager.com/gtm.js?id=' + i + dl; f.parentNode.insertBefore(j, f);
        })(window, document, 'script', 'dataLayer', 'GTM-VW5H');</script>
    <!-- End Google Tag Manager -->
    <form method="post" action="./Home.aspx" id="form1">
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="jOksDoK/kAZ4WjU1VRnJ+eB3Ar+lSW35HaJYD/aA44SsJtw6IOvTblMRGYRIR7hCvNbs5ZZBXPJIWM102Zho22bmFXCVMO3jj6OysR/M3Nbl5JFTDYov82KWwWpf63pGA2LU5bFmc/DuPmH70qc8omkeiV3Ik8kXMoy3mLvnmi0fGqfGa6ROAZHebLJoyUMY2jIx+A4qqYtdP9LoEVJBlNPbriJGspJrQKxG8GbpW4d+vm0lNId0Ec71+Nc1RitfyBCK1070/O8s2PRMehMyiBZBxi2LZPifbU8McnZ2pnrQH6Ja7rOuveXNPLfyOV79V+lJTQI7tDDfQ0t3eUc83wz5r3j4mZpBsRnXNTVgMX1pNwzwrsV+ZSjOu4eVIn/dec2x78OlBRZzFw3LVrftPSCQ3UMfkaA8KBOJwdQT2wWD766NCz6hWwnR/r47PyPIj0F8divNUoHod6Zq8CdYFcK+mnV4uGR0EevvbSFAr3Bihq2ehPfoBp2hqa1cHP2cRChT0bssixj3kwr5W7WmTUfsQ4FLnRbq1KjMS3HyBfJ0L/PvnB3/b+bpkDmvTGJhLyVKmznSaoZxmbsbhkYsor4iXQHAVX6575CAN2rJgwKgMEP5zFl7sRFmgDDi32vB/6I56k689pYnzkhAaHQth4t8jKhsmv1T+C4yqJ1CMJg=" />

<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="1A97ED20" />
<input type="hidden" name="__VIEWSTATEENCRYPTED" id="__VIEWSTATEENCRYPTED" value="" />
    <script type="text/javascript" language="javascript">
        if (top != self) {
            top.location.replace(document.location);
            Clkjack();
        }
        function Clkjack() {

            window.parent.location.href = "http://content.icicidirect.com";
        }

	function myFunction() {
            window.open('https://secure.icicidirect.com/IDirectTrading/customer/InstaChat.aspx', 'selfhelp', 'directories=no,titlebar=no,toolbar=no,location=no,status=no,menubar=no,scrollbars=no,resizable=no,width=420,height=550,screenX=100,screenY=0,top=' + (parseInt(screen.height) - 650) + ',left=' + (parseInt(screen.width) - 450));
        }

	(function () {
            $.fn.extend({
                ShowDetails: function (showhide) {
                    if (showhide == 1) {
                        var nextdv = $(this).find('div:first-child');
                        $(nextdv).css({ 'width': "350px", "position": "absolute", "float": "left", "font-size": "11px", "text-align": "left", "background-color": "#cdcdcd", "color": "#000", "padding": "10px", "line-height": "15px" });
                        var objTarget = event.target;
                        $(this).css({ 'top': "25px", 'left': $(this).offset().left - 100 });
                        $(this).show();
                    }
                    else {
                        $(this).hide();
                    }
                }
            });
        })(jQuery, this);

	</script>

        
    <div>
        
<script type="text/javascript">
    var fileURL = "https://www.icicidirect.com/idirectcontent";
    var appurl = "https://www.icicidirect.com/idirectcontent";
    optype = 'Q';
    $(document).ready(function () {
        MktData();
        $('#txtTopSearch').val(quotetxt);
    });

    $(function () {
        $("#drpStock").change(function () {
            MktData();
        })
        $("#hyprefresh").click(function () {
            MktData();
        })
        $(document).ready(function () {
            if (optype == "Q") {
                setauto();
            }
        });
        $("#txtTopSearch").bind('blur', function () { if ($("#txtTopSearch").val() == "") { $("#txtTopSearch").val(quotetxt); } })
    });

    function setauto() {
        $("#txtTopSearch").autocomplete($("#hidHandlerC").val() + '?ForRpt=search&ccode=' + $("#txtTopSearch").val(), { minChars: 3 });
    }
</script>
<div id="dvtopWrapper" class="topWrapper">
    <div class="topPanel">
        <div class="topHead">
            <div class="topHead1">
                <a href="#" class="iciciLogo">
                    <img src="https://www.icicidirect.com/idirectcontent/Basemasterpage/images/iciciLogo.png" alt="iciciLogo" /></a>
            </div>
            <div style="float:left; width:370px; padding-left:40px; " >
              <div class="topHead2">
                <div style="float:left;" >
                <select name="ctl00$Hearder1$drpStock" id="drpStock">
	<option value="India">India</option>
	<option value="World">World</option>
	<option value="Gainers">Gainers</option>
	<option value="Losers">Losers</option>

</select>                
                </div>
                <div class="marketWrapper" style="padding-left:10px;" >
                    <div class="buttons">
                        <a href="#" class="pre">Previous</a> <a href="#" class="nxt">Next</a>
                    </div>
                    <div id="dvSensex">
                    </div>
                </div>
            </div>
            <div class="topHead3">                                
                <div class="search">
                    <input name="ctl00$Hearder1$txtTopSearch" type="text" id="txtTopSearch" />
                    <input type="submit" name="ctl00$Hearder1$btnSearch" value="" onclick="GetSearch(optype,txtTopSearch,fileURL); return false;" id="btnSearch" />
                </div>
                <ul  id="dvDate" style="width:140px !important;font-size:11px;float:right;"  ></ul>
                
            </div>
            </div>
            <div style="float:left; padding-top:10px;padding-right:30px;"  >
                <a id="hyprefresh" title="Refresh in 1 min." href="#" style="display: inline-block;width:18px;height:18px;background: url('https://www.icicidirect.com/idirectcontent/BaseMasterPage/images/homepage_icon.png')  no-repeat scroll -68px -4px transparent;">
                    </a>
                <span id="Hearder1_lbldelay" class="dealytext">Delayed</span>
                   <input type="hidden" name="ctl00$Hearder1$hidHandlerC" id="hidHandlerC" value="https://www.icicidirect.com/idirectcontent/BaseMasterPage/HeaderDataHandler.ashx" />
                <input type="hidden" name="ctl00$Hearder1$hidHandler" id="hidHandler" value="https://secure.icicidirect.com/IDirectTrading/BaseMasterPage/HeaderDataHandler.ashx" />
            </div>
            <div class="topHead1 topHead4">
                <div style="width:200px; height:20px; float:left; padding-top:5px; " >
                <label>&nbsp;</label>                               
                </div>                
                
                <div style="width:240px;float:left;padding-top:10px; " >                    
                    
                    
                             
                </div>     
            </div>
        </div>
    </div>
</div>

        
        
        
<div class="navWrapper" >
    <div id="dvMainNav" class="mainNav">
        <ul>
            <li  id="lihome" ><a  href="https://www.icicidirect.com/idirectcontent/Home/Home.aspx"  >home</a> </li>
            <li id="liPnS" ><a href="https://www.icicidirect.com/idirectcontent/ProductService/PSOverview.aspx" >product & services</a> </li>
            <li id="liMarket" ><a href="https://www.icicidirect.com/idirectcontent/Markets/MarketOverview.aspx" >markets</a> </li>            
            <li id="liReasearch" ><a href="https://www.icicidirect.com/idirectcontent/Research/ResearchOverview.aspx" >research</a> </li>
            <li  id="mnuTrade" ><a id="MainMenuTop1_hypTrading" href="https://secure.icicidirect.com/IDirectTrading/customer/CustomerOverview.aspx?filename=OpenAcc">Open an Account</a> </li>
            <li id="liFE" ><a href="https://www.icicidirect.com/idirectcontent/FinancialEducation/ClassroomOfProfit.aspx" >financial learning</a></li>
            
                    <li id="mnuCustomer"><a id="MainMenuTop1_hypCustmSvc" href="https://secure.icicidirect.com/IDirectTrading/customer/CustomerOverview.aspx">Customer Service</a> </li>
            
                <li class="active" style="margin-left:60px !important;"><a class="active" href="https://secure.icicidirect.com/IDirectTrading/customer/login.aspx" >Login</a></li>            
                
        </ul>

        
            <a href="#" id="tileview" class="view">Tile View</a>        
        
    </div>
</div>

<div class="navsubmenuWrapper" id="dvsubprodctmenu" >
	<div class="submenumainNav">
        <ul id="leftNav1" >
            <li id="LiOverview"   >
                <a href="https://www.icicidirect.com/idirectcontent/Home/Home.aspx">Overview</a>
            </li>
            <li id="LiWhyIdirect" >
                <a href="https://www.icicidirect.com/idirectcontent/Home/UniqueAdvantages.aspx">Why ICICIDirect.com</a>
            </li>
            <li id="LiPricing"  >
                <a href="https://www.icicidirect.com/idirectcontent/Home/Pricing.aspx">Pricing</a>
            </li>
            <li id="LiNRIService" >
                <a href="https://www.icicidirect.com/idirectcontent/Home/NRIHome.aspx">NRI Services</a>
            </li>
            <li id="LiCorporateService" >
                <a href="https://www.icicidirect.com/idirectcontent/Home/CorporateService.aspx">Corporate Services</a>
            </li>
            <li id="LiBusinessPartner" >
                <a href="https://www.icicidirect.com/idirectcontent/Home/Businesspartner.aspx">Business Partners</a>
            </li>
            <li id="LiWealthManagement" >
                <a href="https://www.isecpwm.com/" target="_blank" onclick="AjaxDataCall($('#hidHandlerC').val(),'',$('#dvQLcount'),'WEALTHMANAG');" >Wealth Management</a>
            </li>
		 <li id="LiPremier" >
                <a href="https://www.icicidirect.com/premier/index.html" target="_blank">Premier</a>
            </li>
            <li id="LiInvestmentAdvisory" >
                <a href="https://www.icicidirect.com/idirectcontent/Home/InvAdvSvc.aspx">Advisory Services</a>
            </li>
	<div style="display:none" id="dvQLcount" ></div>
        </ul>
    </div>
</div>    

<script type="text/javascript">
    $('#LiOverview').addClass('active');
</script>

    </div>
    
    <div id="dvMain">
        
    <script type="text/javascript">
        function openacc() {
            if ($('#open_account').val() == "0") {
                alert("Please select one option");
            }
            else if ($('#open_account').val() == "S" || $('#open_account').val() == "U" || $('#open_account').val() == "W" || $('#open_account').val() == "A") {
                window.location.href = 'https://secure.icicidirect.com/IDirectTrading/customer/customeroverview.aspx?filename=OpenAcc&acctype=' + $('#open_account').val();
            }
            else if ($('#open_account').val() == "A") {
                TINY.box.show({ url: 'https://www.icicidirect.com/idirectcontent/Home/StaticData/AtsMessage.htm', POST: 'id=16', width: 750, height: 550, opacity: 60, topsplit: 3, animate: true });
            }
            else if ($('#open_account').val() == "C") {
                window.location.href = 'https://secure.icicidirect.com/IDirectTrading/customer/customeroverview.aspx?filename=CorpAcc';
            }
            else if ($('#open_account').val() == "N") {
                window.location.href = 'https://secure.icicidirect.com/IDirectTrading/customer/CustomerOpenAccNRI.aspx';
            }
            else if ($('#open_account').val() == "F") {
                window.location.href = 'https://www.icicidirect.com/idirectcontent/Home/InvAdvSvc.aspx?frmsrc=F';
            }
            else {
                window.location.href = 'https://secure.icicidirect.com/IDirectTrading/customer/customeroverview.aspx?filename=OpenAcc';
            }
        }
        function OpenATS() {
            window.location.href = 'https://secure.icicidirect.com/IDirectTrading/customer/customeroverview.aspx?filename=OpenAcc&acctype=' + $('#open_account').val();
            TINY.box.hide();
        }
        $(document).ready(function () {
            //showBanner($("#MtaxBanner"), 'Pin_Banner.png', "240px", "225px", 0, 0, true, "https://www.icicidirect.com/Mailimages/Pin_popup.html", false);
//            showBanner($("#buysellBanner"), 'HomeBanner_Big.gif', "980px", "120px", "-15px", "-10px", false, "", true);
            //HideBanner();
        });


        function HideBanner() {
            setTimeout(function () {
                $("#MtaxBanner").fadeOut("slow");
            }, 17000);
        }

        function showBanner(displaydiv, imgurl, _width, _height, _top, _left, IsOnclick, clickurl, IsShow) {
            if (IsShow) {
                $(displaydiv).fadeIn("slow", function () {
                    $(displaydiv).css("background-image", "url(https://www.icicidirect.com/Mailimages/" + imgurl + ")");
                    $(displaydiv).css("display", "block");
                    $(displaydiv).css("width", _width);
                    $(displaydiv).css("height", _height);
                    if (_top != 0) {
                        $(displaydiv).css("top", _top);
                    }
                    if (_left != 0) {
                        $(displaydiv).css("left", _left);
                    }
                    $(displaydiv).css("cursor", "hand");
                    if (IsOnclick) {
                        $(displaydiv).click(function () {
                            window.open(clickurl, 'PFCBanner', 'width =700,height=650,status,scrollbars=1,resizable');
                        });
                    }
                    setTimeout(function () {
                        $(displaydiv).fadeOut("slow");
                    }, 4000);
                });
            }
        }
    </script>
    <div class="contWrapper">
        <div class="mainCont" style="margin-top: 10px; margin-bottom: 10px;">
            <div style="width: 975px; float: left; margin-bottom: 10px; border: 0px solid #0000FF;">
                <div style="width: 700px; float: left; border: 0px solid #000;">
                    <div id="content-slider-1" class="royalSlider contentSlider rsDefault" style="border: 0px solid #000;">
                        
                        <div style="background: url(https://www.icicidirect.com/MailImages/mainbanner.gif) no-repeat;
                            height: 238px; cursor: pointer;" onclick="window.open('https://www.icicidirect.com/MailImages/bannerpopup.htm','Load', 'width =700,height=650,status,scrollbars=1,resizable')">
                            <span class="rsTmb">&nbsp;</span>
                        </div>
                        <div style="background: url(https://www.icicidirect.com/idirectcontent/home/images/Upfront_HP.gif) no-repeat;
                            height: 238px; cursor: pointer;" onclick="window.open('https://www.icicidirect.com/idcampaign/open-demat-account-offers/index.asp?utm_source=idirect_website&utm_medium=hp&utm_campaign=PAY&utm_content=offers','Load', 'width =700,height=650,status,scrollbars=1,resizable')">
                            <span class="rsTmb">&nbsp;</span>
                        </div>
                        <div style="background: url(https://www.icicidirect.com/idirectcontent/home/images/home_image_newtoinvesting.png) no-repeat;
                            height: 238px;">
                            <div id="rcTaxBanner" style="display: block; position: relative;">
                                <div id="MtaxBanner" style="position: absolute; left: 60px; top: 0;">
                                </div>
                            </div>
                            <p class="headertext">
                                New to Investing</p>
                            <div class="darkline" style="width: 280px;">
                                &nbsp;</div>
                            <p style="margin-top: 15px; font-size: 14px; line-height: 20px;">
                                Learn how to invest in the stock market and<br />
                                other investment vehicles</p>
                            <p style="margin-top: 10px;">
                                <ul style="list-style: none; line-height: 24px; font-size: 13px; width: 380px; float: left;
                                    margin-top: 0px;">
                                    <li>
                                        <span class="spritBullet" ></span>
                                        <a href="https://www.icicidirect.com/idirectcontent/FinancialEducation/ClassroomOfProfit.aspx?AboutUs&pg=eq"
                                            title="Investing ! What's that?">Investing ! What's that?</a> </li>
                                    <li>
                                        <span class="spritBullet" ></span>
                                        <!--a href="https://www.icicidirect.com/mailimages/index_RGESS_non_logged.htm"
                                            target="_blank" title="What is Rajiv Gandhi Equity Saving Scheme?">What is Rajiv
                                            Gandhi Equity Saving Scheme?</a-->
                                        <a href="https://www.icicidirect.com/mailimages/oneclick-mf-faq.html"
                                            target="_blank" title="What is One Click Investment">What is One Click Investment?</a> 
                                        </li>
                                    <li>
                                        <span class="spritBullet" ></span>
                                        <a href="https://www.icicidirect.com/idirectcontent/FinancialEducation/ClassroomOfProfit.aspx?AboutUs&pg=fut"
                                            title="Why have derivatives?">Why have derivatives?</a> </li>
                                    <li>
                                        <span class="spritBullet" ></span>
                                        <a href="http://virtualstocks.icicidirect.com/GameSite/Customer/login.aspx" target="_blank"
                                            title="Practice Trading ! - No risk, No obligation">Practice Trading ! - No risk,
                                            No obligation</a> </li>
                                    <li>
                                        <span class="spritBullet" ></span>
                                        <a href="https://www.icicidirect.com/idirectcontent/Home/HelpVideos.aspx"
                                            title="View Demos / Help Videos">View Demos / Help Videos</a> </li>
                                </ul>
                            </p>
                            <span class="rsTmb">&nbsp;</span>
                        </div>
                        <div style="background: url(https://www.icicidirect.com/idirectcontent/home/images/home_image_about.png) no-repeat;
                            height: 238px;">
                            <p class="headertext">
                                About ICICIdirect.com</p>
                            <div class="darkline" style="width: 300px;">
                                &nbsp;</div>
                            <p style="margin-top: 15px; font-size: 14px; line-height: 20px;">
                                A unique account that integrates your savings,
                                <br />
                                demat and trading accounts</p>
                            <p style="margin-top: 0px;">
                                <ul style="list-style: none; line-height: 24px; font-size: 13px; width: 380px; float: left;
                                    margin-top: 10px;">
                                    <li>
                                        <span class="spritBullet" ></span>
                                        <a href="https://www.icicidirect.com/idirectcontent/Home/UniqueAdvantages.aspx"
                                            title="About the trading account">About the trading account</a> </li>
                                    <li>
                                        <span class="spritBullet" ></span>
                                        <a href="https://www.icicidirect.com/idirectcontent/ProductService/PSOverview.aspx"
                                            title="Products &amp; Services">Products &amp; Services</a> </li>
                                    <li>
                                        <span class="spritBullet" ></span>
                                        <a href="javascript://" onclick="TINY.box.show({ url: 'https://www.icicidirect.com/idirectcontent/basemasterpage/ContentDataHandler.ashx?pgname=AwardsnAccolades&ismethodcall=0', width: 790, height: 580, opacity: 60, topsplit: 3, animate: true });"
                                            title="Awards &amp; Accolades">Awards &amp; Accolades</a> </li>
                                    <li>
                                        <span class="spritBullet" ></span>
                                        <a href="https://www.icicidirect.com/learning/university.htm"
                                            target="_blank" title="Basics of Trading &amp; Investing">Basics of Trading &amp;
                                            Investing</a> </li>
                                    <li>
                                        <span class="spritBullet" ></span>
                                        <a href="https://www.icicidirect.com/idirectcontent/Home/UniqueAdvantages.aspx"
                                            title="Why ICICIdirect.com ?">Why ICICIdirect.com ?</a> </li>
                                </ul>
                            </p>
                            <span class="rsTmb">&nbsp;</span>
                        </div>
                    </div>
                </div>
                <div style="width: 271px; float: left; border: 0px solid #f00;">
                    <table width="268px" cellpadding="0" cellspacing="0" border="0" style="margin-left: 2px;">
                        <tr>
                            <td style="border: none; background: url(images/open_account_top.png) no-repeat;
                                height: 27px;">
                                <div style="width: 60%; float: left; border: 0px solid #f00; margin-top: 20px; margin-left: 50px;">
                                    <h3 style="text-align: center; text-transform: none;">
                                        I am interested in</h3>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td style="border: none; height: 150px; background: url(images/open_account_middle.png) repeat-y;">
                                <div style="width: 90%; float: left; border: px solid #f00; margin-left: 7px;">
                                    <div style="width: 90%; float: left; margin-left: 10px;">
                                        <select id="open_account" name="open_account" style="width: 225px;">
                                        <option value="0" selected>Select</option>
                                            <option value="W">Investment Account</option>
                                            <option value="S">Online Trading Account</option>
                                            <option value="N">NRI Account</option>
                                            
                                            <option value="C">Corporate Account</option>
                                            <option value="U">Financial Learning Programmes</option>
                                            <option value="F">Financial Planning Service Quick Pay</option>
                                            <option value="A">Equity Relationship Service Account</option>
                                        </select>
                                    </div>
                                    <div style="width: 60%; float: left; margin-left: 45px; margin-top: 15px; border: px solid #000;">
                                        <input type="button" class="button3" onclick="openacc();" value="Open my Account"
                                            style="padding: 0px !important; font-weight: bold !important; width: 130px;" />
                                        
                                    </div>
                                    <div style="width: 50%; float: right; margin-left: 0px; margin-top: 10px;">
                                        <a href="https://secure.icicidirect.com/IDirectTrading/customer/customeroverview.aspx?filename=easymailappstatus"
                                            title="My Account Status" style="font-size: 13px;">My Account Status</a>
                                    </div>
					
                                    <div style="width: 100%; float: left; margin-left: 0px;">
                                        <hr>
                                    </div>
                                    <div style="width: 100%; float: left; margin-top: 5px; margin-bottom: 5px; margin-left: 42px;">
                                        &nbsp; <a href="https://www.icicidirect.com/idirectcontent/Home/UniqueAdvantages.aspx?fl=insta"
                                            class="button3" style="background-color: #053c6d !important; border: solid 1px #053c6d !important;
                                            height: 15px !important; font-weight: bold;" title="Open InstaAccount">Open Insta
                                            Account </a><a href="https://www.icicidirect.com/idirectcontent/Home/UniqueAdvantages.aspx?fl=insta"
                                                title="Open Insta Account (Paperless)">
                                                <div style="width: 170px; float: left; position: absolute; margin: 20px 0px 20px 40px;">
                                                    For Mutual Fund (Paperless)
                                                </div>
                                            </a>
                                    </div>
					
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td style="background: url(images/open_account_bottom.png) no-repeat; height: 25px;
                                border: none;">
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
        <!--What you can buy and sell here-->
        <div class="buy_sellWrapper">
            <div class="buy_sellNav" style="margin-top: 10px; height: 115px;">
                <div style="width: 200px; float: left; border-right: 1px dashed #959595; height: 106px;
                    padding-top: 15px;">
                  <div style="display: none; position: relative;">
                        <div style="display: block; position: absolute; top: -15px;">
                          <a href="#" onclick="showBanner($('#buysellBanner'), 'HomeBanner_Big.gif?v=1', '980px', '120px', '-15px', '-10px', false, '', true);">
                                <img src="https://www.icicidirect.com/Mailimages/HomeBanner_Small.gif?v=1" /></a>
                        </div>
                        <div id="buysellBanner" style="position: absolute; left: 80px; top: 0;">
                        </div>
                    </div>
                    <h3 style="line-height: 26px; padding-top: 20px;">
                        What you can Buy &amp; Sell here ...</h3>
                    <div style="width: 80px; float: right; margin-right: 10px; margin-top: -25px;">
                        <span class="prev" style="margin-right: 5px; display: inline-block; height: 34px;
                            width: 34px; background: url('https://www.icicidirect.com/idirectcontent/BaseMasterPage/images/homepage_icon.png')  no-repeat scroll -114px 1px transparent;">
                        </span><span class="next" style="margin-right: 5px; display: inline-block; height: 34px;
                            width: 34px; background: url('https://www.icicidirect.com/idirectcontent/BaseMasterPage/images/homepage_icon.png')  no-repeat scroll -157px 1px transparent;">
                        </span>
                    </div>
                </div>
                <ul class="example1">
                    <li><span>
                        <div style="width: 230px; float: left; border-right: 1px dashed #959595; height: 118px;
                            padding-right: 10px;">
                            <p class="head">
                                <b><a href="https://www.icicidirect.com/idirectcontent/ProductService/ProductService.aspx?Equity">
                                    Equity</a></b></p>
                            <p style="margin-top: 10px;">
                                Trade and invest in stocks online, seamlessly. Some of our products include Cash
                                Trading, Margin Product, CallNTrade, etc.
                            </p>
                        </div>
                    </span></li>
                    <li><span>
                        <div style="width: 230px; float: left; border-right: 1px dashed #959595; height: 118px;
                            padding-right: 10px;">
                            <p class="head">
                                <b><a href="https://www.icicidirect.com/idirectcontent/ProductService/ProductService.aspx?Derivatives">
                                    Derivatives</a></b></p>
                            <p style="margin-top: 10px;">
                                Trade in Future & Options (F&O) at a click of a button. Experience fast, easy, transparent
                                and hassle-free trading.
                            </p>
                        </div>
                    </span></li>
                    <li><span>
                        <div style="width: 230px; float: left; border-right: 1px dashed #959595; height: 118px;
                            padding-right: 10px;">
                            <p class="head">
                                <b><a href="https://www.icicidirect.com/idirectcontent/ProductService/ProductService.aspx?MutualFunds">
                                    Mutual Funds</a></b></p>
                            <p style="margin-top: 10px;">
                                Investing in mutual fund schemes is easy and convenient. Track investments with
                                a detailed report.
                            </p>
                        </div>
                    </span></li>
                    <li><span>
                        <div style="width: 230px; float: left; border-right: 1px dashed #959595; height: 118px;
                            padding-right: 10px;">
                            <p class="head">
                                <b><a href="https://www.icicidirect.com/idirectcontent/ProductService/ProductService.aspx?ETF">
                                    ETF</a></b></p>
                            <p style="margin-top: 10px;">
                                Exchange Traded Funds (ETFs) are securities that are traded like individual stocks
                                on an exchange. You can buy and sell Gold, Index, Banking and International ETFs
                                here.
                            </p>
                        </div>
                    </span></li>
                    <li><span>
                        <div style="width: 230px; float: left; border-right: 1px dashed #959595; height: 118px;
                            padding-right: 10px;">
                            <p class="head">
                                <b><a href="https://www.icicidirect.com/idirectcontent/ProductService/ProductService.aspx?LifeInsurance">
                                    Life Insurance</a></b></p>
                            <p style="margin-top: 10px;">
                                Secure your family’s financial future with life insurance. Choose from an array
                                of products like term plans, money back plans, ULIPs, etc. to meet your requirements.
                            </p>
                        </div>
                    </span></li>
                    <li><span>
                        <div style="width: 230px; float: left; border-right: 1px dashed #959595; height: 118px;
                            padding-right: 10px;">
                            <p class="head">
                                <b><a href="https://www.icicidirect.com/idirectcontent/ProductService/ProductService.aspx?GeneralInsurance">
                                    General Insurance</a></b></p>
                            <p style="margin-top: 10px;">
                                Protect yourself, your family, and your assets with general insurance products.
                                Select from health insurance, motor insurance, travel insurance, etc.
                            </p>
                        </div>
                    </span></li>
                    <li><span>
                        <div style="width: 230px; float: left; border-right: 1px dashed #959595; height: 118px;
                            padding-right: 10px;">
                            <p class="head">
                                <b><a href="https://www.icicidirect.com/idirectcontent/ProductService/ProductService.aspx?Loans">
                                    Loans</a></b></p>
                            <p style="margin-top: 10px;">
                                Now you can choose to take a loan also through ICICIdirect.com! Choose from various
                                loans to meet your financial requirements.
                            </p>
                        </div>
                    </span></li>
                    <li><span>
                        <div style="width: 230px; float: left; border-right: 1px dashed #959595; height: 118px;
                            padding-right: 10px;">
                            <p class="head">
                                <b><a href="https://secure.icicidirect.com/IDirectTrading/Trading/TradingPage.aspx?IPO-IPOBondList">
                                    IPO</a></b></p>
                            <p style="margin-top: 10px;">
                                Invest in initial public offer (IPO), follow-on public offer (FPO) and offer for
                                sale (OFS) of shares, conveniently, without any paper work.
                            </p>
                        </div>
                    </span></li>
                    <li><span>
                        <div style="width: 230px; float: left; border-right: 1px dashed #959595; height: 118px;
                            padding-right: 10px;">
                            <p class="head">
                                <b><a href="https://www.icicidirect.com/idirectcontent/ProductService/ProductService.aspx?Currency">
                                    Currency</a></b></p>
                            <p style="margin-top: 10px;">
                                Hedge your foreign exchange (forex) risk, with trading in currency. We offer transparent
                                online trading platform, which ensures uniform real-time price access.
                            </p>
                        </div>
                    </span></li>
                    <li><span>
                        <div style="width: 230px; float: left; border-right: 1px dashed #959595; height: 118px;
                            padding-right: 10px;">
                            <p class="head">
                                <b><a href="https://www.icicidirect.com/idirectcontent/ProductService/ProductService.aspx?FDBonds">
                                    Fixed Deposits</a></b></p>
                            <p style="margin-top: 10px;">
                                Invest online seamlessly in fixed-income instruments such as corporate fixed deposits
                                (FDs), bonds (tax-free bonds, capital gain bonds, GOI bonds, etc.) and non-convertible
                                debentures (NCDs).
                            </p>
                        </div>
                    </span></li>
                    <li><span>
                        <div style="width: 230px; float: left; border-right: 1px dashed #959595; height: 118px;
                            padding-right: 10px;">
                            <p class="head">
                                <b><a href="https://www.icicidirect.com/idirectcontent/ProductService/ProductService.aspx?NPS">
                                    National Pension System</a></b></p>
                            <p style="margin-top: 10px;">
                                Under National Pension System (NPS), you can accumulate a pension corpus during
                                your work life to meet financial needs post retirement.
                            </p>
                        </div>
                    </span></li>
                    <li><span>
                        <div style="width: 230px; float: left; border-right: 1px dashed #959595; height: 118px;
                            padding-right: 10px;">
                            <p class="head">
                                <b><a href="https://www.icicidirect.com/idirectcontent/Home/InvAdvSvc.aspx">
                                    Financial Planning</a></b></p>
                            <p style="margin-top: 10px;">
                                Be it planning for your child's education or marriage, your retirement or that dream
                                home, we can build a comprehensive financial plan specially customized for you.
                            </p>
                        </div>
                    </span></li>
                    <li><span>
                        <div style="width: 230px; float: left; border-right: 1px dashed #959595; height: 118px;
                            padding-right: 10px;">
                            <p class="head">
                                <b><a href="https://www.icicidirect.com/idirectcontent/Home/InvAdvSvc.aspx">
                                    Financial Learning</a></b></p>
                            <p style="margin-top: 10px;">
                                Be it a Beginner in stock markets or an evolved trader, we have programs for each
                                of you, which are designed/delivered by market experts in Classroom/Self Learn/Virtual
                                mode in areas of stocks, technical analysis, derivatives etc.
                            </p>
                        </div>
                    </span></li>
                </ul>
            </div>
        </div>
        <!--END What you can buy and sell here-->
        <div class="mainCont" style="margin-top: 10px; margin-bottom: 10px;">
            <div style="width: 975px; float: left; margin-top: 30px; border: 0px solid #f00;
                margin-bottom: 10px;">
                <div style="width: 335px; float: left; margin-right: 10px;">
                    <div class="headertext">
                        Watch, Listen &amp; Understand</div>
                    <div class="darkline" style="width: 320px;">
                        &nbsp;</div>
                    <div style="width: 320px; padding-top: 20px;">
                        <div style="width: 300px; float: left; margin-top: 5px; margin-bottom: 4px;">
                            <div style="float: left; margin-right: 5px;">
                                <span class="spritBullet" style="margin-top: 2px !important; margin-right: 5px !important;">
                                </span>
                            </div>
                            <div style="float: left;">
                                <p>
                                    <a href="https://www.icicidirect.com/idirectcontent/Home/HelpVideos.aspx"
                                        title="Help Videos">Help Videos</a></p>
                            </div>
                            <div style="float: right;">
                                <a href="https://www.icicidirect.com/idirectcontent/Home/HelpVideos.aspx"
                                    title="Help Videos" style="display: inline-block; height: 15px; width: 17px;
                                    background: url('https://www.icicidirect.com/idirectcontent/BaseMasterPage/images/homepage_icon.png')  no-repeat scroll -250px -8px transparent;">
                                </a>
                            </div>
                        </div>
                        <div style="width: 300px; float: left;">
                            <div style="float: left; margin-right: 5px;">
                                <span class="spritBullet" style="margin-top: 2px !important; margin-right: 5px !important;">
                                </span>
                            </div>
                            <div style="float: left;">
                                <p>
                                    <a href="https://www.icicidirect.com/idirectcontent/Home/Webinars.aspx"
                                        title="View Webinars">View Webinars</a></p>
                            </div>
                            <div style="float: right;">
                                <a href="https://www.icicidirect.com/idirectcontent/Home/Webinars.aspx"
                                    title="View Webinars" style="display: inline-block; height: 15px; width: 17px;
                                    background: url('https://www.icicidirect.com/idirectcontent/BaseMasterPage/images/homepage_icon.png')  no-repeat scroll -250px -8px transparent;">
                                </a>
                            </div>
                        </div>
                        <div style="width: 300px; float: left; margin-top: 5px;">
                            <div style="float: left; margin-right: 5px;">
                                <span class="spritBullet" style="margin-top: 2px !important; margin-right: 5px !important;">
                                </span>
                            </div>
                            <div style="float: left;">
                                <p>
                                    <div style="width: 160px; float: left;">
                                        <a href="http://content.icicidirect.com/idirectcontent/MoneyManagerMagazine/index.html"
                                            title="eMag Edition" target="_blank">Money Manager Magazine</a></div>
                                    <div style="width: 90px; float: left;">
                                        <a href="http://www.facebook.com/icicidirect" target="_blank" title="Connect with us on">
                                            <img src="https://www.icicidirect.com/idirectcontent/home/images/facebook.png"
                                                alt="Facebook" /></a>
                                    </div>
                                </p>
                            </div>
                            <ul style="list-style: none; margin-top: 3px; margin-bottom: 3px; width: 280px; float: right;
                                line-height: 22px; border: 0px solid #f00;">
                                <li style="width: 130px; float: left;"><span class="spritBullet" style="margin-top: 4px !important;
                                    margin-right: 5px !important;"></span><a href="https://www.icicidirect.com/idirectcontent/MoneyManagerMagazine/Monthly_Issue.pdf"
                                        target="_blank" title="Download">Download (PDF) </a></li>
                                <li style="width: 130px; float: right;"><span class="spritBullet" style="margin-top: 4px !important;
                                    margin-right: 5px !important;"></span><a href="http://content.icicidirect.com/MailImages/moneymanager/index.html"
                                        target="_blank" title="Archive">Archive</a> </li>
                            </ul>
                        </div>
                        <div style="width: 300px; float: left; margin-top: 5px;">
                            <div style="float: left; margin-right: 5px;">
                                <span class="spritBullet" style="margin-top: 2px !important; margin-right: 5px !important;">
                                </span>
                            </div>
                            <div style="float: left;">
                                <p> 
                                    
                                        <a href="http://www.icicisecurities.com/CRMLite/OnlyDemo/video.html" title="MF Simplified – Why ICICIdirect.com?" target="_blank">MF Simplified – Why ICICIdirect.com?</a></p>
                            </div>
                            <div style="float: right;">
                                <a href="https://www.icicidirect.com/idirectcontent/Home/HelpVideos.aspx?Video=WhyInsurance.flv&Title=Why Insurance&menu=3rd"
                                    title="Why Insurance?" style="display: inline-block; height: 15px; width: 17px;
                                    background: url('https://www.icicidirect.com/idirectcontent/BaseMasterPage/images/homepage_icon.png')  no-repeat scroll -250px -8px transparent;">
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <div style="width: 325px; float: left; margin-top: -8px;">
                    <div style="width: 100%; float: left;">
                        <div class="technology">
                            <p class="headertext">
                                Expert Speak</p>
                            <div class="darkline" style="width: 320px;">
                                &nbsp;</div>
                        </div>
                        <div class="thelanguage" style="margin-top: 10px;">
                            <p>
                                
                                <a href="#" onclick="alert('Please login to View.');" title="Expert Speak">
                                    
                                     Investor Conference calls &nbsp;&nbsp;<br> Listen to our Conference calls on Products, Features & Research through Experts</a>
                            </p>
                        </div>
                    </div>
                    <div style="width: 100%; float: left; margin-top: 20px;">
                        <div class="technology">
                            <p class="headertext">
                                Quick Poll</p>
                            <div class="darkline" style="width: 320px;">
                                &nbsp;</div>
                        </div>
                        <div class="thelanguage" style="margin-top: 10px;">
                            <p>
                                <a href="https://secure.icicidirect.com/IDirectTrading/Trading/TradingPage.aspx?customer-poll"
                                    title="Quick Poll">Participate in survey on Tax benefits on Insurance... </a>
                            </p>
                        </div>
                    </div>
                </div>
                <div style="width: 268px; float: right; border: 1px solid #d0d0d0;">
                    <div style="margin-top: 7px; margin-left: 4px;" id="divImage">
                        <img border="0" name="banner" id="banner" height="110" onclick="openWindow();" style="cursor: pointer;"
                            width="260" src="https://www.icicidirect.com/mailimages/BannerImages/a.gif">
                    </div>
                    <input type="hidden" id="hdnFileNames" name="hdnFileNames" value="a.gif,b.gif,c.gif,d.gif" />
                    <input type="hidden" id="hdnFileCount" name="hdnFileCount" value="4" />
                    <input type="hidden" id="hdnPath" name="hdnPath" value="https://www.icicidirect.com" />
                    <input type="hidden" id="hdnItemCount" name="hdnItemCount" value="4" />
                    <input type="hidden" id="hdnCurPageNo" name="hdnCurPageNo" value="1" />
                    <input type="hidden" id="hdnTotalPages" name="hdnTotalPages" value="1" />
                    <div id="divImgMainLink" style="font-size: 13px; width: 260px" align="center" class="openaccount">
                        <div id="divImgLink" style="font-size: 13px; width: 260px" align="center">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script language="javascript" type="text/javascript">
    //<![CDATA[
        onload = function () {
            startTime();
            Onload_Link();
        }
        //]]>

        var img = 1;
        var FileNames = document.getElementById("hdnFileNames").value;
        var Filearray = new Array();
        Filearray = FileNames.split(',');
        arrlen = document.getElementById("hdnFileCount").value;
        var arr = new Array();
        var path = document.getElementById("hdnPath").value;
        var virpath = path + "/MailImages/BannerImages/";


        for (var i = 0; i <= arrlen; i++) {
            //arr[i]= new Image();
            arr[i] = virpath + Filearray[i];
        }

        function startTime() {
            var time = new Date();
            hours = time.getHours();
            mins = time.getMinutes();
            secs = time.getSeconds();
            closeTime = hours * 3600 + mins * 60 + secs;
            closeTime += 8; // How many seconds until the next banner rotation
            Timer();
        }

        function Timer() {
            var time = new Date();
            hours = time.getHours();
            mins = time.getMinutes();
            secs = time.getSeconds();
            curTime = hours * 3600 + mins * 60 + secs

            if (curTime >= closeTime) {
                if (img < parseInt(arrlen) + 1) {	// The number 2 is the amount of banners that you have above - adjust accordingly																	

                    document.banner.src = arr[img - 1];

                    highlightLink(img);
                    img++;
                }
                else {

                    img = 1;
                    document.banner.src = arr[img - 1];
                    highlightLink(img);

                }

                startTime();
            }
            else {
                window.setTimeout("Timer()", 1000)
            }
        }

        function loadImage(ImgNo) {
            highlightLink(ImgNo);
            document.banner.src = arr[parseInt(ImgNo) - 1];
            img = parseInt(ImgNo);

            //document.getElementById("divImgLink").focus();
            // document.getElementById("divImage").focus();
        }

        function highlightLink(ImgNo) {
            var CurPageNo, MinNo, MaxNo;
            var TotalImg = document.getElementById("hdnFileCount").value;
            CurPageNo = document.getElementById("hdnCurPageNo").value;
            var Totalpg = document.getElementById("hdnTotalPages").value;
            var ItemCount = document.getElementById("hdnItemCount").value;
            var linkId = "BanImg" + ImgNo;
            MinNo = (parseInt(CurPageNo * ItemCount) - parseInt(ItemCount)) + 1;
            if (parseInt(Totalpg) > parseInt(CurPageNo)) {
                MaxNo = parseInt(CurPageNo * ItemCount);
            }
            else {
                MaxNo = parseInt(TotalImg);
            }
            if (parseInt(ImgNo) > parseInt(MaxNo)) {
                NextClick();
            }
            if (parseInt(ImgNo) == 1) {
                document.getElementById("hdnCurPageNo").value = 1;
                CurPageNo = document.getElementById("hdnCurPageNo").value;
                Onload_Link();
            }
            CurPageNo = document.getElementById("hdnCurPageNo").value;
            MinNo = (parseInt(CurPageNo * ItemCount) - parseInt(ItemCount)) + 1;
            if (parseInt(Totalpg) > parseInt(CurPageNo)) {
                MaxNo = parseInt(CurPageNo * ItemCount);
            }
            else {
                MaxNo = parseInt(TotalImg);
            }


            for (var i = parseInt(MinNo); i <= parseInt(MaxNo); i++) {
                var linkId1 = "BanImg" + i;

                if (i == parseInt(ImgNo)) {
                    if (document.getElementById(linkId1) != null)
                        document.getElementById(linkId).style.color = "orange";
                }
                if (i != parseInt(ImgNo)) {
                    if (document.getElementById(linkId1) != null)
                        document.getElementById(linkId1).style.color = "#014a81";
                }

            }
        }

        function Onload_Link() {
            var strLink = "";
            var ItemCount = document.getElementById("hdnItemCount").value;
            var Totalpg = document.getElementById("hdnTotalPages").value;
            // strLink = strLink + "<a href='javascript://' id='Previous' onclick='javascript:PreviousClick();' name='Previous'> << </a> &nbsp;";
            for (i = 1; i <= ItemCount; i++) {
                var linkId = "BanImg" + i;
                strLink = strLink + "<b><a href='javascript://'  onclick='javascript:loadImage(" + i + ");' id='" + linkId + "' name='" + linkId + "' >" + i + "</a> </b>&nbsp;&nbsp;";
            }
            if (parseInt(Totalpg) > 1) {
                strLink = strLink + "<b><a href='javascript://' onclick='javascript:NextClick();' id='Next' name='Next'> >> </a></b> &nbsp;";
            }

            document.getElementById("divImgLink").innerHTML = strLink;

        }

        function NextClick() {
            var CurPageNo = document.getElementById("hdnCurPageNo").value;
            var Totalpg = document.getElementById("hdnTotalPages").value;
            var TotalImg = document.getElementById("hdnFileCount").value;
            var ItemCount = document.getElementById("hdnItemCount").value;
            if (parseInt(Totalpg) > parseInt(CurPageNo)) {
                document.getElementById("hdnCurPageNo").value = parseInt(document.getElementById("hdnCurPageNo").value) + 1;
                CurPageNo = document.getElementById("hdnCurPageNo").value;
            }

            if (parseInt(Totalpg) >= parseInt(CurPageNo)) {
                var MinNo = (parseInt(CurPageNo * ItemCount) - parseInt(ItemCount)) + 1;
                var MaxNo = parseInt(CurPageNo * ItemCount);
                var strLink = "";
                if (parseInt(CurPageNo) != 1) {
                    strLink = strLink + "<b><a href='javascript://' id='Previous' onclick='javascript:PreviousClick();' name='Previous'> << </a></b> &nbsp;";
                }
                if (parseInt(Totalpg) > parseInt(CurPageNo)) {
                    for (i = parseInt(MinNo); i <= parseInt(MaxNo); i++) {
                        var linkId = "BanImg" + i;
                        strLink = strLink + "<b><a href='javascript://'  onclick='javascript:loadImage(" + i + ");' id='" + linkId + "' name='" + linkId + "' >" + i + "</a></b> &nbsp;&nbsp;";
                    }
                }
                else {
                    for (i = parseInt(MinNo); i <= parseInt(TotalImg); i++) {
                        var linkId = "BanImg" + i;
                        strLink = strLink + "<b><a href='javascript://'  onclick='javascript:loadImage(" + i + ");' id='" + linkId + "' name='" + linkId + "' >" + i + "</a></b> &nbsp;&nbsp;";
                    }
                }
                if (parseInt(CurPageNo) != parseInt(Totalpg)) {
                    strLink = strLink + "<b><a href='javascript://' onclick='javascript:NextClick();' id='Next' name='Next'> >> </a></b> &nbsp;";
                }
                document.getElementById("divImgLink").innerHTML = strLink;
            }
            // document.getElementById("divImgLink").focus();        
        }

        function PreviousClick() {
            var CurPageNo = document.getElementById("hdnCurPageNo").value;
            var Totalpg = document.getElementById("hdnTotalPages").value;
            var TotalImg = document.getElementById("hdnFileCount").value;
            var ItemCount = document.getElementById("hdnItemCount").value;
            if (parseInt(CurPageNo) > 1) {
                document.getElementById("hdnCurPageNo").value = parseInt(document.getElementById("hdnCurPageNo").value) - 1;
                CurPageNo = document.getElementById("hdnCurPageNo").value;
            }

            if (parseInt(CurPageNo) >= 1) {
                var MinNo = (parseInt(CurPageNo * ItemCount) - parseInt(ItemCount)) + 1;
                var MaxNo = parseInt(CurPageNo * ItemCount);
                var strLink = "";
                if (parseInt(CurPageNo) != 1) {
                    strLink = strLink + "<b><a href='javascript://' id='Previous' onclick='javascript:PreviousClick();' name='Previous'> << </a></b> &nbsp;";
                }
                if (parseInt(Totalpg) == parseInt(CurPageNo)) {
                    for (i = parseInt(MinNo); i <= parseInt(TotalImg); i++) {
                        var linkId = "BanImg" + i;
                        strLink = strLink + "<b><a href='javascript://'  onclick='javascript:loadImage(" + i + ");' id='" + linkId + "' name='" + linkId + "' >" + i + "</a></b> &nbsp;&nbsp;";
                    }
                }
                else {
                    for (i = parseInt(MinNo); i <= parseInt(MaxNo); i++) {
                        var linkId = "BanImg" + i;
                        strLink = strLink + "<b><a href='javascript://'  onclick='javascript:loadImage(" + i + ");' id='" + linkId + "' name='" + linkId + "' >" + i + "</a></b> &nbsp;&nbsp;";
                    }
                }
                if (parseInt(CurPageNo) != parseInt(Totalpg)) {
                    strLink = strLink + "<b><a href='javascript://' onclick='javascript:NextClick();' id='Next' name='Next'> >> </a></b> &nbsp;";
                }
                document.getElementById("divImgLink").innerHTML = strLink;
            }

            // document.getElementById("divImgLink").focus();        
        }

        function openWindow() {
		var imgurl = document.getElementById("banner").src;
            imgurlSplit = imgurl.split('/');
            imgname = imgurlSplit[imgurlSplit.length - 1];

            var open_url;
            open_url = imgname.split('.')[0] + "_popup";
            winopenurl = "";

            if (parseInt(imgname.indexOf("_no")) == -1) {
                winopenurl = "http://content.icicidirect.com/mailimages/bannerimages/" + open_url + ".html";
            }


            if (winopenurl != "")
                window.open(winopenurl, 'ImgWindow', 'width=650,height=650,left=0,top=0,status,scrollbars,resizable');

        }

        
    </script>

    </div>
    
    <div>
        
<div id="dvFooter" class="footWrapper1" style="">
    <div class="footCont1">
        <ul>
            <li><a href="http://www.icicibank.com/" title="ICICI Bank" target="_blank" class="ibank">ICICI Bank</a>
            </li>
            <li><a href="http://www.icicisecurities.com/" title="ICICI Securities" target="_blank">
                ICICI Securities</a> </li>
            <li><a href="https://www.icicilombard.com/" title="ICICI Lombard General Insurance"
                target="_blank">ICICI Lombard General Insurance</a> </li>
            <li><a href="http://www.iciciprulife.com/public/default.htm" title="ICICI Prudential Life Insurance"
                target="_blank">ICICI Prudential Life Insurance</a> </li>
            <li><a href="http://www.icicipruamc.com/" title="ICICI Prudential AMC" target="_blank">
                ICICI Prudential AMC</a> </li>
            <li><a href="http://www.icicihomesearch.com/" title="ICICI Bank" target="_blank">ICICI
                Home Search</a> </li>
            <li style="border-right: 0px !important;"><a href="https://www.icicidirect.com/newsiteContent/PrivacyPolicy.asp"
                title="Privacy Policy" target="_blank">Privacy Policy</a> </li>
        </ul>
    </div>
</div>
<div class="footWrapper" style="margin-top: 0px;">
    <div class="footCont">
        <ul>
            <li style="width: 16%; font-weight: bold;">Home
                <hr style="width: 80%; opacity: 0.6; float: left;" />
                <ul class="footercontent">
                    <li style="width: 100%;"><a href="https://www.icicidirect.com/idirectcontent/Home/Home.aspx"
                        title="Overview">Overview</a> </li>
                    <li style="width: 100%;"><a href="https://www.icicidirect.com/idirectcontent/Home/UniqueAdvantages.aspx"
                        title="Why ICICIdirect.com">Why ICICIdirect.com</a> </li>
                    <li style="width: 100%;"><a href="https://www.icicidirect.com/idirectcontent/Home/Pricing.aspx"
                        title="Pricing">Pricing</a> </li>
                    <li style="width: 100%;"><a href="https://www.icicidirect.com/idirectcontent/Home/NRIHome.aspx"
                        title="NRI Service">NRI Service</a> </li>
                    <li style="width: 100%;"><a href="https://www.icicidirect.com/idirectcontent/Home/CorporateService.aspx"
                        title="Corporate Services">Corporate Services</a> </li>
                    <li style="width: 100%;"><a href="https://www.icicidirect.com/idirectcontent/Home/Businesspartner.aspx"
                        title="Business Partner">Business Partner</a> </li>
                    <li style="width: 100%;"><a href="https://www.isecpwm.com/" title="Wealth Management"
                        target="_blank">Wealth Management</a> </li>
                    <li style="text-align: left !important; width: 100%;"><a href="https://www.icicidirect.com/idirectcontent/Home/InvAdvSvc.aspx"
                        title="Investment Advisory Service">Investment Advisory<br />
                        Service</a> </li>
                </ul>
            </li>
            <li style="width: 16%; font-weight: bold;">Product &amp; Services
                <hr style="width: 80%; opacity: 0.6; float: left;" />
                <ul class="footercontent">
                    <li style="width: 100%;"><a href="https://www.icicidirect.com/idirectcontent/ProductService/PSOverview.aspx?Overview"
                        title="Overview">Overview</a> </li>
                    <li style="width: 100%;"><a href="https://www.icicidirect.com/idirectcontent/ProductService/ProductService.aspx?Equity"
                        title="Equity">Equity</a> </li>
                    <li style="width: 100%;"><a href="https://www.icicidirect.com/idirectcontent/ProductService/ProductService.aspx?Derivatives"
                        title="Derivatives">Derivatives</a> </li>
                    <li style="width: 100%;"><a href="https://www.icicidirect.com/idirectcontent/ProductService/ProductService.aspx?Currency"
                        title="Currency">Currency</a> </li>
                    <li style="width: 100%;"><a href="https://www.icicidirect.com/idirectcontent/ProductService/ProductService.aspx?MutualFunds"
                        title="Mutual Funds">Mutual Funds</a> </li>
                    <li style="width: 100%;"><a href="https://www.icicidirect.com/idirectcontent/ProductService/ProductService.aspx?ETF"
                        title="ETF">ETF</a> </li>
                    <li style="width: 100%;"><a href="https://www.icicidirect.com/idirectcontent/ProductService/ProductService.aspx?Insurance"
                        title="Life Insurance">Life Insurance</a> </li>
                    <li style="width: 100%;"><a href="https://www.icicidirect.com/idirectcontent/ProductService/ProductService.aspx?Insurance"
                        title="General Insurance">General Insurance</a> </li>
                    <li style="width: 100%;"><a href="https://www.icicidirect.com/idirectcontent/ProductService/ProductService.aspx?FDBonds"
                        title="Fixed Deposits / Bonds">Fixed Deposits / Bonds</a> </li>
                    <li style="width: 100%;"><a href="https://www.icicidirect.com/idirectcontent/ProductService/ProductService.aspx?Loans"
                        title="Loans">Loans</a> </li>
                    <li style="width: 100%;"><a href="https://www.icicidirect.com/idirectcontent/ProductService/ProductService.aspx?Tax"
                        title="Tax">Tax</a> </li>
                    <li style="width: 100%;"><a href="https://www.icicidirect.com/idirectcontent/ProductService/ProductService.aspx?eLocker"
                        title="eLocker">eLocker</a> </li>
                    <li style="width: 100%;"><a href="https://www.icicidirect.com/idirectcontent/ProductService/ProductService.aspx?NPS"
                        title="NPS">NPS</a> </li>
                </ul>
            </li>
            <li style="width: 16%; font-weight: bold;">
                <div style="width: 100%; float: left;">
                    Markets</div>
                <hr style="width: 80%; opacity: 0.6; float: left;" />
                <ul class="footercontent">
                    <li style="width: 100%;"><a href="#" onclick="sendto($('#LiOverview'),'https://www.icicidirect.com/idirectcontent/Markets/MarketOverview.aspx')"
                        title="Overview">Overview</a> </li>
                    <li style="width: 100%;"><a href="#" onclick="$('#dvmktmain').load('https://www.icicidirect.com/idirectcontent/Markets/Common.aspx?1&Page=News');"
                        title="News">News</a> </li>
                    <li style="width: 100%;"><a href="#" onclick="$('#dvmktmain').load('https://www.icicidirect.com/idirectcontent/Markets/Common.aspx?p=2&Page=Indices');"
                        title="Indices">Indices</a> </li>
                    <li style="width: 100%;"><a href="#" onclick="$('#dvmktmain').load('https://www.icicidirect.com/idirectcontent/Markets/Common.aspx?p=3&Page=World');"
                        title="World Indices">World Indices</a> </li>
                    <li style="width: 100%;"><a href="#" onclick="$('#dvmktmain').load('https://www.icicidirect.com/idirectcontent/Markets/Common.aspx?p=4&Page=MarketStats');"
                        title="Market Stats">Market Stats</a> </li>
                    <li style="width: 100%;"><a href="#" onclick="$('#dvmktmain').load('https://www.icicidirect.com/idirectcontent/Markets/Common.aspx?p=5&Page=EOD');"
                        title="End of Day Reports">End of Day Reports</a> </li>
                </ul>
            </li>
            <li style="width: 16%; font-weight: bold;">Research
                <hr style="width: 80%; opacity: 0.6; float: left;" />
                <ul class="footercontent">
                    <li style="width: 100%;"><a href="https://www.icicidirect.com/idirectcontent/Research/ResearchOverview.aspx"
                        title="Equity">Equity</a> </li>
                    <li style="width: 100%;"><a href="https://www.icicidirect.com/idirectcontent/Research/TechnicalAnalysis.aspx"
                        title="Technical Analysis &amp; Charts">Technical Analysis
                        <br />
                        &amp; Charts</a> </li>
                    <li style="width: 100%;"><a href="https://www.icicidirect.com/idirectcontent/Research/MutualFunds.aspx"
                        title="Mutual Funds">Mutual Funds</a> </li>
                    <li style="width: 100%;"><a href="https://www.icicidirect.com/idirectcontent/Research/RIBI.aspx"
                        title="Mutual Funds">Retail Investor Behaviour Index (RIBI)</a> </li>
                </ul>
            </li>
            <li style="width: 16%; font-weight: bold;">Financial Learning
                <hr style="width: 80%; opacity: 0.6; float: left;" />
                <ul class="footercontent">
                    <li style="width: 100%;"><a href="https://secure.icicidirect.com/IDirectTrading/Trading/TradingPage.aspx?tradeh-LMSHome&lmsval=H"
                        title="My Account">My Account</a> </li>
                    <li style="width: 100%;"><a href="https://www.icicidirect.com/idirectcontent/FinancialEducation/ClassroomOfProfit.aspx?AboutUs"
                        title="About Us">About Us</a> </li>
                    <li style="width: 100%;"><a href="https://secure.icicidirect.com/IDirectTrading/Trading/TradingPage.aspx?tradeh-LMSHome&lmsval=C"
                        title="Classroom Programmes">Classroom Programmes</a> </li>
                    <li style="width: 100%;"><a href="https://secure.icicidirect.com/IDirectTrading/Trading/TradingPage.aspx?tradeh-LMSHome&lmsval=E"
                        title="eLearn">eLearn</a> </li>
                    <li style="width: 100%;"><a href="http://virtualstocks.icicidirect.com/Gamesite/customer/login.aspx"
                        target="_blank" title="Virtual Trading">Virtual Trading</a> </li>
                    <li style="width: 100%;"><a href="https://www.icicidirect.com/idirectcontent/FinancialEducation/ClassroomOfProfit.aspx?CertiPartners"
                        title="Certification Partners">Certification Partners</a> </li>
                    <li style="width: 100%;"><a href="#" onclick="javascript: window.open('https://secure.icicidirect.com/IDirectTrading/Trading/EduLead.aspx', 'viewcalen', 'toolbar=no,resizable=yes,scrollbars=yes,width=700,height=500');">
                        Contact Us</a> </li>
                </ul>
            </li>
            <li style="width: 16%; font-weight: bold;">Customer Service
                <hr style="width: 80%; opacity: 0.6; float: left;" />
                <ul class="footercontent">
                    <li style="width: 100%;"><a href="#" title="Overview" onclick="window.location.href='https://secure.icicidirect.com/IDirectTrading/customer/customeroverview.aspx';">
                        Overview</a> </li>
                    <li style="width: 100%;"><a href="#" title="My Account" onclick="window.location.href='https://secure.icicidirect.com/IDirectTrading/Trading/TradingPage.aspx?customer-myaccount'">
                        My Account</a> </li>
                    <li style="width: 100%;"><a href="#" title="Contact Us" onclick="window.open('https://www.icicidirect.com/cuscarenos.htm','Call_Center_Number','scrollbars=yes,width=740,height=637')">
                        Contact Us</a> </li>
                    <li style="width: 100%;"><a href="#" title="Locate Branch" onclick="window.location.href='https://secure.icicidirect.com/IDirectTrading/customer/CustomerOverview.aspx?filename=BranchLocator';">
                        Locate Branch</a> </li>
                    <li style="width: 100%;"><a href="#" title="iCommunity" onclick="window.location.href = 'https://secure.icicidirect.com/IDirectTrading/customer/CustomerOverview.aspx?filename=community';">
                        iCommunity</a> </li>
                </ul>
                <div style="width: 100%; float: left; margin-top: 20px;">
                    Open an Account</div>
                <hr style="width: 80%; opacity: 0.6; float: left;" />
                <ul class="footercontent">
                    <li style="width: 100%;"><a href="https://secure.icicidirect.com/IDirectTrading/customer/CustomerOverview.aspx?filename=OpenAcc"
                        title="Open an Account">Open an Account</a> </li>
                </ul>
                <div style="width: 100%; float: left; margin-top: 20px;">
                    Site Map</div>
                <hr style="width: 80%; opacity: 0.6; float: left;" />
                <ul class="footercontent">
                    <li style="width: 100%;"><a href="https://www.icicidirect.com/idirectcontent/sitemap.aspx"
                        title="Site Map">Site Map</a> </li>
                </ul>
            </li>
        </ul>
        <div style="width: 23%; float: right; border: 0px solid #fff; position: ; margin-top: -20px;
            color: #fff;">
            Powered By&nbsp;&nbsp;<strong style="font-size: 16px; font-style: italic; font-family: arial;">ICICI
                Securities Ltd.</strong>
        </div>
    </div>
    <div class="footCont1" style="color: #fff; line-height: 18px; font-size: 11px;">
        <strong style="text-decoration: underline;">Attention Investors</strong> <strong>:</strong>
        Prevent unauthorized transactions in your account &minus;&gt; Update your mobile
        numbers/email IDs with your stock brokers. Receive information of your transactions
        directly from Exchange on your mobile/email at the end of the day..... Issued in
        the interest of Investors. (Ref NSE : Circular No.: NSE/INSP/27346, BSE : Notice
        20140822-30).
        <div style="border-top: 1px solid #fff; opacity: 0.3; float: left; width: 100%; margin-top: 10px;
            margin-bottom: 0px;">
        </div>
    </div>
    <div class="footCont1" style="color: #fff; line-height: 18px; font-size: 11px;">
        <strong style="text-decoration: underline;">ICICI Securities Limited </strong><strong>
            :</strong><br /> <strong style="text-decoration: underline;">Registered office:</strong> ICICI Centre, H.T.Parekh Marg, Churchgate, Mumbai
        - 400 020 CIN: L67120MH1995PLC086241 Tel: (91 22) 2288 2460/70 Fax: (91 22) 2288
        2445<br />
      
        <strong style="text-decoration: underline;">For any queries or grievances</strong><strong>
            :</strong> <a href="mailto:headservicequality@icicidirect.com" style="text-decoration: underline; color: #fff;">Mr. Abhishake Mathur</a>
        <div style="border-top: 1px solid #fff; opacity: 0.3; float: left; width: 100%; margin-top: 10px;
            margin-bottom: 0px;">
        </div>
    </div>
    <div style="text-align: center !important; width: 980px; margin: 0 auto; color: #fff;
        line-height: 20px; font-size: 11px;">
        ICICIdirect.com is a part of ICICI Securities and offers retail trading and investment
        services.<br />
        Member of National Stock Exchange of India, BSE Ltd & Metropolitan Stock Exchange SEBI Registration number INZ000183631<br />
        ICICI Securities Limited acts as a Composite Corporate Agent of ICICI Prudential
        Life Insurance Company Ltd and ICICI Lombard General Insurance Company Ltd having
        registration no. CA0113 valid till 31-Mar-2022.<br />
        Copyright&copy; 2015 . All rights Reserved. ICICI Securities Ltd. &reg;trademark
        registration in respect of the concerned mark has been applied for by ICICI Bank
        Limited<br />
        The site is best viewed with Internet Explorer 7.0 or above and screen resolution
        1024 X 768.
    </div>
</div>

    </div>
    
    <input type="hidden" name="ctl00$hidPage" id="hidPage" value="https://secure.icicidirect.com/IDirectTrading" />
    <input type="hidden" name="ctl00$hidContent" id="hidContent" value="https://www.icicidirect.com/idirectcontent" />
    
<script>$("#dvDate").html("<li class='last' style='padding:5px;float:right;'>Jul 23, 2019, 02:29 IST</li>"); </script><script> $('#lihome').addClass('active');</script></form>
    <form name="GooleSearch">
    <input type="hidden" id="normal" name="normal" />
    <input type="hidden" id="loginSecureStatus" name="loginSecureStatus" value="0">
    </form>
</body>
</html>
<div id="dvmnutile" style="display: none;">
    <ul>        
        <li><a width='100%' href='#' onclick="window.location.href ='https://secure.icicidirect.com/IDirectTrading/lbs/lbstrading.aspx'">
            Low Bandwidth Site</a></li>
        <li><a width='100%' href='#' onclick="window.open('https://www.icicidirect.com/cuscarenos.htm','Call_Center_Number','scrollbars=yes,width=740,height=637')">
            Customer Care / </a><a href="#" onclick="window.open('https://www.icicidirect.com/indexfaq.asp#a30','Call_Center_Number','scrollbars=yes,width=818,height=400')">
                CallNtrade</a></li>
        <li><a width='100%' href='#' onclick="window.location.href='https://secure.icicidirect.com/IDirectTrading/customer/CustomerOverview.aspx?filename=BranchLocator'">
            ICICIdirect Superstore</a></li>
        <li><a width='100%' href='#' onclick="myFunction()">
            Instahelp / </a><a href="#" onclick="window.open('https://www.icicidirect.com/indexfaq.asp','IndexFaq','scrollbars=yes,width=818,height=660,screenX=100,screenY=0,left=100,top=0')">
                FAQs</a></li>
        <li><a width='100%' href='#' onclick="window.location.href = 'https://secure.icicidirect.com/IDirectTrading/customer/CustomerOverview.aspx?filename=downloadform'">Download Forms</a></li>
        <li><a width='100%' href='#' onclick="window.location.href = 'https://secure.icicidirect.com/IDirectTrading/customer/CustomerOverview.aspx?filename=community'">
            iCommunity</a></li>
            
         <li><a width='100%' href='#' onclick="window.open('https://traderweb.icicidirect.com/login.aspx')">
            Trade Racer Web</a><font color="#990000"> - Free</font></li>           
         <li><a width='100%' href='#' onclick="window.location.href='https://www.icicidirect.com/idirectcontent/ProductService/ProductService.aspx?TradeRacer';">
            Trade Racer(Desktop App)</a><font color="#990000"> - Free</font></li>        
        <li>
            <div style="float: left">
                <a href='#'>Mobile Application</a></div>
            <div style="float: left; width: 90%; margin-top: 5px;">
                <div style="float: left; width: 20px;">
                    <a href="#" class="social" style="background: url('https://www.icicidirect.com/idirectcontent/basemasterpage/images/homepage_icon.png')  no-repeat scroll -276px -5px transparent;" onclick="window.open('https://play.google.com/store/apps/details?id=com.icicisecurity')"
                        title="Android"></a></div>
                <div style="float: left; width: 20px; margin-left: 10px;">
                    <a href="#" class="social" onclick="window.open('https://itunes.apple.com/in/app/icicidirect.com/id594421884?mt=8&ign-mpt=uo%3D2')"
                        style="background: url('https://www.icicidirect.com/idirectcontent/basemasterpage/images/homepage_icon.png')  no-repeat scroll -306px -5px transparent;"
                        title="iPhone">
                        </a></div>
                <div style="float: left; width: 20px; margin-left: 10px;">
                    <a href="#" class="social" onclick="window.open('http://apps.microsoft.com/windows/en-in/app/icicidirect/fec250e6-74b4-4cfe-885b-58327ee5b778')"
                        style="background: url('https://www.icicidirect.com/idirectcontent/basemasterpage/images/homepage_icon.png')  no-repeat scroll -336px -5px transparent;"
                        title="Windows">
                        </a></div>
            </div>
        </li>
        <li>
            <div style="float: left">
                <a href='#'>Join us on</a></div>
            <div style="float: left; width: 90%; margin-top: 5px;">
                <div style="float: left; width: 20px;">
                    <a href="#" class="social" style="background: url('https://www.icicidirect.com/idirectcontent/basemasterpage/images/homepage_icon.png')  no-repeat scroll -366px -5px transparent;" onclick="window.open('http://www.youtube.com/user/icicisecuritiesltd')"
                        title="youtube">
                        </a></div>
                <div style="float: left; width: 20px; margin-left: 10px;">
                    <a href="#" class="social" style="background: url('https://www.icicidirect.com/idirectcontent/basemasterpage/images/homepage_icon.png')  no-repeat scroll -396px -5px transparent;" onclick="window.open('https://www.facebook.com/icicidirect')" title="facebook">
                        </a></div>
                <div style="float: left; width: 20px; margin-left: 10px;">
                    <a href="#" class="social" style="background: url('https://www.icicidirect.com/idirectcontent/basemasterpage/images/homepage_icon.png')  no-repeat scroll -426px -5px transparent;" onclick="window.open('https://twitter.com/icici_direct')" title="Twitter">
                        </a></div>
                <div style="float: left; width: 20px; margin-left: 10px;">
                    <a href="#" class="social" style="background: url('https://www.icicidirect.com/idirectcontent/basemasterpage/images/homepage_icon.png')  no-repeat scroll -456px -5px transparent;" onclick="window.open('https://plus.google.com/107638133506776009897')"
                        title="googleplus">
                        </a></div>
            </div>
        </li>       
    </ul>
</div>
<script type="text/javascript">
  

</script>
