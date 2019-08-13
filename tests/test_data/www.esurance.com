<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Esurance | Auto Insurance Quotes</title>

<style>
body{margin:0;}
header, footer{background:#170939;}
header{height:100px;}
footer{height:180px;bottom: 0; position: fixed; width:100%;}
p{font-size: 13px; line-height:20px; font-weight:400; font-family:Verdana,Geneva,sans-serif; color:#585149; margin-top:0;}
a{color:#69f;text-decoration:none;}
.wrapper{margin:0 auto; max-width:1000px; padding: 0 25px;}

.header-left {float:left;}
.header-left img {margin-top:30px;}
.header-right {float:right;}
p.cusomter-service{color:#fff; margin-bottom:0;margin-top:25px;}

.oh-bummer {margin: 40px 0 30px 0; }
footer p {color:#969088; font-size:10px; line-height:17px; max-width:700px; padding-top:40px; }


	
</style>

</head>

<body>
	

<header>
<div class="wrapper">
	<div class="header-left">
		<img src="failover/geo/img/logo-esu-as-308.png" alt="Esurance car insurance" width="154" height="35" title="Esurance car insurance">
	</div>
	<div class="header-right">
		<p class="cusomter-service">customer service</p>
		<p><a class="call" href="tel:1800-378-7262">1-800-378-7262</a></p>
    </div>
</div>
</header>

<div class="wrapper">
	<img class="oh-bummer" src="failover/geo/img/copy-oh-bummer-190.png" alt="oh bummer" width="190" height="28">
	<p>Looks like Esurance doesn't do business in your area yet.</p>
	<p>Right now, we offer products in the U.S., Canada, and Mexico. If you're in one of those areas and feel you're getting this message in 	error, give us a call at 1-800-ESURANCE (<a href="tel:1-800-378-7262" class="tel">1-800-378-7262</a>).</p>
		
</div>

<footer>
<div class="wrapper">
	<p>&copy; <span id="theYear"></span> Esurance Insurance Services, Inc. All rights reserved. CA License #0G87829. Policies underwritten by Esurance Insurance Company and its affiliates. San Francisco, CA.</p>
</div>
</footer>


<script>
var currentTime = new Date();
var year = currentTime.getFullYear();
document.getElementById("theYear").textContent = year;
</script>

</body>
</html>
