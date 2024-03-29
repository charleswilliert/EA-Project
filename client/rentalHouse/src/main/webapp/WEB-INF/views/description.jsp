<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Holiday - About</title>
	<!--
    Holiday Template
    http://www.templatemo.com/tm-475-holiday
    -->
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,400italic,600,700' rel='stylesheet' type='text/css'>
	<link href="fichier/css/font-awesome.min.css" rel="stylesheet">
	<link href="fichier/css/bootstrap.min.css" rel="stylesheet">
	<link href="fichier/css/bootstrap-datetimepicker.min.css" rel="stylesheet">
	<link href="fichier/css/flexslider.css" rel="stylesheet">
	<link href="fichier/css/templatemo-style.css" rel="stylesheet">

	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
	<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
	<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->

</head>
<body class="tm-gray-bg">
<!-- Header -->
<div class="tm-header">
	<div class="container">
		<div class="row">
			<div class="col-lg-6 col-md-4 col-sm-3 tm-site-name-container">
				<a href="accueil" class="tm-site-name">RentalHouse</a>
			</div>
			<div class="col-lg-6 col-md-8 col-sm-9">
				<div class="mobile-menu-icon">
					<i class="fa fa-bars"></i>
				</div>
				<nav class="tm-nav">
					<ul>
						<li><a href="accListHouse">Houses</a></li>
						<li><a href="accListApp">Appartements</a></li>
						<li><a href="accContact">Contact</a></li>
						<li><a href="#">Loggin</a></li>
					</ul>
				</nav>
			</div>
		</div>
	</div>
</div>

<!-- Banner -->
<section class="tm-banner">
	<!-- Flexslider -->
	<div class="flexslider flexslider-banner">
		<ul class="slides">
			<li>
				<div class="tm-banner-inner">
					<h1 class="tm-banner-title">Find <span class="tm-yellow-text">The Best</span> place </h1>
					<p class="tm-banner-subtitle">To Live </p>
					<a href="#more" class="tm-banner-link">Learn More</a>
				</div>
				<img src="fichier/img//banner-2.jpg" />
			</li>
			<li>
				<div class="tm-banner-inner">
					<h1 class="tm-banner-title">With the  <span class="tm-yellow-text">Best   </span> Price</h1>
					<p class="tm-banner-subtitle">That you can afford..</p>
					<a href="#more" class="tm-banner-link">Learn More</a>
				</div>
				<img src="fichier/img//banner-3.jpg" />
			</li>
			<li>
				<div class="tm-banner-inner">
					<h1 class="tm-banner-title">Enjoy <span class="tm-yellow-text">Your </span> Life</h1>
					<p class="tm-banner-subtitle">With of..</p>
					<a href="#more" class="tm-banner-link">Learn More</a>
				</div>
				<img src="fichier/img//banner-1.jpg" />
			</li>

		</ul>
	</div>
</section>




<!-- gray bg -->
<section class="container tm-home-section-1" id="more">
	<div class="row">
		<!-- slider -->
		<div class="flexslider flexslider-about effect2">
			<ul class="slides">


				<li>
					<img src="fichier/img/about-1.jpg" alt="image" />
					<div class="flex-caption">
						<h2 class="slider-title">Detail on Item </h2>
						<h3 class="slider-subtitle"> Address  ${residence.address.city} <br/>
							  						 Street  ${residence.address.street} <br/>
						</h3>
						<p class="slider-description">

						Some Description :
						<div class="slider-social">
							<!-- <a href="#" class="tm-social-icon"><i class="fa fa-twitter"></i></a>
                            <a href="#" class="tm-social-icon"><i class="fa fa-facebook"></i></a>
                            <a href="#" class="tm-social-icon"><i class="fa fa-pinterest"></i></a>
                          <a href="#" class="tm-social-icon"><i class="fa fa-google-plus"></i></a> -->
							<a href="#" class="tm-social-icon"><i class="fa fa-check-circle" > Take it</i></a>
						</div>
					</div>
				</li>


<%--				<li>--%>
<%--					<img src="fichier/img/about-1.jpg" alt="image" />--%>
<%--					<div class="flex-caption">--%>
<%--						<h2 class="slider-title">More Programs to come</h2>--%>
<%--						<h3 class="slider-subtitle">Gravida nibh vel velit auctor aliquet enean sollicitudin lorem quis auctor, nisi elit consequat ipsum</h3>--%>
<%--						<p class="slider-description">Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris gestas quam, ut aliquam massa nisi.</p>--%>
<%--						<div class="slider-social">--%>
<%--							<a href="#" class="tm-social-icon"><i class="fa fa-twitter"></i></a>--%>
<%--							<a href="#" class="tm-social-icon"><i class="fa fa-facebook"></i></a>--%>
<%--							<a href="#" class="tm-social-icon"><i class="fa fa-pinterest"></i></a>--%>
<%--							<a href="#" class="tm-social-icon"><i class="fa fa-google-plus"></i></a>--%>
<%--							<a href="#"><i class="fa fa-arrow-circle-left" aria-hidden="true"></i></a>--%>
<%--						</div>--%>
<%--					</div>--%>
<%--				</li>--%>
<%--				<li>--%>
<%--					<img src="fichier/img/about-1.jpg" alt="image" />--%>
<%--					<div class="flex-caption">--%>
<%--						<h2 class="slider-title">Tour and Travel</h2>--%>
<%--						<h3 class="slider-subtitle">Gravida nibh vel velit auctor aliquet enean sollicitudin lorem quis auctor, nisi elit consequat ipsum</h3>--%>
<%--						<p class="slider-description">Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris gestas quam, ut aliquam massa nisi.</p>--%>
<%--						<div class="slider-social">--%>
<%--							<a href="#" class="tm-social-icon"><i class="fa fa-twitter"></i></a>--%>
<%--							<a href="#" class="tm-social-icon"><i class="fa fa-facebook"></i></a>--%>
<%--							<a href="#" class="tm-social-icon"><i class="fa fa-pinterest"></i></a>--%>
<%--							<a href="#" class="tm-social-icon"><i class="fa fa-google-plus"></i></a>--%>
<%--						</div>--%>
<%--					</div>--%>
<%--				</li>--%>
			</ul>
		</div>
	</div>

</section>




<footer class="tm-black-bg">
	<div class="container">
		<div class="row">
			<p class="tm-copyright-text">Copyright &copy; 2084 Your Company Name</p>
		</div>
	</div>
</footer>
<script type="text/javascript" src="fichier/js/jquery-1.11.2.min.js"></script>      		<!-- jQuery -->
<script type="text/javascript" src="fichier/js/bootstrap.min.js"></script>					<!-- bootstrap js -->
<script type="text/javascript" src="fichier/js/jquery.flexslider-min.js"></script>			<!-- flexslider js -->
<script type="text/javascript" src="fichier/js/templatemo-script.js"></script>      		<!-- Templatemo Script -->
<script>
	$(function() {

		// https://css-tricks.com/snippets/jquery/smooth-scrolling/
		$('a[href*=#]:not([href=#])').click(function() {
			if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {
				var target = $(this.hash);
				target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
				if (target.length) {
					$('html,body').animate({
						scrollTop: target.offset().top
					}, 1000);
					return false;
				}
			}
		});
	});
	$(window).load(function(){
		// Flexsliders
		$('.flexslider.flexslider-banner').flexslider({
			controlNav: false
		});
		$('.flexslider').flexslider({
			animation: "slide",
			directionNav: false,
			slideshow: false
		});
	});
</script>
</body>
</html>
