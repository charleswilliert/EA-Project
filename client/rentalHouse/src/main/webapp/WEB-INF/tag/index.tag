<%@tag description="Overall Page template" pageEncoding="UTF-8"%>
<%@attribute name="header" fragment="true" %>
<%@attribute name="footer" fragment="true" %>
<html>

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
    <jsp:invoke fragment="header"/>
    <body class="tm-gray-bg">
    <!-- Header -->
    <div class="tm-header">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-4 col-sm-3 tm-site-name-container">
                    <a href="index.html" class="tm-site-name">RentalHouse</a>
                </div>
                <div class="col-lg-6 col-md-8 col-sm-9">
                    <div class="mobile-menu-icon">
                        <i class="fa fa-bars"></i>
                    </div>
                    <nav class="tm-nav">
                        <ul>

                            <li><a href="ListHouse.html">Houses</a></li>
                            <li><a href="ListApp.html" >Appartements</a></li>
                            <li><a href="contact.html">Contact</a></li>
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
                        <p class="tm-banner-subtitle">For Your Holidays</p>
                        <a href="#more" class="tm-banner-link">Learn More</a>
                    </div>
                    <img src="fichier/img/banner-2.jpg" />
                </li>
                <li>
                    <div class="tm-banner-inner">
                        <h1 class="tm-banner-title">Lorem <span class="tm-yellow-text">Ipsum</span> Dolor</h1>
                        <p class="tm-banner-subtitle">Wonderful Destinations</p>
                        <a href="#more" class="tm-banner-link">Learn More</a>
                    </div>
                    <img src="fichier/img/banner-3.jpg" />
                </li>
                <li>
                    <div class="tm-banner-inner">
                        <h1 class="tm-banner-title">Proin <span class="tm-yellow-text">Gravida</span> Nibhvell</h1>
                        <p class="tm-banner-subtitle">Velit Auctor</p>
                        <a href="#more" class="tm-banner-link">Learn More</a>
                    </div>
                    <img src="fichier/img/banner-1.jpg" />
                </li>

            </ul>
        </div>
    </section>
               <jsp:doBody/>





            <jsp:invoke fragment="footer"/>
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
