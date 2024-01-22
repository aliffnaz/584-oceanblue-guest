<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
String guestICNumber=null;
guestICNumber = (String) session.getAttribute("guestICNumber");
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
<link rel="apple-touch-icon" type="image/x-icon"
	href="img/apple-touch-icon-57x57-precomposed.png">
<link rel="apple-touch-icon" type="image/x-icon" sizes="72x72"
	href="img/apple-touch-icon-72x72-precomposed.png">
<link rel="apple-touch-icon" type="image/x-icon" sizes="114x114"
	href="img/apple-touch-icon-114x114-precomposed.png">
<link rel="apple-touch-icon" type="image/x-icon" sizes="144x144"
	href="img/apple-touch-icon-144x144-precomposed.png">

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
					<a href="index.html" class="logo"><img
						src="img/logo_sticky.png" width="135" height="45" alt=""></a>
				</div>
				<div class="col-6">
					<nav>
						<ul>
							<li><a href="guestLogin.jsp" class="btn_1 btn_scrollto">Book
									Now</a></li>
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
					<li><a href="index_logout.html"><i class="bi bi-house"
							style="font-size: 25px;"></i> &nbsp;Home</a></li>
							
							<%
					if (login) {
					%>
					<li><a
						href="SidebarController?action=guestProfile&user=guest&guestICNumber=<%=guestICNumber%>"><i
							class="bi bi-person-square" style="font-size: 25px;"></i>
							&nbsp;Profile</a></li>
					<%
					} else {
					%>
					<li><a
						href="guest/guestLogin.jsp"><i
							class="bi bi-person-square" style="font-size: 25px;"></i>
							&nbsp;Profile</a></li>
					<%
					}
					%>
					
							<%
					if (login) {
					%>
					<li><a href="guestViewRoom.html"><i
							class="bi bi-door-open" style="font-size: 25px;"></i> &nbsp;Our
							Rooms</a></li>
					<%
					} else {
					%>
					<li><a href="guest/guestLogin.jsp"><i
							class="bi bi-door-open" style="font-size: 25px;"></i> &nbsp;Our
							Rooms</a></li>
					<%
					}
					%>
					
						
					
					
					<%
					if (login) {
					%>
					<li><a href="guest/guestMakeRoomReservation.html"><i
							class="bi bi-plus" style="font-size: 25px;"></i> &nbsp;Make
							Reservation</a></li>
					<%
					} else {
					%>
				<li><a href="guest/guestLogin.jsp"><i
							class="bi bi-plus" style="font-size: 25px;"></i> &nbsp;Make
							Reservation</a></li>
					<%
					}
					%>
					
						<%
					if (login) {
					%>
					<li><a
						href="SidebarController?action=guestRoomReservation&user=guest&guestICNumber=<c:out value="${guest.guestICNumber}"/>"><i
							class="bi bi-receipt-cutoff" style="font-size: 25px;"></i>
							&nbsp;Records</a></li>
					<%
					} else {
					%>
				<li><a
						href="guest/guestLogin.jsp"><i
							class="bi bi-receipt-cutoff" style="font-size: 25px;"></i>
							&nbsp;Records</a></li>
					<%
					}
					%>
					
					

					<%
					if (login) {
					%>
					<li class="mt-5"><a href="LoginController?action=logout"
						class="btn btn-danger pt-3"
						style="color: white; border-radius: 10px 10px 10px 10px; height: 50px;">Logout</a></li>
					<%
					} else {
					%>
					<li class="mt-5"><a href="guest/guestLogin.jsp"
						class="btn btn-success pt-3"
						style="color: white; border-radius: 10px 10px 10px 10px; height: 50px;">Login</a></li>
					<%
					}
					%>
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
						<div class="col-md-12 text-center">
							<div class="">
								<h1>Sign Up</h1>
							</div>
						</div>
					</div>
					<form action="../GuestController?action=guestregister&user=guest"
						method="post">
						<div class="row m-3">
							<div class="col-1"></div>
							<div class="col pt-3">
								<span>
									<h6>Full Name</h6>
								</span>
							</div>
							<div class="col-8">
								<input type="text" name="guestName" id="" class="form-control">
							</div>
						</div>

						<div class="row m-3">
							<div class="col-1"></div>
							<div class="col pt-3">
								<span>
									<h6>IC Number</h6>
								</span>
							</div>
							<div class="col-8">
								<input type="text" name="guestICNumber" id=""
									class="form-control">
							</div>
						</div>

						<div class="row m-3">
							<div class="col-1"></div>
							<div class="col pt-3">
								<span>
									<h6>Address</h6>
								</span>
							</div>
							<div class="col-8">
								<input type="text" name="guestAddress" id=""
									class="form-control">
							</div>
						</div>

						<div class="row m-3">
							<div class="col-1"></div>
							<div class="col pt-3">
								<span>
									<h6>Gender</h6>
								</span>
							</div>
							<div class="col-8">
								<select name="guestGender" id=""
									class="form-control form-select">
									<option value="">Select</option>
									<option value="Male">Male</option>
									<option value="Female">Female</option>
								</select>
							</div>
						</div>

						<div class="row m-3">
							<div class="col-1"></div>
							<div class="col pt-3">
								<span>
									<h6>Race</h6>
								</span>
							</div>
							<div class="col-8">
								<select name="guestRace" id="" class="form-control form-select">
									<option value="">Select</option>
									<option value="Melayu">Melayu</option>
									<option value="Cina">Cina</option>
									<option value="India">India</option>
									<option value="Others">Others</option>
								</select>
							</div>
						</div>

						<div class="row m-3">
							<div class="col-1"></div>
							<div class="col pt-3">
								<span>
									<h6>Religion</h6>
								</span>
							</div>
							<div class="col-8">
								<select name="guestReligion" id=""
									class="form-control form-select">
									<option value="">Select</option>
									<option value="Islam">Islam</option>
									<option value="Budha">Budha</option>
									<option value="Christian">Christian</option>
									<option value="Others">Others</option>
								</select>

							</div>
						</div>

						<div class="row m-3">
							<div class="col-1"></div>
							<div class="col pt-3">
								<span>
									<h6>Phone Number</h6>
								</span>
							</div>
							<div class="col-8">
								<input type="text" name="guestPhoneNumber" id=""
									class="form-control">
							</div>
						</div>

						<div class="row m-3">
							<div class="col-1"></div>
							<div class="col pt-3">
								<span>
									<h6>Email</h6>
								</span>
							</div>
							<div class="col-8">
								<input type="text" name="guestEmail" id="" class="form-control">
							</div>
						</div>


						<div class="row m-3">
							<div class="col-1"></div>
							<div class="col pt-3">
								<span>
									<h6>Password</h6>
								</span>
							</div>
							<div class="col-8">
								<input type="password" name="guestPassword" id=""
									class="form-control">
							</div>
						</div>
						<input type="hidden" value="add" name="purpose">
						<div class="row my-3">
							<div class="row text-center">
								<span>Already have an account? Sign in <a
									href="guestLogin.jsp">Here</a></span>
							</div>
						</div>



						<div class="row m-5">



							<div class="col text-center">
								<button type="submit" class="btn btn-dark btn-lg"
									style="border-radius: 3px 3px 3px 3px; height: auto; width: 150px">Sign
									Up</button>
					</form>
					<script>
						// function success() { onclick="success()"
						//    alert("Successfully Signed Up");
						// window.location('index.html');
						//  }
					</script>
				</div>
			</div>


		</div>


		<div class="col"></div>
		</div>

		<div class="container mt-5">&nbsp;</div>


		<!-- <div class="row card card-body align-items-center"> -->



		</div>
		<!-- </div> -->

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
							Masjid Tanah, Melaka<br> <br></li>
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
