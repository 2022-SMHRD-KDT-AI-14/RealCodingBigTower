<%@page import="com.smhrd.model.Post"%>
<%@page import="java.util.List"%>
<%@page import="com.smhrd.model.PostDAO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
	<head>
	<meta charset="EUC-KR">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		 <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
		
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
		<link
		href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap"
		rel="stylesheet">


		<title>My post</title>

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
    <jsp:useBean id="PostDAO" class="com.smhrd.model.PostDAO"/>
    <c:set var="Post" value="${PostDAO.selectOne(param.num)}"/>
    <!-- url에 심어진 param을 가져온다 -->
	<body>
		<%
		PostDAO dao = new PostDAO();
		List<Post> list = dao.selectAllPostlist();
		String nick = (String)request.getAttribute("nick");
		String utitle = (String)request.getAttribute("title");
	%>
		<!-- HEADER -->
		<header>
			<!-- TOP HEADER -->
			<div id="top-header">
				<div class="container">
					<ul class="header-links pull-left">
						<li><a href="#"><i class="fa fa-phone"></i> 062-655-1616</a></li>
						<li><a href="#"><i class="fa fa-envelope-o"></i> cfy0502@email.com</a></li>
						<li><a href="#"><i class="fa fa-map-marker"></i> 동구 예술길 31-15</a></li>
					</ul>
					<ul class="header-links pull-right">						
						<li><a href="#"><i class="fa fa-user-o"></i> My Account</a></li>
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
									<img src="images/LogoL_nokki2 (1).png" alt="">
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
									<button class="search-btn">Search</button>
								</form>
							</div>
						</div>
						<!-- /SEARCH BAR -->

						<!-- ACCOUNT -->
						<div class="col-md-3 clearfix">
							<div class="header-ctn">
								<!-- Wishlist -->
								<div>
									<a href="#">
										<i class="fa-regular fa-heart"></i>
										<!-- <i class="fa-solid fa-heart"></i> : 색깔 칠해진 하트 아이콘 -->
										<span>My Bias</span>
										<div class="qty">+</div>
									</a>
								</div>
								<!-- /Wishlist -->

								<!-- Cart -->
								<div class="dropdown">
									<a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true">
										<i class="fa-regular fa-bookmark"></i>
										<!-- <i class="fa-solid fa-bookmark"></i>  : 색깔 칠해진 북마크 아이콘 -->
										<span>Bookmark</span>
										<div class="qty">+</div>
									</a>
									<div class="bookmark-dropdown">
										<div class="cart-list">
											<div class="product-widget">
												<div class="product-img">
													<img src="https://search.pstatic.net/common/?autoRotate=true&type=w560_sharpen&src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20220414_247%2F16499247554904FiaY_JPEG%2FIMG_6060.jpg" alt="">
												</div>
												<div class="product-body">
													<h5 class="cafe-name"><a href="#">피자 맛집</a></h5>
													<h4 class="hashtag">#해시태그</h4>
												</div>
												<button class="delete"><i class="fa fa-close"></i></button>
											</div>

											<div class="product-widget">
												<div class="product-img">
													<img src="https://search.pstatic.net/common/?autoRotate=true&type=w560_sharpen&src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20220414_247%2F16499247554904FiaY_JPEG%2FIMG_6060.jpg" alt="">
												</div>
												<div class="product-body">
													<h5 class="cafe-name"><a href="#">피자 맛집</a></h5>
													<h4 class="hashtag">#해시태그</h4>
												</div>
												<button class="delete"><i class="fa fa-close"></i></button>
											</div>
										</div>									
										<div class="cart-btns">
											<a href="#">View Cart</a>
											<a href="#">Checkout  <i class="fa fa-arrow-circle-right"></i></a>
										</div>
									</div>
								</div>
								<!-- /Cart -->

								<!-- Menu Toogle -->
								<div class="menu-toggle">
									<a href="#">
										<i class="fa fa-bars"></i>
										<span>Menu</span>
									</a>
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
<form>
		<!-- BREADCRUMB -->
		<div id="breadcrumb" class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">
					<div class="col-md-12">
						<ul class="breadcrumb-tree">
							<li><a href="#">Home</a></li>
							<li><a href="#">All Cafe</a></li>
							<li><a href="#">데이트</a></li>
						<li class="active">${Post.title}</li> 
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
					<!-- Product main img -->
					<div class="col-md-5 col-md-push-2">
						<div id="product-main-img">
							<div class="product-preview">
								<div class="product-label">
									<span class="new">외부 사진</span>
								</div>
								<img src="img/${Post.filename1}" alt="">

							</div>

							<div class="product-preview">
								<div class="product-label">
									<span class="new">내부 사진</span>
								</div>
								<img src="img/${Post.filename2}" alt="">

							</div>

							<div class="product-preview">
								<div class="product-label">
									<span class="new">메인메뉴</span>
								</div>
								<img src="img/${Post.filename3}" alt="">

							</div>

								<div class="product-preview">
									<img src="img/${Post.filename4}" alt="">

							</div>
							
								<div class="product-preview">
									<img src="img/${Post.filename5}" alt="">

							</div>

						</div>
					</div>
					<!-- /Product main img -->

					<!-- Product thumb imgs -->
					<div class="col-md-2  col-md-pull-5">
						<div id="product-imgs">
							<div class="product-preview">
								<img src="img/${Post.filename1}" alt="">
								
							</div>

							<div class="product-preview">
								<img src="img/${Post.filename2}" alt="">
								
							
							</div>

							<div class="product-preview">
								<img src="img/${Post.filename3}" alt="">
								

							</div>

							<div class="product-preview">
								<img src="img/${Post.filename4}" alt="">

							</div>

							<div class="product-preview">
								<img src="img/${Post.filename5}" alt="">

							</div>
						</div>
					</div>
					<!-- /Product thumb imgs -->

					<!-- Product details -->
					<div class="col-md-5">
						<div class="product-details">
							<h2 class="cafe-name">${Post.title}</h2>
							<div>
								<div class="cafe-rating">
									네이버 평점 : 4.5<i class="fa fa-star"></i>
									 / 카카오 평점 : 4.5<i class="fa fa-star"></i>
								</div>
							</div>
							<div>
								<h3 class="username"><%=nick %><p class="user-title">게더링사장</p></h3>
							</div>

							<div>
								<p class="post-content-text">
								${Post.title}
								</p>
							</div>	

							<ul class="product-btns">
								<li><a href="#"><i class="fa-regular fa-heart"></i> add to Bias</a></li>
								<li><a href="#"><i class="fa fa-exchange"></i> add to compare</a></li>
							</ul>

							<ul class="product-links">
								<li>hashtags:</li>
								<li><a href="#">#깔끔함</a></li>
								<li><a href="#">#맛있는디저트</a></li>
							</ul>

							<ul class="product-links">
								<li>Share:</li>
								<li><a href="#"><i class="fa fa-facebook"></i></a></li>
								<li><a href="#"><i class="fa fa-twitter"></i></a></li>
								<li><a href="#"><i class="fa-brands fa-line"></i></a></li>
								<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
								<li><a href="#"><i class="fa fa-envelope"></i></a></li>
							</ul>

						</div>
					</div>
					<!-- /Product details -->

					<!-- Product tab -->
					<div class="col-md-12">
						<div id="product-tab">
							<!-- product tab nav -->
							<ul class="tab-nav">
								<li class="active"><a data-toggle="tab" href="#tab1">Description</a></li>
								<li><a data-toggle="tab" href="#tab2">Menu</a></li>
								<li><a data-toggle="tab" href="#tab3">Reviews (3)</a></li>
							</ul>
							<!-- /product tab nav -->

							<!-- product tab content -->
							<div class="tab-content">
								<!-- tab1  -->
								<div id="tab1" class="tab-pane fade in active">
									<div class="row">
										
										<div class="col-md-12">
											<div class="Cafe-info">
												<table class="table-description">
													<tr>
														<td class="tg-01">매장 소개</td>
														<td class="tg-02"><p style="white-space:normal;">
															40년 이상된 주택을 개조하였고,<br>
															아늑하고 세련된 인테리어와 정원의 조합이<br>
															만들어내는 공간이 참 예쁩니다.<br>
															<br>
															브런치,파스타,피자를<br>
															다양한 방식으로 해석해서<br>
															특별한 메뉴가 많습니다.<br>
															<br>
															그래서 4년 동안<br>
															꾸준히 사랑 받고 있는<br>
															동명동 핫플 게더링입니다!</p></td>
													 </tr>					
															
														<tr>
														   <td class="tg-01">매장 오픈 시간</td>
														   <td class="tg-02">11:00 ~ 00:00</td>
														</tr>														
														<tr>
														   <td class="tg-01">사이트 URL(지도)</td>
														   <td class="tg-02"><a href="https://map.naver.com/v5/search/%EB%8F%99%EB%AA%85%EB%8F%99%20%EA%B2%8C%EB%8D%94%EB%A7%81/place/1226619821?c=14129020.5725936,4184144.9438398,15,0,0,0,dh&isCorrectAnswer=true">게더링</a></td>
														</tr>
														<tr>
														   <td class="tg-01">애견동반</td>
														   <td class="tg-02">정보 없음</td>
														</tr>
														<tr>
														   <td class="tg-01">노키즈존</td>
														   <td class="tg-02">정보 없음</td>
														</tr>
														<tr>
														   <td class="tg-01">주소</td>
														   <td class="tg-02">광주 동구 동명동 71-1</td>
														</tr>
												</table>												
											</div>									
											
										</div>
									</div>
								</div>
								<!-- /tab1  -->

								<!-- tab2  -->
								<div id="tab2" class="tab-pane fade in">
									<div class="row">
										<div class="col-md-12" style="text-align: center;">
											<table class="table-description2">
													<tr >
														<th class="th-01-01">Menu</th>
														<th class="th-01-01">Price</th>
													</tr>
													<tr>
														<td class="tg-03">쓰리샷 아메리카노</td>
														<td class="tg-04">4,500</td>
													 </tr>																														
												</table>												
										</div>
									</div>
								</div>
								<!-- /tab2  -->

								<!-- tab3  -->
								<div id="tab3" class="tab-pane fade in">
									<div class="row">
										<!-- Rating -->
										<div class="col-md-3">
											<div id="rating">
												<div class="rating-avg">
													<span>4.5</span>
													<div class="rating-stars">
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star-o"></i>
													</div>
												</div>
												<ul class="rating">
													<li>
														<div class="rating-stars">
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
														</div>
														<div class="rating-progress">
															<div style="width: 80%;"></div>
														</div>
														<span class="sum">3</span>
													</li>
													<li>
														<div class="rating-stars">
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star-o"></i>
														</div>
														<div class="rating-progress">
															<div style="width: 60%;"></div>
														</div>
														<span class="sum">2</span>
													</li>
													<li>
														<div class="rating-stars">
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star-o"></i>
															<i class="fa fa-star-o"></i>
														</div>
														<div class="rating-progress">
															<div></div>
														</div>
														<span class="sum">0</span>
													</li>
													<li>
														<div class="rating-stars">
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star-o"></i>
															<i class="fa fa-star-o"></i>
															<i class="fa fa-star-o"></i>
														</div>
														<div class="rating-progress">
															<div></div>
														</div>
														<span class="sum">0</span>
													</li>
													<li>
														<div class="rating-stars">
															<i class="fa fa-star"></i>
															<i class="fa fa-star-o"></i>
															<i class="fa fa-star-o"></i>
															<i class="fa fa-star-o"></i>
															<i class="fa fa-star-o"></i>
														</div>
														<div class="rating-progress">
															<div></div>
														</div>
														<span class="sum">0</span>
													</li>
												</ul>
											</div>
										</div>
										<!-- /Rating -->

										<!-- Reviews -->
										<div class="col-md-6">
											<div id="reviews">
												<ul class="reviews">
													<li>
														<div class="review-heading">
															<h5 class="name">John</h5>
															<p class="date">27 DEC 2018, 8:0 PM</p>
															<div class="cafe-rating">
																<a>4</a><i class="fa fa-star"></i>
															</div>
														</div>
														<div class="review-body">
															<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua</p>
														</div>
													</li>
													<li>
														<div class="review-heading">
															<h5 class="name">John</h5>
															<p class="date">27 DEC 2018, 8:0 PM</p>
															<div class="cafe-rating">
																<a>4</a><i class="fa fa-star"></i>
															</div>
															
														</div>
														<div class="review-body">
															<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua</p>
														</div>
													</li>
													<li>
														<div class="review-heading">
															<h5 class="name">John</h5>
															<p class="date">27 DEC 2018, 8:0 PM</p>
															<div class="cafe-rating">
																<a>4</a><i class="fa fa-star"></i>
															</div>
														</div>
														<div class="review-body">
															<p></p>
														</div>
													</li>
												</ul>
												<ul class="reviews-pagination">
													<li class="active">1</li>
													<li><a href="#">2</a></li>
													<li><a href="#">3</a></li>
													<li><a href="#">4</a></li>
													<li><a href="#"><i class="fa fa-angle-right"></i></a></li>
												</ul>
											</div>
										</div>
										<!-- /Reviews -->

										<!-- Review Form -->
										<div class="col-md-3">
											<div id="review-form">
												<form class="review-form">
													<input class="input" type="text" placeholder="<%=nick %>">
													<input class="input" type="email" placeholder="Your Email">
													<textarea class="input" placeholder="Your Review"></textarea>
													<div class="input-rating">
														<span>Your Rating: </span>
														<div class="stars">
															<input id="star5" name="rating" value="5" type="radio"><label for="star5"></label>
															<input id="star4" name="rating" value="4" type="radio"><label for="star4"></label>
															<input id="star3" name="rating" value="3" type="radio"><label for="star3"></label>
															<input id="star2" name="rating" value="2" type="radio"><label for="star2"></label>
															<input id="star1" name="rating" value="1" type="radio"><label for="star1"></label>
														</div>
													</div>
													<button class="primary-btn" onclick="Comment()">Submit</button>
												</form>
											</div>
										</div>
										<!-- /Review Form -->
									</div>
								</div>
								<!-- /tab3  -->
							</div>
							<!-- /product tab content  -->
						</div>
					</div>
					<!-- /product tab -->
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /SECTION -->
</form>
		<!-- 최대 4개의 항복을 추가할것 -->
		<!-- Section -->
		<div class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">

					<div class="col-md-12">
						<div class="section-title text-center">
							<h3 class="title">Related Products</h3>
						</div>
					</div>

					<!-- product -->
					<div class="col-md-3 col-xs-6">
						<div class="product">
							<div class="product-img">
								<img src="https://lh5.googleusercontent.com/p/AF1QipMzILC2p167IoQtOda3IB8A-6UV5lZl9d5k2K38=w408-h408-k-no" alt="">								
							</div>
							<div class="product-body">
								<p class="product-category">Cafe Name</p>
								<h3 class="cafe-name"><a href="#">온클라우드나인</a></h3>
								<h4 class="username">준영님 <p class="user-title">다이아</p></h4>
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
					<div class="col-md-3 col-xs-6">
						<div class="product">
							<div class="product-img">
								<img src="https://search.pstatic.net/common/?autoRotate=true&quality=95&type=f180_180&src=https%3A%2F%2Fpup-review-phinf.pstatic.net%2FMjAyMjA3MTNfMzAw%2FMDAxNjU3NzA3MTgwMDk3.lFMoQ3k1iG26MvTHJLOrxPeSmHj8itX32QHIHtpNtzgg.ltKCvGjXwcvaMcg9Xdc7cpaCjvzQMnnYcbaPHo33JeEg.JPEG%2Fupload_6cde8735cdea3d0c2ccce172c9e559b4.jpeg" alt="">
								<div class="product-label">
									<span class="new">NEW</span>
								</div>
							</div>
							<div class="product-body">
								<p class="product-category">Cafe Name</p>
								<h3 class="cafe-name"><a href="#">티앗</a></h3>
								<h4 class="username">알마<p class="user-title">코드가 가장 쉬웠어요</p></h4>
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

					<div class="clearfix visible-sm visible-xs"></div>

					<!-- product -->
					<div class="col-md-3 col-xs-6">
						<div class="product">
							<div class="product-img">
								<img src="https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20220719_101%2F1658214402145LBO71_JPEG%2FC7767BCA-B383-4745-B69C-957A3515593C.jpeg" alt="">
							</div>
							<div class="product-body">
								<p class="product-category">Cafe Name</p>
								<h3 class="cafe-name"><a href="#">파트오브런던</a></h3>
								<h4 class="username">만득이 <p class="user-title">브론즈</p></h4>
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
					<div class="col-md-3 col-xs-6">
						<div class="product">
							<div class="product-img">
								<img src="https://lh5.googleusercontent.com/p/AF1QipMNhP3wcnvFg3VbaYbFNRC4uieMGHci8JOmqE4=w408-h270-k-no" alt="">
							</div>
							<div class="product-body">
								<p class="product-category">Cafe Name</p>
								<h3 class="cafe-name"><a href="#">갸또에카페</a></h3>
								<h4 class="username">분대장 <p class="user-title">분노조절잘해</p></h4>
								<div class="cafe-rating">
									<a>2</a><i class="fa fa-star"></i>
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

				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /Section -->		

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
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut.</p>
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
							<span class="copyright">
								<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
								Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
							<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
							</span>
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
		<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
		<img src="images/above_theapplication_thearrow_4431.png" alt="" id="topBtn">
<!-- TOPBTN -->
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
		<!-- /TOPBTN -->
		<script>
	function addComment(){
		let ta = $('textarea').val()
		$.ajax({
			// 요청 경로
			url : 'CommentCon',
			// 요청 데이터 (게시물 번호, 작성댓글)
			data : {'postnum' : ${param.num},'comment':ta},
			// 요청 방식(get,post)
			type : 'post',
			success : function(data){
				//alert(data) -> success / fail
				$('#reply').prepend('<li class="list-group-item"><span>'+ta+'/${loginVO.id}</span></li>')
			},
			error : function() {
				alert("통신 실패")
			}
		})
	}
</script>
	</body>
</html>
