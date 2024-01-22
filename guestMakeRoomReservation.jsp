<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
String guestICNumber = (String) session.getAttribute("guestICNumber");
boolean login;

if (guestICNumber != null) {
	
	login = true;
} else {
	login = false;
	response.sendRedirect("guestLogin.jsp");
	
	// guna yang ni untuk manager dan staff (TAKE NOTE)
	//response.sendRedirect("../guest/guestLogin.jsp");
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
<link rel="apple-touch-icon" type="image/x-icon"
	href="img/logo_dchalet.png">
<link rel="apple-touch-icon" type="image/x-icon" sizes="72x72"
	href="img/logo_dchalet.png">
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
	</div>
	<!-- /Page Preload -->

	<div class="layer"></div>


	<header class="reveal_header" style="background-color: #24262d;">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-6">
					<a href="index.jsp" class="logo_normal"><img src="img/logo.png"
						width="135" height="45" alt=""></a> <a href="index.jsp"
						class="logo_sticky"><img src="img/logo_sticky.png" width="135"
						height="45" alt=""></a>
				</div>
				<div class="col-6">
					<nav>
						<ul>

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
		</div>
		<!-- /container -->
	</header>
	<!-- /Header -->



	<!-- -------------------- sidebar panel ------------------------- -->
	<div class="nav_panel">
		<a href="#" class="closebt open_close_nav_panel"><i
			class="bi bi-x"></i></a>
		<div class="logo_panel">
			<img src="img/logo_sticky.png" width="135" height="45" alt="">
		</div>
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
						<div class="container py-3">© Ombak Biru Chalet Malaysia</div>
					</div>
				</div>
				<!-- /panel_footer -->
			</nav>
		</div>
		<!-- /sidebar-navigation -->
	</div>
	<!-- /nav_panel -->

	<main>
		<div class="container mt-5">&nbsp;</div>

		<div class="container mt-5 mb-5 align-items-center">
			<div class="row">
				<div class="col"></div>

				<div class="col-md card card-body py-5">
					<div class="row m-4">
						<div class="col-3 text-center">
							<a href="notyet.jsp">
								<div class="bi bi-arrow-left-circle" style="font-size: 50px;"></div>
							</a>
						</div>
						<div class="col-md-12 text-center">
							<div class="">
								<h1>Make Room Reservation</h1>
							</div>
						</div>
					</div>

					<form method="post" action="../ReservationController?action=guestMakeRoomReservation">
						<div class="row m-3">
							<div class="col-1"></div>
							<div class="col pt-3">
								<span>
									<h6>IC Number</h6>
								</span>
							</div>
							<div class="col-8">
								<input type="text" name="guestICNumber" value="<%= guestICNumber %>"
									class="form-control">
							</div>
						</div>

						<div class="row m-3">
							<div class="col-1"></div>
							<div class="col pt-3">
								<span>
									<h6>Check-in & Check-out Date</h6>
								</span>
							</div>
							<div class="col-8">
								<div class="booking_wrapper">
									<p id="daterangepicker-result" class="d-none"></p>
									<input type="hidden" id="date_booking" name="date">
									<div id="daterangepicker-embedded-container"
										class="embedded-daterangepicker clearfix mb-4"></div>
									<div class="row"></div>
								</div>
							</div>

							<div class="row m-3">
								<div class="col-1"></div>
								<div class="col pt-3">
									<span>
										<h6>Room Type</h6>
									</span>
								</div>
								<div class="col-8">
									<div class="custom_select">
										<select class="wide" name="roomType" id="rooms_booking" required>
											<option value="">Select Room</option>
											<option value="Deluxe">Deluxe Room</option>
											<option value="Standard">Standard Room</option>
										</select>
									</div>
								</div>
							</div>

							<div class="row m-3">
								<div class="col-1"></div>
								<div class="col pt-3">
									<span>
										<h6>Total Adults</h6>
									</span>
								</div>
								<div class="col-8">
									<div class="qty-buttons mb-3 version_2">
										<input type="button" value="+" class="qtyplus"
											name="totalAdult"> <input type="text"
											name="totalAdult" id="totalAdult" value=""
											class="qty form-control" placeholder="Adults"> <input
											type="button" value="-" class="qtyminus" name="totalAdult">
									</div>
								</div>
							</div>

							<div class="row m-3">
								<div class="col-1"></div>
								<div class="col pt-3">
									<span>
										<h6>Total Kids</h6>
									</span>
								</div>
								<div class="col-8">
									<div class="mb-3 qty-buttons mb-3 version_2">
										<input type="button" value="+" class="qtyplus"
											name="totalKids"> <input type="text" name="totalKids"
											id="totalKids" value="" class="qty form-control"
											placeholder="Childs"> <input type="button" value="-"
											class="qtyminus" name="totalKids">
									</div>
								</div>
							</div>

							<!-- <div class="row m-3">
                            <div class="col-1"></div>
                            <div class="col pt-3">
                                <span>
                                    <h6>Add-on Room Service</h6>
                                    <div class="col-9"><a class="" th:href="@{/guestViewService}" target="blank">View
                                            Catalogue</a></div>
                                </span>
                            </div>
                            <div class="col-8">
                                <div class="custom_select">
                                    <select name="" id="" class="wide">
                                        <option value="">Select</option>
                                        <option value="">S01- Barbecue Set</option>
                                        <option value="">S02 - Dapur & Gas (Set A) </option>
                                        <option value="">S03 - Dapur & Gas (Set B) </option>
                                        <option value="">S04- Toto (Set A)</option>
                                        <option value="">S05 - Toto (Set B)</option>
                                    </select>
                                </div>
                            </div>
                        </div> -->

							<div class="row m-3">
								<div class="col-1"></div>
								<div class="col pt-3">
									<span>
										<h6>Total Room</h6>
									</span>
								</div>
								<div class="col-8">
									<div class="qty-buttons mb-3">
										<input type="button" value="+" class="qtyplus"
											name="totalRoom"> <input type="text" name="totalRoom"
											id="totalRoom" value="" class="qty form-control"
											placeholder="Total Room"> <input type="button"
											value="-" class="qtyminus" name="totalRoom">
									</div>
								</div>
							</div>

							<!-- <div class="row m-3">
                            <div class="col-1"></div>
                            <div class="col pt-3">
                                <span>
                                    <h6>Total Payment</h6>
                                </span>
                            </div>
                            <div class="col-8">
                                <div class="qty-buttons mb-3 version_2">
                                    <input type="text" name="" id="" class="form-control">
                                </div>
                            </div>
                        </div> -->
						</div>
						
						<input type="hidden" name="staffICNumber" value="123123"/>

						<div class="row m-3">
							<div class="col-1"></div>
							<div class="col pt-3">
								<span>
									<h6>Add Service ?</h6>
								</span>
							</div>
							<div class="col-8">
								<div class="custom_radio mb-3 version_2">

									<input type="radio" name="addon" value="Yes" class="form-check-input" /> <label
										class="form-check-label">Yes</label> <input type="radio"
										name="addon" value="No" class="form-check-input" /> <label
										class="form-check-label">No</label>
								</div>
							</div>
						</div>

						<div class="row m-5">
							<div class="col text-center">
								<button type="submit" class="btn btn-dark btn-lg"
									style="border-radius: 3px 3px 3px 3px; height: auto; width: 150px">Submit</button>
							</div>
						</div>
				</div>
				<div class="col"></div>
			</div>
			</form>
			<div class="container mt-5">&nbsp;</div>
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
						<li>Jalan Telok Gong / Pengkalan Balak, Kampung Sungai Tuang<br>78300
							Masjid Tanah, Melaka<br>
						<br></li>
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
		<svg class="progress-circle svg-content" width="100%" height="100%"
			viewBox="-1 -1 102 102">
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
