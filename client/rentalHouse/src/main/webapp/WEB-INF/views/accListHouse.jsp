<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="a" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>RentalHouse</title>
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
						<li><a href="accListHouse" class="active">Houses</a></li>
						<li><a href="accListApp"  >Appartements</a></li>
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
					<h1 class="tm-banner-title">With the  <span class="tm-yellow-text">Best Price </span> Dolor</h1>
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


<!-- white bg -->
<section class="tm-white-bg section-padding-bottom">
	<div class="container">
		<div class="row">
			<div class="tm-section-header section-margin-top">
				<div class="col-lg-4 col-md-3 col-sm-3"><hr></div>
				<div class="col-lg-4 col-md-6 col-sm-6"><h2 class="tm-section-title">Some of Our House</h2></div>
				<div class="col-lg-4 col-md-3 col-sm-3"><hr></div>
			</div>
			<div class="col-lg-6">
				<div class="tm-home-box-3">
					<div class="tm-home-box-3-img-container">
						<img src="fichier/img/index-07.jpg" alt="image" class="img-responsive">
					</div>
					<div class="tm-home-box-3-info">
						<p class="tm-home-box-3-description">Proin gravida nibhvell velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum</p>
						<div class="tm-home-box-2-container">
							<a href="#" class="tm-home-box-2-link"><i class="fa fa-heart tm-home-box-2-icon border-right"></i></a>
							<a href="#" class="tm-home-box-2-link"><span class="tm-home-box-2-description box-3">Travel</span></a>
							<a href="#" class="tm-home-box-2-link"><i class="fa fa-edit tm-home-box-2-icon border-left"></i></a>
						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-6">
				<div class="tm-home-box-3">
					<div class="tm-home-box-3-img-container">
						<img src="fichier/img/index-08.jpg" alt="image" class="img-responsive">
					</div>
					<div class="tm-home-box-3-info">
						<p class="tm-home-box-3-description">Proin gravida nibhvell velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum</p>
						<div class="tm-home-box-2-container">
							<a href="#" class="tm-home-box-2-link"><i class="fa fa-heart tm-home-box-2-icon border-right"></i></a>
							<a href="#" class="tm-home-box-2-link"><span class="tm-home-box-2-description box-3">Travel</span></a>
							<a href="#" class="tm-home-box-2-link"><i class="fa fa-edit tm-home-box-2-icon border-left"></i></a>
						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-6">
				<div class="tm-home-box-3">
					<div class="tm-home-box-3-img-container">
						<img src="fichier/img/index-09.jpg" alt="image" class="img-responsive">
					</div>
					<div class="tm-home-box-3-info">
						<p class="tm-home-box-3-description">Proin gravida nibhvell velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum</p>
						<div class="tm-home-box-2-container">
							<a href="#" class="tm-home-box-2-link"><i class="fa fa-heart tm-home-box-2-icon border-right"></i></a>
							<a href="#" class="tm-home-box-2-link"><span class="tm-home-box-2-description box-3">Travel</span></a>
							<a href="#" class="tm-home-box-2-link"><i class="fa fa-edit tm-home-box-2-icon border-left"></i></a>
						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-6">
				<div class="tm-home-box-3">
					<div class="tm-home-box-3-img-container">
						<img src="fichier/img/index-10.jpg" alt="image" class="img-responsive">
					</div>
					<div class="tm-home-box-3-info">
						<p class="tm-home-box-3-description">Proin gravida nibhvell velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum</p>
						<div class="tm-home-box-2-container">
							<a href="#" class="tm-home-box-2-link"><i class="fa fa-heart tm-home-box-2-icon border-right"></i></a>
							<a href="#" class="tm-home-box-2-link"><span class="tm-home-box-2-description box-3">Travel</span></a>
							<a href="#" class="tm-home-box-2-link"><i class="fa fa-edit tm-home-box-2-icon border-left"></i></a>
						</div>
					</div>
				</div>
			</div>
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
<script type="text/javascript" src="fichier/js/moment.js"></script>							<!-- moment.js -->
<script type="text/javascript" src="fichier/js/bootstrap.min.js"></script>					<!-- bootstrap js -->
<script type="text/javascript" src="fichier/js/bootstrap-datetimepicker.min.js"></script>	<!-- bootstrap date time picker js, http://eonasdan.github.io/bootstrap-datetimepicker/ -->
<script type="text/javascript" src="fichier/js/jquery.flexslider-min.js"></script>
<!--
	<script src="fichier/js/froogaloop.js"></script>
	<script src="fichier/js/jquery.fitvid.js"></script>
-->
<script type="text/javascript" src="fichier/js/templatemo-script.js"></script>      		<!-- Templatemo Script -->
<script>
	// HTML document is loaded. DOM is ready.
	$(function() {

		$('#hotelCarTabs a').click(function (e) {
			e.preventDefault()
			$(this).tab('show')
		})

		$('.date').datetimepicker({
			format: 'MM/DD/YYYY'
		});
		$('.date-time').datetimepicker();

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

	// Load Flexslider when everything is loaded.
	$(window).load(function() {
		// Vimeo API nonsense

		/*
                      var player = document.getElementById('player_1');
                      $f(player).addEvent('ready', ready);

                      function addEvent(element, eventName, callback) {
                        if (element.addEventListener) {
                          element.addEventListener(eventName, callback, false)
                        } else {
                          element.attachEvent(eventName, callback, false);
                        }
                      }

                      function ready(player_id) {
                        var froogaloop = $f(player_id);
                        froogaloop.addEvent('play', function(data) {
                          $('.flexslider').flexslider("pause");
                        });
                        froogaloop.addEvent('pause', function(data) {
                          $('.flexslider').flexslider("play");
                        });
                      }
        */



		// Call fitVid before FlexSlider initializes, so the proper initial height can be retrieved.
		/*

                      $(".flexslider")
                        .fitVids()
                        .flexslider({
                          animation: "slide",
                          useCSS: false,
                          animationLoop: false,
                          smoothHeight: true,
                          controlNav: false,
                          before: function(slider){
                            $f(player).api('pause');
                          }
                      });
        */




//	For images only
		$('.flexslider').flexslider({
			controlNav: false
		});


	});
</script>
</body>
</html>