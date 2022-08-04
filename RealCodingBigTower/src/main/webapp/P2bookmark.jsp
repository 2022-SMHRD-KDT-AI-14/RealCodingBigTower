<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		 <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

		<title>Electro - HTML Ecommerce Template</title>

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
		<link type="text/css" rel="stylesheet" href="assets/css/style2.css"/>


		<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		<!--[if lt IE 9]>
		  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
		  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->

    </head>
	<body>
		<!-- HEADER -->
		<header>
			<!-- TOP HEADER -->
			<div id="top-header">
				<div class="container">
					<ul class="header-links pull-left">
					</ul>
					<ul class="header-links pull-right">						
						<li><a onclick="location.href='P3userinfo.jsp';"
					style="cursor: pointer"><i class="fa fa-user-o"></i>내 정보</a></li>
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

								<!-- Menu Toogle -->
								</div>
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
					<div class="col-md-12" >
						<ul class="breadcrumb-tree" style="justify-content: center;">
							<li><a onclick="location.href='P1main.jsp';"
							style="cursor: pointer">Home</a></li>
							<li class="active">Bookmark</li>
						</ul>
					</div>
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /BREADCRUMB -->

		<!-- NAVIGATION -->
		<nav id="navigation">
			<!-- container -->
			<div class="container">
				<!-- responsive-nav -->
				<div id="responsive-nav">
					<!-- NAV -->
					<ul class="main-nav nav navbar-nav">
						<li ><a data-toggle="tab" onclick="location.href='P2mypost.jsp';" style="cursor: pointer">My Post</a></li>
						<li ><a data-toggle="tab" onclick="location.href='P2bias.jsp';" style="cursor: pointer">Like</a></li>
						<li class="active"><a data-toggle="tab" onclick="location.href='P2bookmark.jsp';" style="cursor: pointer">Bookmark</a></li>						
					</ul>
					<!-- /NAV -->
				</div>
				<!-- /responsive-nav -->
			</div>
			<!-- /container -->
		</nav>
		<!-- /NAVIGATION -->

		<!-- SECTION -->
		<div class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">
					<!-- ASIDE -->
					<div id="aside" class="col-md-3">
						<!-- aside Widget -->
						<div class="aside">
							<div class="checkbox-filter">
								
									<div class="user-profile" style="border-radius: 30px;">
										<div class="product-img">
											<img src="images/post.png" alt="">
										</div>

										<div class="product-body" >
											<h4 class="username" >만득이<a class="user-title">브론즈</a></h4>
											<div></div>
											<h3 class="cafe-name">브론즈에서 벗어날꺼야</h3>
											<div></div>
														
											
										</div>										
								</div>
							</div>
						</div>
						<!-- /aside Widget -->

						<!-- aside Widget -->
						<div class="aside">
							<h3 class="aside-title"></h3>
							
						</div>
						<!-- /aside Widget -->

						<!-- aside Widget -->
						<div class="aside">
							<h3 class="aside-title"></h3>
							<div class="checkbox-filter">
								
							</div>
						</div>
						<!-- /aside Widget -->
					</div>
					<!-- /ASIDE -->
<!-- ============================================================================================================== -->
					<!-- STORE -->
					<div id="store" class="col-md-9">

						
						<!-- store products -->
						<div class="row">
							

							<!-- product -->
							<div class="col-md-4 col-xs-6">
								<div class="product">
										<div class="product-img">
											<img src="https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=http%3A%2F%2Fblogfiles.naver.net%2FMjAxODEwMTVfMTY4%2FMDAxNTM5NTgxOTQ0NjIw.V2GP9b1x3c72FsKDV4K4Pgc0ozIpTaxVR0TLuJET7Dwg.LVechq-JPp_qsJ7Cmfw1k6bOBpehWinl5DZu4Gdrad4g.JPEG.147048%2FP1230174.JPG"
												alt="">

										</div>
										<div class="product-body">
											<h3 class="cafe-name"><a href="#">Gathering </a></h3>
											<h4 class="username">만득이 <p class="user-title">브론즈</p>
											</h4>
											<div class="cafe-rating">
												<a>4.27</a><i class="fa fa-star"></i>
											</div>
										<div class="product-btns">
									<button class="add-to-wishlist"><i class="fa fa-heart-o"></i><span class="tooltipp">add to wishlist</span></button>
									<button class="add-to-compare"><i class="fa-regular fa-bookmark"></i><span class="tooltipp">add to compare</span></button>
								</div>
									</div>
									<div class="add-to-cart">
												<button class="add-to-cart-btn"><i class="fa-solid fa-magnifying-glass"></i> 자세히 보기</button>
							</div>
								</div>
							</div>
							<!-- /product -->

							<!-- product -->
							<div class="col-md-4 col-xs-6">
								<div class="product">
									<div class="product-img">
											<img src="https://search.pstatic.net/common/?autoRotate=true&type=w560_sharpen&src=https%3A%2F%2Fpup-review-phinf.pstatic.net%2FMjAyMjA3MTNfMzAw%2FMDAxNjU3NzA3MTgwMDk3.lFMoQ3k1iG26MvTHJLOrxPeSmHj8itX32QHIHtpNtzgg.ltKCvGjXwcvaMcg9Xdc7cpaCjvzQMnnYcbaPHo33JeEg.JPEG%2Fupload_6cde8735cdea3d0c2ccce172c9e559b4.jpeg"
												alt="">
											<div class="product-label">
												<span class="new">NEW</span>
											</div>
										</div>
										<div class="product-body">

											<h3 class="cafe-name"><a href="#">티앗(TeaAt)</a></h3>
											<h4 class="username">분대장 <p class="user-title">집돌이</p>
											</h4>
											<div class="cafe-rating">
												<a>4.1</a><i class="fa fa-star"></i>
											</div>
										<div class="product-btns">
									<button class="add-to-wishlist"><i class="fa fa-heart-o"></i><span class="tooltipp">add to wishlist</span></button>
									<button class="add-to-compare"><i class="fa-regular fa-bookmark"></i><span class="tooltipp">add to compare</span></button>
								</div>
									</div>
									<div class="add-to-cart">
												<button class="add-to-cart-btn"><i class="fa-solid fa-magnifying-glass"></i> 자세히 보기</button>
							</div>
								</div>
							</div>
							<!-- /product -->

							<!-- product -->
							<div class="col-md-4 col-xs-6">
								<div class="product">
									<div class="product-img">
											<img src="https://search.pstatic.net/common/?autoRotate=true&type=w560_sharpen&src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMjA2MDhfMzAw%2FMDAxNjU0NjcwNjY0Mjgx.Jk_2ATNst4vu6kiu0DElgXSAbU06a32IJC7nE8CzVWUg.JoQFb1rhGdQjyGSbbSimoaY7CBAY0erl048WzRJtDHYg.JPEG.gail6530%2F%25C0%25CC%25C0%25CC%25B3%25B2%25BD%25BA%25C6%25A9%25B5%25F0%25BF%25C0_%25284%2529.jpg"
												alt="">

										</div>
										<div class="product-body">

											<h3 class="cafe-name"><a href="#">이이남 스튜디오</a></h3>
											<h4 class="username">알마 <p class="user-title">전국카페탐방</p>
											</h4>
											<div class="cafe-rating">
												<a>4.2</a><i class="fa fa-star"></i>
											</div>
										<div class="product-btns">
									<button class="add-to-wishlist"><i class="fa fa-heart-o"></i><span class="tooltipp">add to wishlist</span></button>
									<button class="add-to-compare"><i class="fa-regular fa-bookmark"></i><span class="tooltipp">add to compare</span></button>
								</div>
									</div>
									<div class="add-to-cart">
												<button class="add-to-cart-btn"><i class="fa-solid fa-magnifying-glass"></i> 자세히 보기</button>
							</div>
								</div>
							</div>
							<!-- /product -->

							<!-- product -->
							<div class="col-md-4 col-xs-6">
								<div class="product">
								<div class="product-img">
											<img src="https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMjA3MzFfMTA1%2FMDAxNjU5Mjc5NDMxMDAx.OhMoYmK41DTqsFlF-JQZi3D4E-VoCsNTpGVWjibx5M4g.9zJepqrgcpv5PudgifteS453NcggCZUfz8ZOqmie3Xog.JPEG.monde337%2FIMG_7234.jpg"
												alt="">

										</div>
										<div class="product-body">

											<h3 class="cafe-name"><a href="#">로멘틱 뮤지업</a></h3>
											<h4 class="username">만득이 <p class="user-title">브론즈</p>
											</h4>
											<div class="cafe-rating">
												<a>4.6</a><i class="fa fa-star"></i>
											</div>
										<div class="product-btns">
									<button class="add-to-wishlist"><i class="fa fa-heart-o"></i><span class="tooltipp">add to wishlist</span></button>
									<button class="add-to-compare"><i class="fa-regular fa-bookmark"></i><span class="tooltipp">add to compare</span></button>
								</div>
									</div>
									<div class="add-to-cart">
												<button class="add-to-cart-btn"><i class="fa-solid fa-magnifying-glass"></i> 자세히 보기</button>
							</div>
								</div>
							</div>
							<!-- /product -->

							<!-- product -->
							<div class="col-md-4 col-xs-6">
								<div class="product">
									<div class="product-img">
											<img src="https://search.pstatic.net/common/?autoRotate=true&type=w560_sharpen&src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMjAxMzBfNDgg%2FMDAxNjQzNTQzODc0NTE4.RxelhBVomrVl0-OuqWDvl-C8e9n5it8uSOv6thofU5sg.9GVXeblqeiXKXNeBx0BCk1ZweP3QpvL7lyoS6G4vMW0g.JPEG.sodiumk__%2F20220130_095444.jpg"
												alt="">

										</div>
										<div class="product-body">

											<h3 class="cafe-name"><a href="#">사보타지</a></h3>
											<h4 class="username">Sharks<p class="user-title">브런치가 좋아</p>
											</h4>
											<div class="cafe-rating">
												<a>4.75</a><i class="fa fa-star"></i>
											</div>
										<div class="product-btns">
									<button class="add-to-wishlist"><i class="fa fa-heart-o"></i><span class="tooltipp">add to wishlist</span></button>
									<button class="add-to-compare"><i class="fa-regular fa-bookmark"></i><span class="tooltipp">add to compare</span></button>
								</div>
									</div>
									<div class="add-to-cart">
												<button class="add-to-cart-btn"><i class="fa-solid fa-magnifying-glass"></i> 자세히 보기</button>
							</div>
								</div>
							</div>
							<!-- /product -->

							<!-- product -->
							<div class="col-md-4 col-xs-6">
								<div class="product">
									<div class="product-img">
											<img src="https://search.pstatic.net/common/?autoRotate=true&type=w560_sharpen&src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTEwMzBfMjAz%2FMDAxNjM1NTgwMDgxNjI4.zZiZn-IUE7xwqBjPS6N6hbNM40sRAlnglrKipztS9usg.7xvI6qtTBzj9MRp802YAfqGe1L6WGO4ZJur6DVArxxkg.JPEG.rkdldhtm%2FIMG_5034.jpg"
												alt="">
												
										</div>
										<div class="product-body">

											<h3 class="cafe-name"><a href="#">Blck</a></h3>
											<h4 class="username">분대장 <p class="user-title">집돌이</p>
											</h4>
											<div class="cafe-rating">
												<a>4.88</a><i class="fa fa-star"></i>
											</div>
										<div class="product-btns">
									<button class="add-to-wishlist"><i class="fa fa-heart-o"></i><span class="tooltipp">add to wishlist</span></button>
									<button class="add-to-compare"><i class="fa-regular fa-bookmark"></i><span class="tooltipp">add to compare</span></button>
								</div>
									</div>
									<div class="add-to-cart">
												<button class="add-to-cart-btn"><i class="fa-solid fa-magnifying-glass"></i> 자세히 보기</button>
							</div>
								</div>
							</div>
							<!-- /product -->

							<!-- product -->
							<div class="col-md-4 col-xs-6">
								<div class="product">
									<div class="product-img">
											<img src="https://search.pstatic.net/common/?autoRotate=true&type=w560_sharpen&src=http%3A%2F%2Fblogfiles.naver.net%2FMjAxOTA0MjdfMjUz%2FMDAxNTU2MzI0NTk0OTk5.4bGUWoULTA3jqkVRzFMo_kA7GGV_oQkMfrLiYmHx514g.NQYzAqvEk7IjAUmvrfjaHG2jjQctMvuLCRlQ1Koz_H0g.JPEG.kimjia1685%2Foutput_1011159290.jpg"
												alt="">
											<div class="product-label">
												<span class="new">Best</span>
											</div>
										</div>
										<div class="product-body">

											<h3 class="cafe-name"><a href="#">시니피에</a></h3>
											<h4 class="username">알마 <p class="user-title">전국카페탐방</p>
											</h4>
											<div class="cafe-rating">
												<a>4.5</a><i class="fa fa-star"></i>
											</div>
										<div class="product-btns">
									<button class="add-to-wishlist"><i class="fa fa-heart-o"></i><span class="tooltipp">add to wishlist</span></button>
									<button class="add-to-compare"><i class="fa-regular fa-bookmark"></i><span class="tooltipp">add to compare</span></button>
								</div>
									</div>
									<div class="add-to-cart">
												<button class="add-to-cart-btn"><i class="fa-solid fa-magnifying-glass"></i> 자세히 보기</button>
							</div>
								</div>
							</div>
							<!-- /product -->

							<!-- product -->
							<div class="col-md-4 col-xs-6">
								<div class="product">
									<div class="product-img">
											<img src="https://search.pstatic.net/common/?autoRotate=true&type=w560_sharpen&src=https%3A%2F%2Fpup-review-phinf.pstatic.net%2FMjAyMjA3MTlfMjAw%2FMDAxNjU4MjA2MDAzOTM1.13XxxDE7K8d1ERhNMI92pYU9SwWM9p6Ws1rSRmeyBdkg.x8ZwwAdX6pWrTIPebjvZyWGrEFZ7yxuXH-i8ezxPwsQg.JPEG%2Fupload_a42160426a716a77de0e4711a535a9c2.jpg"
												alt="">
											<div class="product-label">
												<span class="new">Best</span>
											</div>
										</div>
										<div class="product-body">

											<h3 class="cafe-name"><a href="#">카페얼씨</a></h3>
											<h4 class="username">알마 <p class="user-title">전국카페탐방</p>
											</h4>
											<div class="cafe-rating">
												<a>4.35</a><i class="fa fa-star"></i>
											</div>
										<div class="product-btns">
									<button class="add-to-wishlist"><i class="fa fa-heart-o"></i><span class="tooltipp">add to wishlist</span></button>
									<button class="add-to-compare"><i class="fa-regular fa-bookmark"></i><span class="tooltipp">add to compare</span></button>
								</div>
									</div>
									<div class="add-to-cart">
												<button class="add-to-cart-btn"><i class="fa-solid fa-magnifying-glass"></i> 자세히 보기</button>
							</div>
								</div>
							</div>
							<!-- /product -->

							<!-- product -->
							<div class="col-md-4 col-xs-6">
								<div class="product">
									<div class="product-img">
											<img src="https://search.pstatic.net/common/?autoRotate=true&type=w560_sharpen&src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTAyMDFfMjI1%2FMDAxNjEyMTU0NDQxODUw.wVNCP6uqqN1dXbzA9x-RBTWY6aShrsYxOYSl_tUJRfgg.4cPtm1BteRCQJsmJBdjfQaaXIeK33cTn9acNzETPweEg.JPEG.kbs2080%2FIMG_1622.jpg"
												alt="">
											<div class="product-label">
												<span class="new">Best</span>
											</div>
										</div>
										<div class="product-body">

											<h3 class="cafe-name"><a href="#">GELANDE COFFE ROOM</a></h3>
											<h4 class="username">만득이 <p class="user-title">브론즈</p>
											</h4>
										<div class="product-btns">
									<button class="add-to-wishlist"><i class="fa fa-heart-o"></i><span class="tooltipp">add to wishlist</span></button>
									<button class="add-to-compare"><i class="fa-regular fa-bookmark"></i><span class="tooltipp">add to compare</span></button>
								</div>
									</div>
									<div class="add-to-cart">
												<button class="add-to-cart-btn"><i class="fa-solid fa-magnifying-glass"></i> 자세히 보기</button>
							</div>
								</div>
							</div>
							<!-- /product -->

							
						</div>
						<!-- /store products -->

						<!-- store bottom filter -->
						<div class="store-filter clearfix"
						style="justify-content: center; display: flex;">
						<ul class="store-pagination">
							<li class="active">1</li>


						</ul>
					</div>
						<!-- /store bottom filter -->
					</div>
					<!-- /STORE -->
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /SECTION -->		

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
