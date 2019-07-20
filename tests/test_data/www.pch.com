<!DOCTYPE html >
<!--[if lt IE 7 ]> <html class="ie6"> <![endif]-->
<!--[if IE 7 ]>    <html class="ie7"> <![endif]-->
<!--[if IE 8 ]>    <html class="ie8"> <![endif]-->
<!--[if IE 9 ]>    <html class="ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html class=""> <!--<![endif]-->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=700">
<title>Come back soon to PCH.com!</title>
<link rel="stylesheet" type="text/css" href="./assets/reset.css" />
<style type="text/css">
html, body{
	background: #fff ;

}

body {
	font-family: "HelveticaNeue-Light", "Helvetica Neue Light", "Helvetica Neue", Helvetica, Arial, "Lucida Grande", sans-serif;
	font-weight: 300;
	font-size: 12px;
	color: #333;
}

#wrap{
	width: 700px;
	margin: 0 auto;
	padding: 25px;
}

h1{
	margin: 10px 10px 65px;
}

h2, h3, p{
	text-align:center;
}

h2{
	color: #F9A538;
	text-shadow: 2px 2px 2px rgba(150, 150, 150, 1);
	font-size: 50px;
	margin-bottom: 25px;
	text-transform: uppercase;
	font-weight: bold;
}

h3{
	font-size: 25px;
	margin-bottom: 10px;
}

p{
	position: absolute;
	bottom: 10px;
	width: 100%; /* need witdh since its abs*/
}
</style>
</head>
<body>
<h1><img src="http://video.pch.com/general/geoblock/assets/PCHComLogo.png" width="250" height="77"></h1>
<div id="wrap">

	<h2>We appreciate your interest in Publishers Clearing House. </h2>
	<h3>Unfortunately at this time we are unable to process international online transactions. Please keep in mind that under the official rules for Publishers Clearing House there are geographic limitations to entry into our promotions, contests and giveaways.</h2>
</div>
<center>
<script type="application/javascript">
  function getIP(json) {
    document.write("Your public IP address is: ", json.ip);
  }
</script>

<script type="application/javascript" src="https://api.ipify.org?format=jsonp&callback=getIP"></script>
</center>
<p>&copy; <script>document.write(new Date().getFullYear())</script>&nbsp;Publishers Clearing House</p>
</body>
</html>
