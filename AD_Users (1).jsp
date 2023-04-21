<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<%@ page
	import="java.io.*,java.util.*,java.sql.*,java.text.SimpleDateFormat"%>
<%@ page import="connection.*"%>
<!--
	Author: W3layouts
	Author URL: http://w3layouts.com
	License: Creative Commons Attribution 3.0 Unported
	License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html lang="en">
<head>
<title>BIDDING</title>
<!-- Meta tag Keywords -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Best Floor web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript">
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
function hideURLbar(){ window.scrollTo(0,1); } 
</script>
<!--// Meta tag Keywords -->
<!-- css files -->
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/W3.css">
<!-- Bootstrap-Core-CSS -->
<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
<!-- Style-CSS -->
<link rel="stylesheet" href="css/font-awesome.css">
<!-- Font-Awesome-Icons-CSS -->
<link rel="stylesheet" href="css/owl.carousel.css" type="text/css"
	media="all">
<link rel="stylesheet" href="css/chocolat.css" type="text/css"
	media="screen">
<!-- //css files -->
<!-- online-fonts -->
<link
	href="//fonts.googleapis.com/css?family=Ubuntu+Condensed&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext"
	rel="stylesheet">
<link
	href="//fonts.googleapis.com/css?family=Alegreya+Sans:100,100i,300,300i,400,400i,500,500i,700,700i,800,800i,900,900i&amp;subset=latin-ext,vietnamese"
	rel="stylesheet">
<!-- //online-fonts -->
<style>
h5 {
    font-size: 2.5em;
    color: #f8ce06;
    text-align: center;
    text-transform: uppercase;
    font-style: italic;
}
</style>
</head>
<body>
	<div class="main-agile">
		<!-- banner -->

		<!-- //banner -->
	</div>
	<!-- header -->
	<div class="header">
		<nav class="navbar navbar-default">
			<div class="navbar-header navbar-left">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<h1>
					<a class="navbar-brand" href="index.jsp">Product <span>B</span>idding
					</a>
				</h1>
			</div>
			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse navbar-right"
				id="bs-example-navbar-collapse-1">
				<nav class="cl-effect-6" id="cl-effect-6">
					<ul class="nav navbar-nav">
						<jsp:include page="WEB-INF/include/Menu.jsp"></jsp:include>
					</ul>
				</nav>
			</div>
		</nav>
		<div class="w3l-phone">

			<div class="w3l-sub-right"></div>
		</div>
		<div class="clearfix"></div>
	</div>
	<!-- //header -->

	<!-- services -->
	<!-- ====================================================================================================================================== -->
	<div class="services jarallax" id="services">
	<h5>Services</h5>
		<div style="height: auto; padding-top: 1em;">
			<div class="w3-container">
				<table class="w3-table-all w3-bordered">
					<thead style="color: black;">
						<tr class="w3-brown" style="font-size: 1.2em; font-weight: bold;">
							<th>Sno</th>
							<th>ID</th>
							<th>Name</th>
							<th>Email</th>
							<th>Phone</th>
							<th>Address</th>
							<th>Role</th>
						</tr>
					</thead>
					<tbody>
						<%
							ResultSet rs = null;
							Statement st = null;
							try {
								String qry = "SELECT * FROM 1_users";
								rs = DB.getConnection().createStatement().executeQuery(qry);
								int k = 1;
								while (rs.next()) {
						%>
						<tr style="font-size:1.2em;font-weight: bold;">
							<td>
								<%
									out.print(k);
								%>
							</td>
							<td><%=rs.getInt(1)%></td>
							<td><%=rs.getString(2)%></td>
							<td><%=rs.getString(3)%></td>
							<td><%=rs.getString(5)%></td>
							<td><%=rs.getString(6)%></td>
							<td><%=rs.getString(7)%></td>
						</tr>
						<%
							k++;
								}
							} catch (Exception e) {
								e.printStackTrace();
							}
						%>
					</tbody>
				</table>
			</div>
		</div>
		<!-- ====================================================================================================================================== -->
	</div>

	<div class="clearfix"></div>

	<!-- //services -->
	<!-- Footer -->
	<div class="footer w3ls">
		<div class="container">
			<!-- <div class="w3ls-social-icons-2">
				<a class="facebook" href="#"><i class="fa fa-facebook"></i></a> <a
					class="twitter" href="#"><i class="fa fa-twitter"></i></a> <a
					class="pinterest" href="#"><i class="fa fa-google-plus"></i></a> <a
					class="linkedin" href="#"><i class="fa fa-linkedin"></i></a> <a
					class="tumblr" href="#"><i class="fa fa-tumblr"></i></a>
			</div> -->
		</div>
	</div>
	<div class="copyrights">
		<div class="logo-fo">
			<h2>
				<a href="index.html">Best Auction</a>
			</h2>
		</div>
		<div class="copy-w3l">
			<p>
				&copy; BIDDING
			</p>
		</div>
		<p class="w3l-p-last">
			<span>Address:</span> NA
		</p>
		<div class="clearfix"></div>
	</div>
	<!-- //Footer -->



	<!-- js-scripts -->
	<!-- js-files -->
	<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script>
	<!-- Necessary-JavaScript-File-For-Bootstrap -->
	<!-- //js-files -->

	<!-- Baneer-js -->
	<script src="js/responsiveslides.min.js"></script>
	<script>
		// You can also use "$(window).load(function() {"
		$(function() {
			// Slideshow 4
			$("#slider4").responsiveSlides({
				auto : true,
				pager : true,
				nav : false,
				speed : 500,
				namespace : "callbacks",
				before : function() {
					$('.events').append("_$tabefore event fired._$tag");
				},
				after : function() {
					$('.events').append("_$taafter event fired._$tag");
				}
			});

		});
	</script>
	<!-- //Baneer-js -->

	<!-- smooth-scrolling-of-move-up -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
			var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
			};
			 */

			$().UItoTop({
				easingType : 'easeOutQuart'
			});

		});
	</script>
	<!-- //smooth-scrolling-of-move-up -->
	<!-- start-smooth-scrolling -->
	<script type="text/javascript" src="js/move-top.js"></script>
	<script type="text/javascript" src="js/easing.js"></script>
	<script type="text/javascript">
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event) {
				event.preventDefault();

				$('html,body').animate({
					scrollTop : $(this.hash).offset().top
				}, 1000);
			});
		});
	</script>
	<!-- //end-smooth-scrolling -->
	<!-- smooth scrolling -->
	<script src="js/SmoothScroll.min.js"></script>
	<script src="js/jarallax.js"></script>
	<script type="text/javascript">
		/* init Jarallax */
		$('.jarallax').jarallax({
			speed : 0.5,
			imgWidth : 1366,
			imgHeight : 768
		})
	</script>

	<!-- //smooth scrolling -->
	<!-- video-js -->
	<script src="js/jquery.vide.min.js"></script>
	<!-- //video-js -->
	<!-- carousel -->
	<script src="js/owl.carousel.js"></script>
	<script>
		$(document).ready(function() {
			$("#owl-demo").owlCarousel({
				items : 3,
				itemsDesktop : [ 768, 2 ],
				itemsDesktopSmall : [ 414, 1 ],
				lazyLoad : true,
				autoPlay : true,
				navigation : true,

				navigationText : false,
				pagination : true,

			});

		});
	</script>
	<!-- //carousel -->

	<!-- pricing-tablel -->
	<script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
	<script>
		$(document).ready(function() {
			$('.popup-with-zoom-anim').magnificPopup({
				type : 'inline',
				fixedContentPos : false,
				fixedBgPos : true,
				overflowY : 'auto',
				closeBtnInside : true,
				preloader : false,
				midClick : true,
				removalDelay : 300,
				mainClass : 'my-mfp-zoom-in'
			});

		});
	</script>
	<!-- //pricing-tablel -->
	<!-- gallery-js -->
	<script src="js/jquery.chocolat.js"></script>
	<link rel="stylesheet" href="css/chocolat.css" type="text/css"
		media="screen">
	<!-- light-box-files -->
	<script type="text/javascript">
		$(function() {
			$('.gallery a').Chocolat();
		});
	</script>
	<!-- //light-box-files -->
	<!-- //gallery-js -->
	<!-- //js-scripts -->

</body>
</html>