<!DOCTYPE html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<meta name="keywords" content="yugioh,Yu-Gi-Oh,cards,Yu-Gi-Oh!,YU-GI-OH,KONAMI,Recreation,Collectible">
	<meta name="description" content="YU-GI-OH! Trading Card Game - Official Web Site-.Entrance.">
	<title>www.yugioh-card.com</title>
	<link rel="shortcut icon" href="yugioh.ico">
	<style type="text/css">
		body{
			background: #111;
			color: #fff;
			font-size: 100%;
			margin: auto;
			padding: 0 0 .5em;
			text-align: center;
			font-family: "Arial";
			min-width: 980px;
		}
		div{margin: auto;}
		a{text-decoration: none;}
		a img{border: none;}
		a:hover{
			-webkit-transition: 0.5s;
			-moz-transition: 0.5s;
			-o-transition: 0.5s;
			transition: 0.5s;
		}
			header{text-align: left;}
				header img{
					width: 130px;
					vertical-align: bottom;
				}
				header h1{
					margin: 0 10px;
					font-size: 100%;
					float: right;
					line-height: 37px;
				}
		#map_area{
			background: #2d3233;
			background: -moz-linear-gradient(top,  #2d3233 -1%, #000000 100%);
			background: -webkit-linear-gradient(top,  #2d3233 -1%,#000000 100%);
			background: linear-gradient(to bottom,  #2d3233 -1%,#000000 100%);
			filter: progid: DXImageTransform.Microsoft.gradient( startColorstr='#2d3233', endColorstr='#000000',GradientType=0 );
			padding: 2em 0 0;
			text-align: center;
		}

			#map{
				margin: auto;
				width: 914px;
				height: 410px;
				background: url(img/map_base.gif) no-repeat;
				position: relative;
			}
				a#map_logo{
					position: absolute;
					left: 340px;
					top: 310px;
				}
				#map div{
					position: absolute;
					text-align: left;
				}
				div#btn_asia{top: 178px; left: 360px;width: 110px;z-index: 10;}
				div#btn_ocea{top: 257px; left: 435px;width: 110px;z-index: 11;}
				div#btn_eurp{top: 96px; left: 115px;width: 110px;z-index: 12;}
				div#btn_afrc{top: 212px; left: 166px;width: 110px;z-index: 13;}
				div#btn_n_am{top: 122px; left: 603px;width: 110px;z-index: 14;}
				div#btn_l_am{top: 245px; left: 690px;width: 136px;z-index: 15;}
				#map div a{
					background: rgba(0,0,0,0.5);
					padding: .3em .5em .25em;
					display: block;
					font-weight: bold;
					color: #fff;
					border: 1px solid #909090;
					line-height: 1em;
					text-align: center;
					font-size: 90%;
					box-shadow: 1px 1px 2px 0 rgba(0,0,0,0.8);
				}
				#map div a:hover{border: 1px solid #ffff00;}
				#map div.now a{
					border: 1px solid #ffff00;
					box-shadow: 0px 0px 5px rgba(250,250,250,0.7);
				}

		#list_area{
			background: #000;
			padding: 0 0 1em;
			text-align: left;
		}
			#list_area>*{
				width: 940px;
				margin: auto;
			}
			#list_area a{
				color: #ed4200;
				font-size: 80%;
			}
				#list_area table th{
					vertical-align: bottom;
					padding-bottom: 4px;
					border-bottom: 1px solid #333;
					line-height: 1em;
				}
				#list_area table td{vertical-align: top;}
				#list_area table td a{padding: 1% 0;}
				#list_area table a:hover{
					color: #eeee00;
					text-decoration: underline;
				}
			#list_area div h2{
				margin: 0px;
				color: #eee;
				text-align: left;
				font-size: 120%;
				padding: 5px 0;
				border-bottom: 1px solid #333;
			}
				#list_area div{min-height: 310px;}
					#list_area div a{
						display: inline-block;
						margin-top: 10px;
						margin-right: 3.2px;
						text-align: center;
						font-size: 70%;
					}
					#list_area div a:hover{color: #ee0;}
					#list_area div a img{
						padding: 1px;
						background: #000;
						border-style: solid;
						border-width: 1px;
						border-color: #ccc #777 #666 #aaa;
						background-position: center center;
						background-repeat: no-repeat;
					}
					#list_area div a:hover img{border: 1px solid #ee0;}
					#list_area div h2 a.back{
						float: right;
						height: 20px;
						width: 20px;
						background: url(img/back.gif);
						margin: auto;
					}
					#list_area div h2 a.back:hover{background-position: -20px 0px;}
		footer{color: #777;}
			footer div{
				background: #000;
				padding: 1em 0;
				color: #aaa;
				margin-bottom: .5em;
			}
			
	#notice{
		background: #000;
		padding: 2em 0;
	}
		a.notice{
			display: inline-block;
			color: #ffe400;
			border: 1px solid #ffe400;
			position: relative;
			font-size: .9em;
			padding: .2em 1em .2em 2.5em;
			border-radius: .3em;
		}
			a.notice::after{
				position: absolute;
				display: block;
				color: #000;
				content: "!";
				top: .2em;
				left: 1em;
				font-weight: bold;
			}
			a.notice::before{
				position: absolute;
				top: -.8em;
				left: .5em;
				content: "";
				display: block;
				height: 0;
				width: 0;
				border-width: 1em .65em;
				border-color: transparent transparent #ffe400 transparent;
				border-style: solid;
			}
		a.notice:hover{color: #fff;border-color:#fff;}
		a.notice:hover::before{border-color: transparent transparent #fff transparent;transition: .2s;}
	</style>

<!-- Google Tag Manager --><script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({"gtm.start": new Date().getTime(),event:"gtm.js"});var f=d.getElementsByTagName(s)[0], j=d.createElement(s),dl=l!="dataLayer"?"&l="+l:"";j.async=true;j.src= "https://www.googletagmanager.com/gtm.js?id="+i+dl;f.parentNode.insertBefore(j,f); })(window,document,"script","dataLayer","GTM-PWR3GWF");</script> <!-- End Google Tag Manager --></head>

<body>

	<header><div>
		<h1>www.yugioh-card.com</h1>
		<a href="https: //www.konami.com/games" id="konami_logo"><img src="/ci/logo/konami_logo_normal.png" alt="KONAMI"></a>
	</div></header>

	<div id="map_area">
		<div id="map">
			<div id="btn_asia"><a href="?Asia">Asia</a></div>
			<div id="btn_ocea"><a href="?Oceania">Oceania</a></div>
			<div id="btn_eurp"><a href="?Europe">Europe</a></div>
			<div id="btn_afrc"><a href="?Africa">Africa</a></div>
			<div id="btn_n_am"><a href="?North_America">North America</a></div>
			<div id="btn_l_am"><a href="?Latin_America_and_the_Caribbean">Latin America<br />and the Caribbean</a></div>
			<a href="/" id="map_logo"><img src="img/map_logo.jpg" alt="www.yugioh-card.com" /></a>
		</div><!--#map-->
	</div><!--#maparea-->
	

	<div id="notice">
		</div>

	<div id="list_area">
		<table cellspacing="5">
			<tr>
				<th>		Asia</th>
				<th>		Oceania</th>
				<th>		North America</th>
				<th>		Latin America<br />and the Caribbean</th>
				<th colspan=2>	Europe</th>
				<th>		Africa</th>
			</tr>

			<tr>
				<td>
					<a href="hk/">Hong Kong</a><br />
					<a href="japan/">Japan</a><br />
					<a href="http://www.yugioh.co.kr/">Korea</a><br />
					<a href="my/">Malaysia</a><br />
					<a href="ph/">Philippines</a><br />
					<a href="sg/">Singapore</a><br />
					<a href="tw/">Taiwan</a><br />
					<a href="thai/">Thailand</a><br />
				</td>

				<td>
					<a href="oc/">Australia</a><br />
					<a href="oc/">New Zealand</a><br />
				</td>

				<td>
					<a href="en/">Canada</a><br />
					<a href="en/">United States</a><br />
				</td>

				<td>
					<a href="lat-am/">Argentina</a><br />
					<a href="lat-am/">Bolivia</a><br />
					<a href="en/">Brazil</a><br />
					<a href="lat-am/">Chile </a><br />
					<a href="lat-am/">Colombia</a><br />
					<a href="lat-am/">Costa Rica</a><br />
					<a href="lat-am/">Ecuador</a><br />
					<a href="lat-am/">Guatemala</a><br />
					<a href="lat-am/">Mexico</a><br />
					<a href="lat-am/">Nicaragua</a><br />
					<a href="lat-am/">Panama</a><br />
					<a href="lat-am/">Peru </a><br />
					<a href="lat-am/">Venezuela</a><br />
				</td>

				<td>
					<a href="de/">Austria</a><br />

					<a href="fr/">Belgium</a><br />

					<a href="uk/">Bulgaria</a><br />

					<a href="uk/">Czech Republic</a><br />

					<a href="uk/">Denmark</a><br />

					<a href="uk/">Estonia</a><br />

					<a href="uk/">Finland</a><br />

					<a href="fr/">France</a><br />

					<a href="de/">Germany</a><br />

					<a href="uk/">Greece</a><br />

					<a href="uk/">Hungary</a><br />

					<a href="uk/">Ireland</a><br />

					<a href="it/">Italy</a><br />

					<a href="uk/">Israel</a><br />

					<a href="uk/">Latvia</a><br />

				</td>
				<td>					<a href="uk/">Lithuania</a><br />

					<a href="de/">Luxembourg</a><br />

					<a href="uk/">Malta</a><br />

					<a href="uk/">Netherlands</a><br />

					<a href="uk/">Norway</a><br />

					<a href="uk/">Poland</a><br />

					<a href="uk/">Portugal</a><br />

					<a href="uk/">Slovakia</a><br />

					<a href="uk/">Slovenia</a><br />

					<a href="es/">Spain</a><br />

					<a href="uk/">Sweden</a><br />

					<a href="de/">Switzerland</a><br />

					<a href="uk/">Turkey</a><br />

					<a href="uk/">United Kingdom</a><br />

				</td>

				<td>
					<a href="uk/">Cyprus</a><br />
					<a href="uk/">South Africa</a><br />
				</td>

			</tr>

		</table>

	</div><!--#list_area-->

	<footer>
		<div>
			<small>
			<img src="data: image/gif;base64,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" alt="">
			</small>
		</div>
		<small>&copy;2019 Konami Digital Entertainment</small>
	</footer>

</body>
</html>
