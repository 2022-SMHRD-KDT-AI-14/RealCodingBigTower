<%@page import="com.smhrd.model.Post"%>
<%@page import="java.util.List"%>
<%@page import="com.smhrd.model.PostDAO"%>
<%@page import="com.smhrd.model.Member"%>
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
	<link type="text/css" rel="stylesheet" href="assets/css/bootstrap.min.css" />

	<!-- Slick -->
	<link type="text/css" rel="stylesheet" href="assets/css/slick.css" />
	<link type="text/css" rel="stylesheet" href="assets/css/slick-theme.css" />

	<!-- nouislider -->
	<link type="text/css" rel="stylesheet" href="assets/css/nouislider.min.css" />

	<!-- Font Awesome Icon -->
	<script src="https://kit.fontawesome.com/26bde3c27f.js" crossorigin="anonymous"></script>

	<!-- Custom stlylesheet -->
	<link type="text/css" rel="stylesheet" href="assets/css/style2.css" />


	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
		  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
		  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->

</head>
<% /* HttpSession session1 = request.getSession();
Member loginMember = (Member)session.getAttribute("loginMember");

String u_nick = loginMember.getU_nick();
String u_email = loginMember.getU_email(); */

/* List<Post> postlist = null;
PostDAO postdao = new PostDAO();
postlist = postdao.selectAllLikePostlist();
postlist = postdao.selectAllLikePostlist2(); */

%>

<body>



	<!-- HEADER -->
	<header>
		<!-- TOP HEADER -->
		<div id="top-header">
			<div class="container">
				
				<!-- <ul class="header-links pull-left">
					<li><a href="#"><i class="fa fa-phone"></i> 062-655-1616</a></li>
					<li><a href="#"><i class="fa fa-envelope-o"></i> cfy0502@email.com</a></li>
					<li><a href="#"><i class="fa fa-map-marker"></i> 동구 예술길 31-15</a></li>
				</ul> -->
				
				
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
								<a a onclick="location.href='P2bias.jsp';" style="cursor: pointer">
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
	<!-- ============================================================================== -->
	<!-- SECTION -->
	<div class="side-bar">
		<!-- container -->
		<div class="container">
			<div class="row">
				<div class="col-md-4 col-xs-6">
					<div class="section-title">
						<h4 class="title">Editer</h4>
						<div class="section-nav">
							<div id="slick-nav-5" class="products-slick-nav"></div>
						</div>
					</div>

					<div class="products-widget-slick" data-nav="#slick-nav-5">
						<div>
							<!-- product widget -->
							<div class="product-widget">
								<div class="profile-image">
									<img src="images/profile.png" alt="">
								</div>
								<div class="product-body">
									<h4 class="username">만득이<p class="user-title">브론즈</p>
									</h4>
								</div>
							</div>
							<!-- /product widget -->

							<!-- product widget -->
							<div class="product-widget">
								<div class="profile-image">
									<img src="images/moju.jpg" alt="">
								</div>
								<div class="product-body">
									<h4 class="username">프론트 담당<p class="user-title">앞마당이 좋아</p>
									</h4>
								</div>
							</div>
							<!-- /product widget -->

							<!-- product widget -->
							<div class="product-widget">
								<div class="profile-image">
									<img src="images/image7.png" alt="">
								</div>
								<div class="product-body">
									<h4 class="username">분대장<p class="user-title">집돌이</p>
									</h4>
								</div>
							</div>
							<!-- /product widget -->


				</div>
			</div>
		</div>

	</div>
	<!-- /row -->
	</div>
	<!-- /container -->
	</div>
	<!-- /SECTION -->
	<!-- ======================================================================= -->
	<!-- SECTION -->
	<div class="section">
		<!-- container -->
		<div class="container">
			<!-- row -->
			<div class="row">

				<!-- section title -->
				<div class="col-md-12">
					<div class="section-title">
						<h3 class="title">Best post</h3>
					</div>
				</div>
				<!-- /section title -->

				<!-- Products tab & slick -->
				<div class="col-md-12">
					<div class="row">
						<div class="products-tabs">
							<!-- tab -->
							<div id="tab1" class="tab-pane active">
								<div class="products-slick" data-nav="#slick-nav-1">
									<!-- product -->
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
												<button class="add-to-wishlist"><i class="fa fa-heart-o"></i><span
														class="tooltipp">add to wishlist</span></button>
												<button class="add-to-compare"><i
														class="fa-regular fa-bookmark"></i><span class="tooltipp">add to
														compare</span></button>

											</div>
										</div>
										<div class="add-to-cart">
											<button class="add-to-cart-btn"><i class="fa-solid fa-magnifying-glass"></i>
												자세히 보기</button>
										</div>
									</div>
									<!-- /product -->

									<!-- product -->
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
												<button class="add-to-wishlist"><i class="fa fa-heart-o"></i><span
														class="tooltipp">add to wishlist</span></button>
												<button class="add-to-compare"><i
														class="fa-regular fa-bookmark"></i><span class="tooltipp">add to
														compare</span></button>

											</div>
										</div>
										<div class="add-to-cart">
											<button class="add-to-cart-btn"><i class="fa-solid fa-magnifying-glass"></i>
												자세히 보기</button>
										</div>
									</div>
									<!-- /product -->


									<!-- product -->
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
												<button class="add-to-wishlist"><i class="fa fa-heart-o"></i><span
														class="tooltipp">add to wishlist</span></button>
												<button class="add-to-compare"><i
														class="fa-regular fa-bookmark"></i><span class="tooltipp">add to
														compare</span></button>

											</div>
										</div>
										<div class="add-to-cart">
											<button class="add-to-cart-btn"><i class="fa-solid fa-magnifying-glass"></i>
												자세히 보기</button>
										</div>
									</div>
									<!-- /product -->

									<!-- product -->
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
												<button class="add-to-wishlist"><i class="fa fa-heart-o"></i><span
														class="tooltipp">add to wishlist</span></button>
												<button class="add-to-compare"><i
														class="fa-regular fa-bookmark"></i><span class="tooltipp">add to
														compare</span></button>

											</div>
										</div>
										<div class="add-to-cart">
											<button class="add-to-cart-btn"><i class="fa-solid fa-magnifying-glass"></i>
												자세히 보기</button>
										</div>
									</div>
									<!-- /product -->

									<!-- product -->
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
												<button class="add-to-wishlist"><i class="fa fa-heart-o"></i><span
														class="tooltipp">add to wishlist</span></button>
												<button class="add-to-compare"><i
														class="fa-regular fa-bookmark"></i><span class="tooltipp">add to
														compare</span></button>

											</div>
										</div>
										<div class="add-to-cart">
											<button class="add-to-cart-btn"><i class="fa-solid fa-magnifying-glass"></i>
												자세히 보기</button>
										</div>
									</div>
									<!-- /product -->

								</div>
								<div id="slick-nav-1" class="products-slick-nav"></div>
							</div>
							<!-- /tab -->
						</div>
					</div>
				</div>
				<!-- Products tab & slick -->
			</div>
			<!-- /row -->
		</div>
		<!-- /container -->
	</div>
	<!-- /SECTION -->


	<!-- SECTION -->
	<div class="section">
		<!-- container -->
		<div class="container">
			<!-- row -->
			<div class="row">

				<!-- section title -->
				<div class="col-md-12">
					<div class="section-title">
						<h3 class="title">user post!</h3>
					</div>
				</div>
				<!-- /section title -->

				<!-- Products tab & slick -->
				<div class="col-md-12">
					<div class="row">
						<div class="products-tabs">
							<!-- tab -->
							<div id="tab2" class="tab-pane fade in active">
								<div class="products-slick" data-nav="#slick-nav-2">

									<!-- product -->
									<div class="product">
										<div class="product-img">
											<img src="https://search.pstatic.net/common/?autoRotate=true&type=w560_sharpen&src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTEwMzBfMjAz%2FMDAxNjM1NTgwMDgxNjI4.zZiZn-IUE7xwqBjPS6N6hbNM40sRAlnglrKipztS9usg.7xvI6qtTBzj9MRp802YAfqGe1L6WGO4ZJur6DVArxxkg.JPEG.rkdldhtm%2FIMG_5034.jpg"
												alt="">
												<div class="product-label">
												<span class="new">Best</span>
											</div>
										
										</div>
										<div class="product-body">

											<h3 class="cafe-name"><a href="#">Blck</a></h3>
											<h4 class="username">분대장 <p class="user-title">집돌이</p>
											</h4>
											<div class="cafe-rating">
												<a>4.88</a><i class="fa fa-star"></i>
											</div>
											<div class="product-btns">
												<button class="add-to-wishlist"><i class="fa fa-heart-o"></i><span
														class="tooltipp">add to wishlist</span></button>
												<button class="add-to-compare"><i
														class="fa-regular fa-bookmark"></i><span class="tooltipp">add to
														compare</span></button>

											</div>
										</div>
										<div class="add-to-cart">
											<button class="add-to-cart-btn"><i class="fa-solid fa-magnifying-glass"></i>
												자세히 보기</button>
										</div>
									</div>
									<!-- /product -->

									<!-- product -->
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
												<button class="add-to-wishlist"><i class="fa fa-heart-o"></i><span
														class="tooltipp">add to wishlist</span></button>
												<button class="add-to-compare"><i
														class="fa-regular fa-bookmark"></i><span class="tooltipp">add to
														compare</span></button>

											</div>
										</div>
										<div class="add-to-cart">
											<button class="add-to-cart-btn"><i class="fa-solid fa-magnifying-glass"></i>
												자세히 보기</button>
										</div>
									</div>
									<!-- /product -->

									<!-- product -->
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
												<button class="add-to-wishlist"><i class="fa fa-heart-o"></i><span
														class="tooltipp">add to wishlist</span></button>
												<button class="add-to-compare"><i
														class="fa-regular fa-bookmark"></i><span class="tooltipp">add to
														compare</span></button>

											</div>
										</div>
										<div class="add-to-cart">
											<button class="add-to-cart-btn"><i class="fa-solid fa-magnifying-glass"></i>
												자세히 보기</button>
										</div>
									</div>
									<!-- /product -->

									<!-- product -->
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
											<div class="cafe-rating">
												<a>4.65</a><i class="fa fa-star"></i>
											</div>
											<div class="product-btns">
												<button class="add-to-wishlist"><i class="fa fa-heart-o"></i><span
														class="tooltipp">add to wishlist</span></button>
												<button class="add-to-compare"><i
														class="fa-regular fa-bookmark"></i><span class="tooltipp">add to
														compare</span></button>

											</div>
										</div>
										<div class="add-to-cart">
											<button class="add-to-cart-btn"><i class="fa-solid fa-magnifying-glass"></i>
												자세히 보기</button>
										</div>
									</div>
									<!-- /product -->

									<!-- product -->
									<div class="product">
										<div class="product-img">
											<img src="https://search.pstatic.net/common/?autoRotate=true&type=w560_sharpen&src=http%3A%2F%2Fblogfiles.naver.net%2F20140729_286%2Fby2man_1406614985332T4fSP_JPEG%2FDSCF8099%2528b%2529.jpg"
												alt="">
											<div class="product-label">
												<span class="new">Best</span>
											</div>
										</div>
										<div class="product-body">

											<h3 class="cafe-name"><a href="#">플로리다</a></h3>
											<h4 class="username">프론트담당 <p class="user-title">앞마당이 좋아</p>
											</h4>
											<div class="cafe-rating">
												<a>4.58</a><i class="fa fa-star"></i>
											</div>
											<div class="product-btns">
												<button class="add-to-wishlist"><i class="fa fa-heart-o"></i><span
														class="tooltipp">add to wishlist</span></button>
												<button class="add-to-compare"><i
														class="fa-regular fa-bookmark"></i><span class="tooltipp">add to
														compare</span></button>

											</div>
										</div>
										<div class="add-to-cart">
											<button class="add-to-cart-btn"><i class="fa-solid fa-magnifying-glass"></i>
												자세히 보기</button>
										</div>
									</div>
									<!-- /product -->

								</div>
								<div id="slick-nav-2" class="products-slick-nav"></div>
							</div>
							<!-- /tab -->
						</div>
					</div>
					<!-- =========================두번째 라인 경계선============================================================ -->
				</div>
				<!-- /Products tab & slick -->
			</div>
			<!-- /row -->
		</div>
		<!-- /container -->
	</div>
	<!-- /SECTION -->
	<!-- ===========================================두번째 라인 끝======================================================== -->
	<!-- SECTION -->
	<div class="section">
		<!-- container -->
		<div class="container">
			<!-- row -->
			<div class="row">

				<!-- section title -->
				<div class="col-md-12">
					<div class="section-title">
						<h3 class="title">cafe info</h3>
					</div>
				</div>
				<!-- /section title -->

				<!-- Products tab & slick -->
				<div class="col-md-12">
					<div class="row">
						<div class="products-tabs">
							<!-- tab -->
							<div id="tab2" class="tab-pane fade in active">
								<div class="products-slick" data-nav="#slick-nav-3">

									<!-- product -->
									<div class="product">
										<div class="product-img">
											<img src="https://search.pstatic.net/common/?autoRotate=true&type=w560_sharpen&src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTA0MTNfMjY1%2FMDAxNjE4Mjg1NTI5MTY3.PbN8McVOQdSc33JaTEinlFChtoSOQSgTk71bxPZjzzgg.RsHO0JO_5-tUD2UJU3GNwPsJNrvLV6H0HwvvBAUMqD4g.JPEG.yujinkim0829%2FIMG_0223.jpg"
												alt="">

										</div>
										<div class="product-body">

											<h4 class="username">Tone 
											</h4>
											<div class="cafe-rating">
												<a>4.48</a><i class="fa fa-star"></i>
											</div>
											<div class="product-btns">
												<button class="add-to-wishlist"><i class="fa fa-heart-o"></i><span
														class="tooltipp">add to wishlist</span></button>
												<button class="add-to-compare"><i
														class="fa-regular fa-bookmark"></i><span class="tooltipp">add to
														compare</span></button>

											</div>
										</div>
										<div class="add-to-cart">
											<button class="add-to-cart-btn"><i class="fa-solid fa-magnifying-glass"></i>
												자세히 보기</button>
										</div>
									</div>
									<!-- /product -->

									<!-- product -->
									<div class="product">
										<div class="product-img">
											<img src="https://search.pstatic.net/common/?autoRotate=true&type=w560_sharpen&src=https%3A%2F%2Fmyplace-phinf.pstatic.net%2F20210830_81%2F1630319008119TG4br_JPEG%2Fupload_57f5be47e1bf4afd38f42ad7933945ac.jpeg"
												alt="">

										</div>
										<div class="product-body">

											<h4 class="username">VIVID 
											</h4>
											<div class="cafe-rating">
												<a>4.44</a><i class="fa fa-star"></i>
											</div>
											<div class="product-btns">
												<button class="add-to-wishlist"><i class="fa fa-heart-o"></i><span
														class="tooltipp">add to wishlist</span></button>
												<button class="add-to-compare"><i
														class="fa-regular fa-bookmark"></i><span class="tooltipp">add to
														compare</span></button>

											</div>
										</div>
										<div class="add-to-cart">
											<button class="add-to-cart-btn"><i class="fa-solid fa-magnifying-glass"></i>
												자세히 보기</button>
										</div>
									</div>
									<!-- /product -->

									<!-- product -->
									<div class="product">
										<div class="product-img">
											<img src="https://search.pstatic.net/common/?autoRotate=true&type=w560_sharpen&src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20220414_258%2F1649924755278Vn3qy_JPEG%2FIMG_5975.jpg"
												alt="">

										</div>
										<div class="product-body">

											<h4 class="username">GATHERING 
											</h4>
											<div class="cafe-rating">
												<a>4.42</a><i class="fa fa-star"></i>
											</div>
											<div class="product-btns">
												<button class="add-to-wishlist"><i class="fa fa-heart-o"></i><span
														class="tooltipp">add to wishlist</span></button>
												<button class="add-to-compare"><i
														class="fa-regular fa-bookmark"></i><span class="tooltipp">add to
														compare</span></button>

											</div>
										</div>
										<div class="add-to-cart">
											<button class="add-to-cart-btn"><i class="fa-solid fa-magnifying-glass"></i>
												자세히 보기</button>
										</div>
									</div>
									<!-- /product -->

									<!-- product -->
									<div class="product">
										<div class="product-img">
											<img src="https://search.pstatic.net/common/?autoRotate=true&type=w560_sharpen&src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMDA1MTBfMjU0%2FMDAxNTg5MDM3MzUzNTcw.Nm6R208Qh9eI2RP0LfohiL-rYL0uFfK8jx3l7fUeCCMg.Zh3v-5PzjO1CPIhzfOqXvBJPW5a_vFhbMwah6tFdXO8g.JPEG.dmsek753%2FSE-a14769cb-804e-4851-aea9-5b2b0756ede7.jpg"
												alt="">

										</div>
										<div class="product-body">

											<h4 class="username">카페 동심 											</h4>
											<div class="cafe-rating">
												<a>4.33</a><i class="fa fa-star"></i>
											</div>
											<div class="product-btns">
												<button class="add-to-wishlist"><i class="fa fa-heart-o"></i><span
														class="tooltipp">add to wishlist</span></button>
												<button class="add-to-compare"><i
														class="fa-regular fa-bookmark"></i><span class="tooltipp">add to
														compare</span></button>

											</div>
										</div>
										<div class="add-to-cart">
											<button class="add-to-cart-btn"><i class="fa-solid fa-magnifying-glass"></i>
												자세히 보기</button>
										</div>
									</div>
									<!-- /product -->

									<!-- product -->
									<div class="product">
										<div class="product-img">
											<img src="https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20201220_249%2F1608451305801PaSL1_JPEG%2FBQ1ryYCW9jysiHJY-PqGwa_m.jpeg.jpg"
												alt="">

										</div>
										<div class="product-body">

											<h4 class="username">EARTH COFFE 
											</h4>
											<div class="cafe-rating">
												<a>4.67</a><i class="fa fa-star"></i>
											</div>
											<div class="product-btns">
												<button class="add-to-wishlist"><i class="fa fa-heart-o"></i><span
														class="tooltipp">add to wishlist</span></button>
												<button class="add-to-compare"><i
														class="fa-regular fa-bookmark"></i><span class="tooltipp">add to
														compare</span></button>

											</div>
										</div>
										<div class="add-to-cart">
											<button class="add-to-cart-btn"><i class="fa-solid fa-magnifying-glass"></i>
												자세히 보기</button>
										</div>
									</div>
									<!-- /product -->

								</div>
								<div id="slick-nav-3" class="products-slick-nav"></div>
							</div>
							<!-- /tab -->
						</div>
					</div>
				</div>
				<!-- /Products tab & slick -->
			</div>
			<!-- /row -->
		</div>
		<!-- /container -->
	</div>
	<!-- /SECTION -->
	<!-- ========================= footer 시작============================================================ -->

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
		$(function () {
			$("#topBtn").click(function () {
				$('html, body').animate({
					scrollTop: 0
				}, 400);
				return false;
			});
		});		
	</script>

</body>

</html>