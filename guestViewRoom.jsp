<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
String guestICNumber = (String) session.getAttribute("guestICNumber");
boolean login;

if (guestICNumber != null) {
	//response.sendRedirect("");
	login = true;
} else {
	login = false;
}

%>

<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Ansonika">
    <title>Ombak Biru Chalet</title>
    
    <!-- Favicons-->
    <link rel="shortcut icon" href="img/favicon.png" type="image/x-icon">
    <link rel="apple-touch-icon" type="image/x-icon" href="img/apple-touch-icon-57x57-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="72x72" href="img/apple-touch-icon-72x72-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="114x114" href="img/apple-touch-icon-114x114-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="144x144" href="img/apple-touch-icon-144x144-precomposed.png">

    <!-- GOOGLE WEB FONT-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Caveat:wght@400;500&family=Montserrat:wght@300;400;500;600;700&display=swap" rel="stylesheet">

    <!-- BASE CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
	<link href="css/vendors.min.css" rel="stylesheet">

    <!-- YOUR CUSTOM CSS -->
    <link href="css/custom.css" rel="stylesheet">
</head>

<body> 

    <div id="preloader">
        <div data-loader="circle-side"></div>
    </div><!-- /Page Preload -->

    <div class="layer"></div><!-- Opacity Mask -->

    <header class="reveal_header" style="background-color:#24262d;">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-6">
                    <a href="index.jsp" class="logo"><img src="img/logo_sticky.png" width="135" height="45"
                        alt=""></a>
                </div>
                <div class="col-6">
                    <nav>
                        <ul>
                            <li><a href="guestMakeRoomReservation.jsp" class="btn_1 btn_scrollto">Book Now</a></li>
                            <li>
                                <div class="hamburger_2 open_close_nav_panel">
                                    <div class="hamburger__box">
                                        <div class="hamburger__inner"></div>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div><!-- /container -->
    </header><!-- /Header -->

     <!-- -------------------- sidebar panel ------------------------- -->
     <div class="nav_panel">
        <a href="#" class="closebt open_close_nav_panel"><i class="bi bi-x"></i></a>
        <div class="logo_panel"><img src="img/logo_sticky.png" width="135" height="45" alt=""></div>
        <div class="sidebar-navigation">
            <nav>

                <ul class="level-1">
                    <li><a href="index.jsp"><i class="bi bi-house" style="font-size: 25px;"></i> &nbsp;Home</a></li>
                    <li><a href="guestProfile.jsp"><i class="bi bi-person-square" style="font-size: 25px;"></i>
                            &nbsp;Profile</a></li>
                    <li><a href="guestViewRoom.jsp"><i class="bi bi-door-open" style="font-size: 25px;"></i> &nbsp;Our
                            Rooms</a></li>
                    <li><a href="guestMakeRoomReservation.jsp"><i class="bi bi-plus" style="font-size: 25px;"></i>
                            &nbsp;Make Reservation</a></li>
                    <li><a href="guestRoomReservation.jsp"><i class="bi bi-receipt-cutoff"
                                style="font-size: 25px;"></i> &nbsp;Records</a></li>
                    <li class="mt-5"><a href="guestLogin.jsp" class="btn btn-danger pt-3"
                            style="color: white; border-radius: 10px 10px 10px 10px; height: 50px;">Logout</a></li>
                </ul>
                <div class="panel_footer">
                    <div class="copy">
                        <div class="container py-3">
                            © Ombak Biru Chalet Malaysia
                        </div>
                    </div>
                </div>
                <!-- /panel_footer -->
            </nav>
        </div>
        <!-- /sidebar-navigation -->
    </div>
    <!-- /nav_panel -->

     <main>
        <div class="hero full-height jarallax" data-jarallax-video="mp4:./video/sunset.mp4,webm:./video/sunset.webm,ogv:./video/sunset.ogv" data-speed="0.2">
            <div class="wrapper opacity-mask d-flex align-items-center justify-content-center text-center animate_hero" data-opacity-mask="rgba(0, 0, 0, 0.5)">
                <div class="container">
                    <small class="slide-animated one">D'Chalet Ombak Biru</small>
                    <h1 class="slide-animated two">Rooms</h1>
                </div>
            </div>
        </div>
        <!-- /Background Img Parallax -->

        <div class="container margin_120_95" id="first_section">
            <div class="row justify-content-between">
                <div class="col-xl-4 fixed_title">
                    <div class="title">
                        <small>D'Chalet Ombak Biru</small>
                        <h2>Our Rooms</h2>
                        <p class="lead">Feel free to choose from our two types of rooms: <strong>Standard</strong> and <strong>Deluxe</strong>.</p>
                        <p><a href="guestMakeRoomReservation.jsp" class="btn_1 outline">Book Now</a></p>
                    </div>
                </div>
                <div class="col-xl-7">
                    <div class="row_list_version_3" data-cue="fadeIn">
                        <div class="owl-carousel owl-theme carousel_item_1 kenburns rounded-img">
                            <div class="item">
                                <a href=" "><img src="img/rooms/standard-2.jpg" alt=""></a>
                            </div>
                            <div class="item">
                                <a href=" "><img src="img/rooms/standard-1.jpg" alt=""></a>
                            </div>
                            <div class="item">
                                <a href=" "><img src="img/rooms/standard-3.jpg" alt=""></a>
                            </div>
                        </div>
                        <!-- /carousel -->
                        <div class="box_item_info" data-jarallax-element="-25">
                            <small>From RM150/night</small>
                            <h2>Standard Room</h2>
                            <p>Beautiful design with modern furnishings including a glamorous bay window with your own private view of Lucerne.</p>
                            <div class="facilities clearfix">
                                <ul>
                                    <li>
                                        <i class="customicon-double-bed"></i> Queen Size Bed
                                    </li>
                                    <li>
                                        <i class="customicon-television"></i> 32 Inc TV
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <!-- /box_item_info -->
                    </div>
                    <!-- /row_list_version_3 -->

                    <div class="row_list_version_3" data-cue="fadeIn">
                        <div class="owl-carousel owl-theme carousel_item_1 kenburns rounded-img">
                            <div class="item">
                                <a href=" "><img src="img/rooms/deluxe-2.jpg" width="640px" height="480px" alt=""></a>
                            </div>
                            <div class="item">
                                <a href=" "><img src="img/rooms/deluxe-1.jpg" alt=""></a>
                            </div>
                            <div class="item">
                                <a href=" "><img src="img/rooms/deluxe-3.jpg" alt=""></a>
                            </div>
                        </div>
                        <!-- /carousel -->
                        <div class="box_item_info" data-jarallax-element="-25">
                            <small>From RM200/night</small>
                            <h2>Deluxe Room</h2>
                            <p>Beautiful design with modern furnishings including a glamorous bay window with your own private view of Lucerne.</p>
                            <div class="facilities clearfix">
                                <ul>
                                    <li>
                                        <i class="customicon-double-bed"></i> Double Queen Size Bed
                                    </li>
                                    <li>
                                        <i class="customicon-television"></i> 32 Inc TV
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <!-- /box_item_info -->
                    </div>
                    <!-- /row_list_version_3 -->

                </div>
            </div>
        </div>
        <!-- /container-->

        <div class="pinned-image pinned-image--medium">
            <div class="pinned-image__container">
                <div class="pinned-image__container-overlay"></div>
            </div>
            <div class="pinned_over_content">
                <div class="title white center mb-5">
                        <small data-cue="slideInUp">D'Chalet Ombak Biru</small>
                        <h2 data-cue="slideInUp" data-delay="100">Main Facilities</h2>
                    </div>
                <div class="row mt-4">
                    <div class="col-xl-3 col-lg-6 col-md-6 col-6">
                        <div class="box_facilities white no-border" data-cue="slideInUp">
                            <i class="customicon-private-parking"></i>
                            <h3>Private Parking</h3>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-6 col-md-6 col-6">
                        <div class="box_facilities white" data-cue="slideInUp">
                            <i class="customicon-wifi"></i>
                            <h3>High Speed Wifi</h3>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-6 col-md-6 col-6">
                        <div class="box_facilities white" data-cue="slideInUp">
                            <i class="customicon-cocktail"></i>
                            <h3>Barbeque Space</h3>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-6 col-md-6 col-6">
                        <div class="box_facilities white" data-cue="slideInUp">
                            <i class="customicon-swimming-pool"></i>
                            <h3>Swimming Pool</h3>
                        </div>
                    </div>
                </div>
                <!-- /Row -->
            </div>
        </div>
        <!-- /pinned-image -->

        
        <!-- /container -->

    </main>

    <footer class="revealed">
        <div class="footer_bg">
            <div class="gradient_over"></div>
        </div>
        <div class="container">
            <div class="row move_content">
                <div class="col-lg-4 col-md-12">
                    <h5>Contacts</h5>
                    <ul>
                        <li>Jalan Telok Gong / Pengkalan Balak, Kampung Sungai Tuang<br>78300 Masjid Tanah,
                            Melaka<br><br></li>
                        <li><strong><a href="#0">dchaletombakbiru@gmail.com</a></strong></li>
                        <li><strong><a href="#0">016-2115359/012-2431337</a></strong></li>
                    </ul>
                    <div class="social">
                        <ul>
                            <li><a href="#0"><i class="bi bi-instagram"></i></a></li>
                            <li><a href="#0"><i class="bi bi-whatsapp"></i></a></li>
                            <li><a href="#0"><i class="bi bi-facebook"></i></a></li>
                            <li><a href="#0"><i class="bi bi-twitter"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!--/container-->
        <div class="copy">
            <div class="container">
                © Ombak Biru Chalet - by <a href="#">Ocean Blue Lemond</a>
            </div>
        </div>
    </footer>
    <!-- /footer -->

    <div class="progress-wrap">
        <svg class="progress-circle svg-content" width="100%" height="100%" viewBox="-1 -1 102 102">
            <path d="M50,1 a49,49 0 0,1 0,98 a49,49 0 0,1 0,-98"/>
        </svg>
    </div>
    <!-- /back to top -->
	
    <!-- COMMON SCRIPTS -->
    <script src="js/common_scripts.js"></script>
    <script src="js/common_functions.js"></script>
    <script src="js/datepicker_inline.js"></script>
    <script src="phpmailer/validate.js"></script>

</body>
</html>
