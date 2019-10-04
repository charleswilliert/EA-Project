<%@page contentType="text/html" pageEncoding="UTF-8"%>
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

						<li><a href="accListHouse">Houses</a></li>
						<li><a href="accListApp">Appartements</a></li>
						<li><a href="accContact">Contact</a></li>
						<li><a href="login">Loggin</a></li>
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
					<h1 class="tm-banner-title">With the  <span class="tm-yellow-text">Best  </span> Price</h1>
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

<!-- gray bg ===========================================================================================-->
<section class="container tm-home-section-1" id="more">
	<div class="section-margin-top">
		<div class="row">
			<div class="tm-section-header">
				<div class="col-lg-3 col-md-3 col-sm-3"><hr></div>
				<div class="col-lg-6 col-md-6 col-sm-6"><h2 class="tm-section-title">Our Houses And Appartements</h2></div>
				<div class="col-lg-3 col-md-3 col-sm-3"><hr></div>
			</div>
		</div>


		<div class="row">

<%--This for each is for loop to the appartements--%>
             <c:forEach var="apartment" items="${apartments}">


			<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
				<div class="tm-tours-box-1">
					<img src="fichier/img//tours-03.jpg" alt="image" class="img-responsive">
					<div class="tm-tours-box-1-info">
						<div class="tm-tours-box-1-info-left">
							<p class="text-uppercase margin-bottom-20">Appartment ${apartment.id}  </p>
							<p class="gray-text">28 March 2084</p>
						</div>
						<div class="tm-tours-box-1-info-right">
							<p class="gray-text tours-1-description">Lorem quis bibendum auctor, nisi elit consequat ipsum, sec sagittis sem nibh id elit.</p>
						</div>
					</div>
					<div class="tm-tours-box-1-link">
						<div class="tm-tours-box-1-link-left">
							Duration: 8 days
						</div>
						<a href="accDescription?id=${apartment.id}" class="tm-tours-box-1-link-right">
							More...
						</a>
					</div>
				</div>
			</div>


			 </c:forEach>


	<%--This for each is for loop to the Houses--%>
	<c:forEach var="house" items="${houses}">


		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
			<div class="tm-tours-box-1">
				<img src="fichier/img//tours-03.jpg" alt="image" class="img-responsive">
				<div class="tm-tours-box-1-info">
					<div class="tm-tours-box-1-info-left">
						<p class="text-uppercase margin-bottom-20">House ${house.id}  </p>
						<p class="gray-text">28 March 2084</p>
					</div>
					<div class="tm-tours-box-1-info-right">
						<p class="gray-text tours-1-description">Lorem quis bibendum auctor, nisi elit consequat ipsum, sec sagittis sem nibh id elit.</p>
					</div>
				</div>
				<div class="tm-tours-box-1-link">
					<div class="tm-tours-box-1-link-left">
						Duration: 8 days
					</div>
					<a href="accDescription?id=${house.id}" class="tm-tours-box-1-link-right">
						More...
					</a>
				</div>
			</div>
		</div>


	</c:forEach>






<%--			<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">--%>
<%--				<div class="tm-tours-box-1">--%>
<%--					<img src="fichier/img//tours-04.jpg" alt="image" class="img-responsive">--%>
<%--					<div class="tm-tours-box-1-info">--%>
<%--						<div class="tm-tours-box-1-info-left">--%>
<%--							<p class="text-uppercase margin-bottom-20">Proin Gravida Nibhvel Lorem Quis Bind</p>--%>
<%--							<p class="gray-text">26 March 2084</p>--%>
<%--						</div>--%>
<%--						<div class="tm-tours-box-1-info-right">--%>
<%--							<p class="gray-text tours-1-description">Lorem quis bibendum auctor, nisi elit consequat ipsum, sec sagittis sem nibh id elit.</p>--%>
<%--						</div>--%>
<%--					</div>--%>
<%--					<div class="tm-tours-box-1-link">--%>
<%--						<div class="tm-tours-box-1-link-left">--%>
<%--							Duration: 9 days--%>
<%--						</div>--%>
<%--						<a href="#" class="tm-tours-box-1-link-right">--%>
<%--							$1,800--%>
<%--						</a>--%>
<%--					</div>--%>
<%--				</div>--%>
<%--			</div>--%>
<%--			<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">--%>
<%--				<div class="tm-tours-box-1">--%>
<%--					<img src="fichier/img//tours-05.jpg" alt="image" class="img-responsive">--%>
<%--					<div class="tm-tours-box-1-info">--%>
<%--						<div class="tm-tours-box-1-info-left">--%>
<%--							<p class="text-uppercase margin-bottom-20">Proin Gravida Nibhvel Lorem Quis Bind</p>--%>
<%--							<p class="gray-text">24 March 2084</p>--%>
<%--						</div>--%>
<%--						<div class="tm-tours-box-1-info-right">--%>
<%--							<p class="gray-text tours-1-description">Lorem quis bibendum auctor, nisi elit consequat ipsum, sec sagittis sem nibh id elit.</p>--%>
<%--						</div>--%>
<%--					</div>--%>
<%--					<div class="tm-tours-box-1-link">--%>
<%--						<div class="tm-tours-box-1-link-left">--%>
<%--							Duration: 8 days--%>
<%--						</div>--%>
<%--						<a href="#" class="tm-tours-box-1-link-right">--%>
<%--							$1,600--%>
<%--						</a>--%>
<%--					</div>--%>
<%--				</div>--%>
<%--			</div>--%>
<%--			<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">--%>
<%--				<div class="tm-tours-box-1">--%>
<%--					<img src="fichier/img//tours-06.jpg" alt="image" class="img-responsive">--%>
<%--					<div class="tm-tours-box-1-info">--%>
<%--						<div class="tm-tours-box-1-info-left">--%>
<%--							<p class="text-uppercase margin-bottom-20">Proin Gravida Nibhvel Lorem Quis Bind</p>--%>
<%--							<p class="gray-text">22 March 2084</p>--%>
<%--						</div>--%>
<%--						<div class="tm-tours-box-1-info-right">--%>
<%--							<p class="gray-text tours-1-description">Lorem quis bibendum auctor, nisi elit consequat ipsum, sec sagittis sem nibh id elit.</p>--%>
<%--						</div>--%>
<%--					</div>--%>
<%--					<div class="tm-tours-box-1-link">--%>
<%--						<div class="tm-tours-box-1-link-left">--%>
<%--							Duration: 5 days--%>
<%--						</div>--%>
<%--						<a href="#" class="tm-tours-box-1-link-right">--%>
<%--							$1,200--%>
<%--						</a>--%>
<%--					</div>--%>
<%--				</div>--%>
<%--			</div>--%>



		</div>
	</div>
</section>

<!-- white bg -->
<section class="tm-white-bg section-padding-bottom">
	<div class="container"> <div class="col-lg-12">
		<p class="home-description">Lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris.
			Morbi accumsaipsu m velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat.
		</p>
	</div> </div>
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
		$('.flexslider').flexslider({
			controlNav: false
		});
	});
</script>
</body>
</html>

