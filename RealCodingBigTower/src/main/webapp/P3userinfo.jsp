<%@page import="com.smhrd.model.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

<title>Electro - HTML Ecommerce Template</title>

<!-- Google font -->
<link
	href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700"
	rel="stylesheet">

<!-- Bootstrap -->
<link type="text/css" rel="stylesheet"
	href="assets/css/bootstrap.min.css" />

<!-- Slick -->
<link type="text/css" rel="stylesheet" href="assets/css/slick.css" />
<link type="text/css" rel="stylesheet" href="assets/css/slick-theme.css" />

<!-- nouislider -->
<link type="text/css" rel="stylesheet"
	href="assets/css/nouislider.min.css" />

<!-- Font Awesome Icon -->
<script src="https://kit.fontawesome.com/26bde3c27f.js"
	crossorigin="anonymous"></script>

<!-- Custom stlylesheet -->
<link type="text/css" rel="stylesheet" href="assets/css/style2.css" />


</head>
<%
			Member loginMember = (Member)session.getAttribute("loginMember");
	%>

<body>
	<!-- HEADER -->
	<header> <!-- TOP HEADER -->
	<div id="top-header">
		<div class="container">
			<!-- 상단바 왼쪽 공간 -->
			<ul class="header-links pull-left">
			</ul>
			<!-- 상단바 오른쪽 공간 -->
			<ul class="header-links pull-right">
				<li><a onclick="location.href='P3userinfo.jsp';"
					style="cursor: pointer"><i class="fa fa-user-o"></i> 내 정보</a></li>
			</ul>
		</div>
	</div>
	<!-- /TOP HEADER --> <!-- MAIN HEADER -->
	<div id="header">
		<!-- container -->
		<div class="container">
			<!-- row -->
			<div class="row">
				<!-- LOGO -->
				<div class="col-md-3">
					<div class="header-logo">
						<a href="" class="logo"> <img
							src="images/LogoL_nokki2 (1).png"
							onclick="location.href='P1main.jsp';" alt="">
						</a>
					</div>
				</div>
				<!-- /LOGO -->

				<!-- SEARCH BAR -->
				<div class="col-md-6">
					<div class="header-search">
						<form>
							<select class="input-select">
								<option value="0">Cafe</option>
								<option value="1">User</option>
							</select> <input class="input" placeholder="Search here">
							<a onclick="location.href='ex07카카오맵사이드바.jsp';" style="cursor: pointer">
							<button class="search-btn">Search</button>
							</a>
						</form>
					</div>
				</div>
				<!-- /SEARCH BAR -->

				<!-- ACCOUNT -->
				<div class="col-md-3 clearfix">
					<div class="header-ctn">
						<!-- Wishlist -->
						<div>
							<a onclick="location.href='P2bias.jsp';" style="cursor: pointer">
								<i class="fa-regular fa-heart"></i> <!-- <i class="fa-solid fa-heart"></i> : 색깔 칠해진 하트 아이콘 -->
								<span>Like</span>
								<div class="qty">+</div>
							</a>
						</div>
						<!-- /Wishlist -->

						<!-- Cart -->
						<div class="dropdown">
							<a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true"> 
								<a onclick="location.href='P2bookmark.jsp';"
								style="cursor: pointer"> 
								<i class="fa-regular fa-bookmark"></i>
									<!-- <i class="fa-solid fa-bookmark"></i>  : 색깔 칠해진 북마크 아이콘 -->
									<span>Bookmark</span>
									<div class="qty">+</div>
							</a>
						</div>
					</div>
					<!-- /Cart -->

					<!-- /Menu Toogle -->
				</div>
			</div>
			<!-- /ACCOUNT -->
		</div>
		<!-- row -->
	</div>
	<!-- container -->
	</div>
	<!-- /MAIN HEADER --> </header>
	<!-- /HEADER -->




	<!-- BREADCRUMB -->
	<div id="breadcrumb" class="section">
		<!-- container -->
		<div class="container">
			<!-- row -->
			<div class="row">
				<div class="col-md-12">
					<h3 class="breadcrumb-header">회원 정보 변경</h3>
					<ul class="breadcrumb-tree">
						<li><a onclick="location.href='P1main.jsp';"
							style="cursor: pointer">Home</a></li>
						<!-- 홈 클릭시 메인화면으로 이동 -->
						<li class="active">회원 정보 변경</li>
					</ul>
				</div>
			</div>
			<!-- /row -->
		</div>
		<!-- /container -->
	</div>
	<!-- /BREADCRUMB -->

	<!-- SECTION -->
	<div class="section">
		<!-- container -->
		<div class="container">
			<!-- row -->
			<div class="row">

				<div class="col-md-7">
			<form action="UpdateCon" method="post">
					<!-- Billing Details -->
					<div class="billing-details">
						<div class="section-title">
						
									
							<h3 class="title">회원 정보 변경</h3>
						</div>
						<div class="form-group">
							<input name="pw" class="input" type="password" value="<%-- <%=loginMember.getPw() %> --%>"
								placeholder="수정할 비밀번호를 입력해주세요.">
						</div>
						<div class="form-group">
							<input name="nick" class="input" type="text" value="<%-- <%=loginMember.getNick() %> --%>"
								placeholder="수정할 닉네임을 입력해주세요.">
						</div>
						<div class="form-group">
							<input name="job" class="input" type="text" name="job" value="<%-- <%=loginMember.getJob() %> --%>"
								placeholder="수정할 직업을 입력해주세요.">
						</div>
						
						<div class="section-title">
							<br>
							<h3 class="title">타이틀 변경</h3>
						</div>
							<select class="input-select">
								<option value="0">새내기</option>
								<option value="1">원카페홀리커</option>
								<option value="2">마당발</option>
								<option value="2">브론즈</option>

							</select>
							
						<div class="form-group">
							<div class="input-checkbox">
								<input type="checkbox" id="create-account">

								<div class="caption">
									<!-- <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt.</p> -->
									<input class="input" type="password" name="password"
										placeholder="Enter Your Password">
								</div>
							</div>
						</div>
					</div>
					<!-- /Billing Details -->

					<!-- Shiping Details -->
					<div class="about-Me">
						<div class="section-title">
							<h3 class="title">자기소개</h3>
						</div>
					</div>
					<!-- /Shiping Details -->

					<!-- Order notes -->
					<div class="자기소개">
					<input name="int" class="input" placeholder="자기소개를 입력해주세요." type="textarea" value="<%-- <%=loginMember.getIntr() %> --%>">
					</div>
					<br>
					<br>
					<br>
					<a href="#" class="primary-btn order-submit">변경</a><br>
					<br>
					<!-- /Order notes -->
				</div>
				</form>
				<!-- </form> -->

				<!-- user-pic -->
				<div class="col-md-5 order-details">
					<div class="section-title text-center">
						<h3 class="title">사진 등록 및 변경</h3>
					</div>

					<table class="table-description2">
						<tr class="file-input-box">
							<div class="filebox">
								<input class="upload-name" value="파일선택" disabled="disabled">
								<label for="ex_filename">업로드</label> <input type="file"
									id="ex_filename" class="upload-hidden"> <label
									for="ex_filename">등록</label>
							</div>
					</table>

				</div>
				<!-- /user-pic  -->
			</div>
			<!-- /row -->
		</div>
		<!-- /container -->
	</div>
	<!-- /SECTION -->

	<!-- FOOTER -->
	<footer id="footer"> <!-- top footer -->
	<div class="section">
		<!-- container -->
		<div class="container">
			<!-- row -->
			<div class="row">
				<div class="col-md-3 col-xs-6">
					<div class="footer">
						<h3 class="footer-title">About Us</h3>
						<!-- <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut.</p> -->
						<ul class="footer-links">
							<li><a href="#"><i class="fa fa-phone"></i> 062-655-1616</a></li>
							<li><a href="#"><i class="fa fa-envelope-o"></i>
									cfy0502@email.com</a></li>
							<li><a href="#"><i class="fa fa-map-marker"></i> 동구 예술길
									31-15</a></li>
						</ul>
					</div>
				</div>

				<div class="col-md-3 col-xs-6">
					<div class="footer">
						<h3 class="footer-title">Cafe</h3>
						<ul class="footer-links">
							<li><a href="#">동 구</a></li>
							<li><a href="#">북 구</a></li>
							<li><a href="#">남 구</a></li>
							<li><a href="#">서 구</a></li>
							<li><a href="#">광산구</a></li>
						</ul>
					</div>
				</div>

				<div class="clearfix visible-xs"></div>

				<div class="col-md-3 col-xs-6">
					<div class="footer">
						<h3 class="footer-title">Information</h3>
						<ul class="footer-links">
							<li><a href="#">About Us</a></li>
							<li><a href="#">Contact Us</a></li>
							<li><a href="#">Privacy Policy</a></li>
							<li><a href="#">Orders and Returns</a></li>
							<li><a href="#">Terms & Conditions</a></li>
						</ul>
					</div>
				</div>

				<div class="col-md-3 col-xs-6">
					<div class="footer">
						<h3 class="footer-title">Service</h3>
						<ul class="footer-links">
							<li><a href="#">My Account</a></li>
							<li><a href="#">View Bookmark</a></li>
							<li><a href="#">My Bias</a></li>
							<li><a href="#">Help</a></li>
						</ul>
					</div>
				</div>
			</div>
			<!-- /row -->
		</div>
		<!-- /container -->
	</div>
	</div>
	<!-- /bottom footer --> </footer>
	<!-- /FOOTER -->

	<!-- jQuery Plugins -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>
	<script src="assets/js/slick.min.js"></script>
	<script src="assets/js/nouislider.min.js"></script>
	<script src="assets/js/jquery.zoom.min.js"></script>
	<script src="assets/js/main.js"></script>

	<!-- TOPBTN -->
	<img src="images/above_theapplication_thearrow_4431.png" alt=""
		id="topBtn">
	<!-- /TOPBTN -->

	<script>
			$(function() {            
				$("#topBtn").click(function() {
				  $('html, body').animate({
					scrollTop : 0
				  }, 400);
				  return false;
				});
			  });		
		</script>

</body>
</html>
