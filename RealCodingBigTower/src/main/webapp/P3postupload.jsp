<%@page import="com.smhrd.model.Post"%>
<%@page import="java.util.List"%>
<%@page import="com.smhrd.model.PostDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		 <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

		<title>Coding Big Tower-Post Upload</title>

		<!-- Google font -->
		<link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">

		<!-- Bootstrap -->
		<link type="text/css" rel="stylesheet" href="assets/css/bootstrap.min.css"/>

		<!-- Slick -->
		<link type="text/css" rel="stylesheet" href="assets/css/slick.css"/>
		<link type="text/css" rel="stylesheet" href="assets/css/slick-theme.css"/>

		<!-- nouislider -->
		<link type="text/css" rel="stylesheet" href="assets/css/nouislider.min.css"/>

		<!-- Font Awesome Icon -->
		<script src="https://kit.fontawesome.com/26bde3c27f.js" crossorigin="anonymous"></script>

		<!-- Custom stlylesheet -->
		<link type="text/css" rel="stylesheet" href="./assets/css/style2.css"/>


		<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		<!--[if lt IE 9]>
		  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
		  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->

    </head>
	<body>	
	
		<%
		String nick = (String)request.getAttribute("nick");
		String utitle = (String)request.getAttribute("title");
	%>
		<!-- HEADER -->
		<header>
			<!-- TOP HEADER -->
			<div id="top-header">
				<div class="container">
				
				<ul class="header-links pull-right">
					<li><a onclick="location.href='login.jsp';" style="cursor:pointer" ><i class=""></i> logout </a &nbsp;></li &nbsp;>
				</ul>
				
				<ul class="header-links pull-right">
					<li><a onclick="location.href='P3postupload.jsp';" style="cursor:pointer"><i class=""></i> Post+ </a &nbsp;></li &nbsp;>
				</ul>
				
				<ul class="header-links pull-right">
					<li><a onclick="location.href='P3userinfo.jsp';" style="cursor:pointer"><i class="fa fa-user-o" ></i> 내 정보 </a></li>
				</ul>
					
				</div>
			</div>
			<!-- /TOP HEADER -->

			<!-- MAIN HEADER -->
			<div id="header">
				<!-- container -->
				<div class="container">
					<!-- row -->
					<div class="row">
						<!-- LOGO -->
						<div class="col-md-3">
							<div class="header-logo">
								<a href="#" class="logo">
									<img src="images/LogoL_nokki2 (1).png" 
									onclick="location.href='P1main.jsp';"
						style="cursor: pointer" alt="">
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
										<option value="2">업데이트 예정</option>
									</select>
									<input class="input" placeholder="Search here">
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
										<i class="fa-regular fa-heart"></i>
										<!-- <i class="fa-solid fa-heart"></i> : 색깔 칠해진 하트 아이콘 -->
										<span>Like</span>
										<div class="qty">+</div>
									</a>
								</div>
								<!-- /Wishlist -->

								<!-- Cart -->
								<div class="dropdown">
									<a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true">
										<a
								onclick="location.href='P2bookmark.jsp';"
								style="cursor: pointer"><i class="fa-regular fa-bookmark"></i>
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
			<!-- /MAIN HEADER -->
		</header>
		<!-- /HEADER -->


	

		<!-- BREADCRUMB -->
		<div id="breadcrumb" class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">
					<div class="col-md-12">
						<h3 class="breadcrumb-header">Post Update</h3>
						<ul class="breadcrumb-tree">
							<li><a onclick="location.href='P2bias.jsp';" style="cursor: pointer">Home</a></li>
							<!-- 홈 클릭시 메인화면으로 이동 -->
							<li class="active">Post Update</li>
						</ul>
					</div>
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /BREADCRUMB -->

<form action="BoardWriteCon" method="post" enctype="multipart/form-data" accept-charset="UTF-8">
		<!-- SECTION -->
		<div class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">

					<div class="col-md-7">
						<div class="section-title text-center">
							<h3 class="title">사진 등록</h3>
						</div>
						<div class="filebox-box">
							<div class="filebox">
								<input class="upload-name" value="카페 외관 파일 선택" disabled="disabled">
								<label for="ex_filename">업로드</label>
								<input type="file" name="file1" id="ex_filename" class="">
							</div>
						
							<div class="filebox">
								<input class="upload-name" value="카페 내부 파일 선택" disabled="disabled">
								<label for="ex_filename">업로드</label>
								<input type="file" name="file2" id="ex_filename" class="">
							</div>
						
							<div class="filebox">
								<input class="upload-name" value="메뉴 파일 선택" disabled="disabled">
								<label for="ex_filename">업로드</label>
								<input type="file" name="file3" id="ex_filename" class="">
							</div>
						
							<div class="filebox">
								<input class="upload-name" value="기타 사진" disabled="disabled">
								<label for="ex_filename">업로드</label>
								<input type="file"  name="file4" id="ex_filename" class="">
							</div>
						
							<div class="filebox">
								<input class="upload-name" value="기타 사진" disabled="disabled">
								<label for="ex_filename">업로드</label>
								<input type="file" name="file5" id="ex_filename" class="">
							</div>
						</div>

						
					</div>

					<!-- user-pic -->
					<div class="col-md-5 order-details">
						<!-- Shiping Details -->
						<div class="about-Me">
							<div class="section-title">
								<h3 class="title">POST content</h3>
							</div>							
						</div>
						<!-- /Shiping Details -->

						<!-- Order notes -->
						<div class="mx-auto mt-5 search-bar input-group mb-3">
							<input name="title" type="text" class="rounded-pill" placeholder="카페 이름 입력 및 제목 입력" aria-label="Recipient's username" aria-describedby="button-addon2">
							<div class="input-group-append">
							</div>
						  </div>
						<div class="post-content">
							<textarea class="input" placeholder="내용을 입력해주세요." name="content"></textarea>
						</div>
						<div class="post-hashtag">
							<textarea class="input" placeholder="해시태그(#)를 입력해주세요." name="keyword"></textarea>
						</div>
						<button type="submit" value=""></button>
						<!-- /Order notes -->
						
					</div>
					<!-- /user-pic  -->
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /SECTION -->		
</form>


		<!-- FOOTER -->
		<footer id="footer">
			<!-- top footer -->
			<div class="section">
				<!-- container -->
				<div class="container">
					<!-- row -->
					<div class="row">
						<div class="col-md-3 col-xs-6">
							<div class="footer">
								<h3 class="footer-title">About Us</h3>
								<ul class="footer-links">
									<li><a href="#"><i class="fa fa-phone"></i> 062-655-1616</a></li>
						<li><a href="#"><i class="fa fa-envelope-o"></i> cfy0502@email.com</a></li>
						<li><a href="#"><i class="fa fa-map-marker"></i> 동구 예술길 31-15</a></li>
								</ul>
							</div>
						</div>

						<div class="col-md-3 col-xs-6">
							<div class="footer">
								<h3 class="footer-title">Cafe</h3>
								<ul class="footer-links">
									<li><a href="#">동  구</a></li>
									<li><a href="#">북  구</a></li>
									<li><a href="#">남  구</a></li>
									<li><a href="#">서  구</a></li>
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
			<!-- /top footer -->

			<!-- bottom footer -->
			<div id="bottom-footer" class="section">
				<div class="container">
					<!-- row -->
					<div class="row">
						<div class="col-md-12 text-center">							
						</div>
					</div>
						<!-- /row -->
				</div>
				<!-- /container -->
			</div>
			<!-- /bottom footer -->
		</footer>
		<!-- /FOOTER -->

		<!-- jQuery Plugins -->
		<script src="assets/js/jquery.min.js"></script>
		<script src="assets/js/bootstrap.min.js"></script>
		<script src="assets/js/slick.min.js"></script>
		<script src="assets/js/nouislider.min.js"></script>
		<script src="assets/js/jquery.zoom.min.js"></script>
		<script src="assets/js/main.js"></script>

		<!-- TOPBTN -->
<img src="images/above_theapplication_thearrow_4431.png" alt="" id="topBtn">
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
