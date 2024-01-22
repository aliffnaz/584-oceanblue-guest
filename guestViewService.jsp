<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  

<%
String guestICNumber=null;
if ((String) session.getAttribute("guestICNumber") == null) {
	response.sendRedirect("guestLogin.jsp");
} else {
	guestICNumber = (String) session.getAttribute("guestICNumber");
	boolean login;

	if (guestICNumber != null) {
		//response.sendRedirect("");
		login = true;
	} else {
		login = false;
	}
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
    <link rel="apple-touch-icon" type="image/x-icon" href="img/logo_dchalet.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="72x72" href="img/logo_dchalet.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="114x114"
        href="img/logo_dchalet.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="144x144"
        href="img/logo_dchalet.png">

    <!-- GOOGLE WEB FONT-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Caveat:wght@400;500&family=Montserrat:wght@300;400;500;600;700&display=swap"
        rel="stylesheet">

    <!-- BASE CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <link href="css/vendors.min.css" rel="stylesheet">

    <!-- YOUR CUSTOM CSS -->
    <link href="css/custom.css" rel="stylesheet">
</head>

<body class="datepicker_mobile_full">
    <div id="preloader">
        <div data-loader="circle-side"></div>
    </div><!-- /Page Preload -->

    <div class="layer"></div>


    <header class="reveal_header" style="background-color: #24262d;">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-6">
                    <a href="index.html" class="logo_normal"><img src="img/logo.png" width="135" height="45" alt=""></a>
                    <a href="index.html" class="logo_sticky"><img src="img/logo_sticky.png" width="135" height="45" alt=""></a>
                </div>
                <div class="col-6">
                    <nav>
                        <ul>
                            <li><a href="guestMakeRoomReservation.html" class="btn_1 btn_scrollto">Book Now</a></li>
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
                    <li class=""><a href="SidebarController?action=index&user=guest&guestICNumber=${guest.guestICNumber}"><i class="bi bi-house" style="font-size: 25px;"></i>
                    		        &nbsp;Home</a></li>
                    		<li class=""><a href="SidebarController?action=guestProfile&user=guest&guestICNumber=${guest.guestICNumber}"><i class="bi bi-clipboard-check"
                    	            style="font-size: 25px;"></i>&nbsp; View Profile</a></li>
                    		<li><a href="SidebarController?action=guestViewRoom&user=guest&guestICNumber=${guest.guestICNumber}"><i class="bi bi-person-badge"
                    	            style="font-size: 25px;"></i>&nbsp; Our Room</a></li>
                    		<li><a href="SidebarController?action=guestMakeRoomReservation&user=guest&guestICNumber=${guest.guestICNumber}"><i class="bi bi-pencil-square"
                        	        style="font-size: 25px;"></i>&nbsp; Make Reservation</a></li>
                    		<li><a href="SidebarController?action=guestRoomReservation&user=guest&guestICNumber=${guest.guestICNumber}"><i class="bi bi-nut" style="font-size: 25px;"></i>&nbsp;
                        		    Records</a></li>
                    		<li class="mt-5"><a href="LoginController?action=logout" class="btn btn-danger pt-3"
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

    <div class="container mt-6">
        &nbsp;
    </div>

    <main>

        <div class="container mt-5">
            &nbsp;
        </div>
        <div class="bg_white" id="first_section">
            <div class="container margin_120_95">
                <div class="row justify-content-between">
                    <div class="col-lg-4">
                        <div class="title">
                            <small>S01</small>
                            <h2>Barbecue Set -   RM15.00</h2>
                            <p>Enhance your chalet experience with our exclusive barbecue pit service, 
                                designed to ignite your taste buds and create unforgettable moments.</p>
                        </div>
                            <div class="item col-xl-4 col-lg-6 col-mb-6 mb-4">
                                <div class="item-img" data-cue="slideInUp">
                                    <img src="img/roomService/bbqpit.jpg" alt="" />
                                    <div class="content">
                                        <a  data-fslightbox="gallery_1" data-type="image" href="img/roomService/bbqpit.jpg"><i class="bi bi-arrows-angle-expand"></i></a>
                                    </div>
                                </div>
                            </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="room_facilities_list">
                            <ul data-cues="slideInLeft">
                                <li>•	2 Kipas</li>
                                <li>•	2 Penyepit</li>
                                <li>•	2 Jug Air</li>
                                <li>•   Arang tidak disediakan.</li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="title">
                            <small>S02</small>
                            <h2>Dapur & Gas </h2>
                            <h2>(Set A) - RM30.00</h2>
                        </div>
                        <div class="item col-xl-4 col-lg-6 col-mb-6 mb-4">
                            <div class="item-img" data-cue="slideInUp">
                                <img src="img/roomService/dapurgas.jpg" alt="" />
                                <div class="content">
                                    <a  data-fslightbox="gallery_1" data-type="image" href="img/roomService/dapurgas.jpg"><i class="bi bi-arrows-angle-expand"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="room_facilities_list">
                            <ul data-cues="slideInLeft">
                                <li>•	RM30.00 / 2 Hari 1 Malam</li>
                                <li>•	1 Set Dapur & Gas</li>
                                <li>•   Peralatan Memasak Tidak Disediakan.</li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="title">
                            <small>S03</small>
                            <h2>Dapur & Gas </h2>
                            <h2>(Set B) - RM50.00</h2>
                        </div>
                            <div class="item col-xl-4 col-lg-6 col-mb-6 mb-4">
                                <div class="item-img" data-cue="slideInUp">
                                    <img src="img/roomService/dapurgas.jpg" alt="" />
                                    <div class="content">
                                        <a  data-fslightbox="gallery_1" data-type="image" href="img/roomService/dapurgas.jpg"><i class="bi bi-arrows-angle-expand"></i></a>
                                    </div>
                                </div>
                            </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="room_facilities_list">
                            <ul data-cues="slideInLeft">
                                <li>•	RM50.00 / 3 Hari 2 Malam</li>
                                <li>•	1 Set Dapur & Gas</li>
                                <li>•   Peralatan Memasak Tidak Disediakan.</li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="title">
                            <small>S04</small>
                            <h2>Toto </h2>
                            <h2>(Set A) - RM15.00</h2>
                        </div>
                            <div class="item col-xl-4 col-lg-6 col-mb-6 mb-4">
                                <div class="item-img" data-cue="slideInUp">
                                    <img src="img/roomService/toto.jpg" alt="" />
                                    <div class="content">
                                        <a  data-fslightbox="gallery_1" data-type="image" href="img/roomService/toto.jpg"><i class="bi bi-arrows-angle-expand"></i></a>
                                    </div>
                                </div>
                            </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="room_facilities_list">
                            <ul data-cues="slideInLeft">
                                <li>•	1 Set Toto</li>
                                <li>•   2 Bantal</li>
                                <li>•   1 Selimut</li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="title">
                            <small>S05</small>
                            <h2>Toto </h2>
                            <h2>(Set B) - RM10.00</h2>
                        </div>
                            <div class="item col-xl-4 col-lg-6 col-mb-6 mb-4">
                                <div class="item-img" data-cue="slideInUp">
                                    <img src="img/roomService/toto.jpg" alt="" />
                                    <div class="content">
                                        <a  data-fslightbox="gallery_1" data-type="image" href="img/roomService/toto.jpg"><i class="bi bi-arrows-angle-expand"></i></a>
                                    </div>
                                </div>
                            </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="room_facilities_list">
                            <ul data-cues="slideInLeft">
                                <li>•	1 Set Toto</li>
                                <li>•   2 Bantal</li>
                            </ul>
                        </div>
                    </div>
                <!-- /row -->
            </div>
            <!-- /container -->
            
         </div>
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
            <path d="M50,1 a49,49 0 0,1 0,98 a49,49 0 0,1 0,-98" />
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
