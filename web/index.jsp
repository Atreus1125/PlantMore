<%--
//                         _ooOoo_
//                        o8888888o
//                        88" . "88
//                        (| -_- |)
//                         O\ = /O
//                     ____/`---'\____
//                   .   ' \\| |// `.
//                    / \\||| : |||// \
//                  / _||||| -:- |||||- \
//                    | | \\\ - /// | |
//                  | \_| ''\---/'' | |
//                   \ .-\__ `-` ___/-. /
//                ___`. .' /--.--\ `. . __
//             ."" '< `.___\_<|>_/___.' >'"".
//            | | : `- \`.;`\ _ /`;.`/ - ` : | |
//              \ \ `-. \_ __\ /__ _/ .-` / /
//      ======`-.____`-.___\_____/___.-`____.-'======
//                         `=---='
//
//      .............................................
//               佛祖保佑             永无BUG
-->
<%--
  Created by IntelliJ IDEA.
  User: 19931
  Date: 2021/5/29
  Time: 10:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://www.mldn.cn/c" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
	System.out.println("******index.jsp页面的basePath为" + basePath + "******");
%>

<!DOCTYPE html>
<html class="no-js" lang="zh">
<head>
	<base href="<%=basePath%>">
	<meta charset="utf-8">
	<meta http-equiv="x-ua-compatible" content="ie=edge">
	<title>PlantMore-校园绿植交易平台</title>
	<meta name="description" content="">
	<meta name="robots" content="noindex, follow"/>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="robots" content="noindex, follow"/>
	
	<!-- Place favicon.ico in the root directory -->
	<link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico">
	
	<!--All Css Here-->
	
	<!-- Bootstrap CSS-->
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<!-- Linearicon CSS-->
	<link rel="stylesheet" href="css/linearicons.min.css">
	<!-- Font Awesome CSS-->
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<!-- Animate CSS-->
	<link rel="stylesheet" href="css/animate.css">
	<!-- Owl Carousel CSS-->
	<link rel="stylesheet" href="css/owl.carousel.min.css">
	<!-- Slick CSS-->
	<link rel="stylesheet" href="css/slick.css">
	<!-- Meanmenu CSS-->
	<link rel="stylesheet" href="css/meanmenu.min.css">
	<!-- Easyzoom CSS-->
	<link rel="stylesheet" href="css/easyzoom.css">
	<!-- Venobox CSS-->
	<link rel="stylesheet" href="css/venobox.css">
	<!-- Jquery Ui CSS-->
	<link rel="stylesheet" href="css/jquery-ui.css">
	<!-- Nice Select CSS-->
	<link rel="stylesheet" href="css/nice-select.css">
	<!-- Style CSS -->
	<link rel="stylesheet" href="style.css">
	<!-- Responsive CSS -->
	<link rel="stylesheet" href="css/responsive.css">
	<!-- Modernizr Js -->
	<script src="js/vendor/modernizr-2.8.3.min.js"></script>
</head>
<body>
<div class="wrapper">
	<!--Header Area Start-->
	<header>
		<div class="header-container">
			<div class="header-area header-absolute header-sticky pt-30 pb-30">
				<div class="container-fluid pl-50 pr-50">
					<div class="row">
						<!--Header Logo Start-->
						<div class="col-lg-3 col-md-3">
							<div class="logo-area">
								<a href="index.html">
									<img src="img/logo/logo.png" alt="">
								</a>
							</div>
						</div>
						<!--Header Logo End-->
						
						<!--Header Menu And Mini Cart Start-->
						<div class="col-lg-9 col-md-9 text-lg-right">
							<!--Main Menu Area Start-->
							<div class="header-menu">
								<nav>
									<ul class="main-menu">
										<li><a href="index.jsp">商城首页</a></li>
										<li><a href="pages/front/goods/GoodsServletFront/list">商品列表</a></li>
										<li><a href="http://120.78.188.0/">企业博客</a></li>
										<c:if test="${mid == null}">
											<li><a href="pages/member_login.jsp">用户登录</a></li>
											<li><a href="pages/member_register.jsp">用户注册</a></li>
										</c:if>
										<c:if test="${mid != null}">
											<li><a href="pages/front/member/MemberInfoServletFront/updatePre">个人信息</a></li>
											<li><a href="pages/front/orders/OrdersServletFront/list">全部订单</a></li>
											<li><a href="pages/MemberServletFront/logout">安全退出</a></li>
											<li><img src="upload/member/${photo}" style="width:50px; height:50px;"></li>
										</c:if>
									</ul>
								</nav>
							</div>
							<!--Main Menu Area End-->
							
							<!--Header Option Start-->
							<c:if test="${mid != null}">
								<div class="header-option">
									<div class="mini-cart-search">
										<div class="mini-cart">
											<a href="pages/front/shopcar/ShopcarServletFront/list">
												<span class="cart-icon">
													<span class="cart-quantity">2</span>
												</span>
												<span class="cart-title">Your cart  <br><strong>$190.00</strong></span>
											</a>
										</div>
									</div>
								</div>
							</c:if>
							<!--Header Option End-->
						</div>
						<!--Header Menu And Mini Cart End-->
					</div>
					<div class="row">
						<div class="col-12">
							<!--Mobile Menu Area Start-->
							<div class="mobile-menu d-lg-none"></div>
							<!--Mobile Menu Area End-->
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>
	<!--Header Area End-->
	
	<!--Slider Area Start-->
	<div class="slider-area">
		<div class="hero-slider owl-carousel">
			<!--Single Slider Start-->
			<div class="single-slider" style="background-image: url(img/slider/home1-slider1.jpg)">
				<div class="slider-progress"></div>
				<div class="container">
					<div class="hero-slider-content">
						<h1>Perfect Plant <br> Sale In LookBook</h1>
						<div class="slider-border"></div>
						<p>Captain America: Civil War Christopher Markus and Stephen McFeely see the Hulk as the
							game
							over moment. </p>
						<div class="slider-btn">
							<a href="#">Shop Collection <i class="fa fa-chevron-right"></i></a>
						</div>
					</div>
				</div>
			</div>
			<!--Single Slider End-->
			<!--Single Slider Start-->
			<div class="single-slider" style="background-image: url(img/slider/home1-slider2.jpg)">
				<div class="slider-progress"></div>
				<div class="container">
					<div class="hero-slider-content">
						<h1>2018 Plant Trend</h1>
						<div class="slider-border"></div>
						<p>Captain America: Civil War Christopher Markus and Stephen McFeely see the Hulk as the
							game
							over moment. </p>
						<div class="slider-btn">
							<a href="#">Shop Collection <i class="fa fa-chevron-right"></i></a>
						</div>
					</div>
				</div>
			</div>
			<!--Single Slider End-->
		</div>
	</div>
	<!--Slider Area End-->
	
	<!--Feature Area Start-->
	<div class="feature-area mt-120">
		<div class="container">
			<div class="row">
				<div class="col-lg-4 col-md-6">
					<!--Single Feature Start-->
					<div class="single-feature mb-35">
						<div class="feature-icon">
							<span class="lnr lnr-rocket"></span>
						</div>
						<div class="feature-content">
							<h3>FREE SHIPPING</h3>
							<p>ALL ORDER OVER $100</p>
						</div>
					</div>
					<!--Single Feature End-->
				</div>
				<div class="col-lg-4 col-md-6">
					<!--Single Feature Start-->
					<div class="single-feature mb-35">
						<div class="feature-icon">
							<span class="lnr lnr-phone"></span>
						</div>
						<div class="feature-content">
							<h3>24/7 DEDICATED SUPPORT</h3>
							<p>0123 456 789</p>
						</div>
					</div>
					<!--Single Feature End-->
				</div>
				<div class="col-lg-4 col-md-6">
					<!--Single Feature Start-->
					<div class="single-feature mb-35">
						<div class="feature-icon">
							<span class="lnr lnr-redo"></span>
						</div>
						<div class="feature-content">
							<h3>MONEY BACK</h3>
							<p>IF THE ITEM DIDN’T SUIT YOU</p>
						</div>
					</div>
					<!--Single Feature End-->
				</div>
			</div>
		</div>
	</div>
	<!--Feature Area End-->
	
	<!--Our History Area Start-->
	<div class="our-history-area mt-85">
		<div class="container">
			<div class="row">
				<!--Section Title Start-->
				<div class="col-12">
					<div class="section-title text-center mb-35">
						<h2>Our History</h2>
						<span>A little story about us</span>
					</div>
				</div>
				<!--Section Title End-->
			</div>
			<div class="row">
				<div class="col-lg-8 ml-auto mr-auto">
					<div class="history-area-content text-center">
						<p><strong>Captain America: Civil War Christopher Markus and Stephen McFeely see the
							Hulk as the
							game over moment.</strong></p>
						<p>Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id
							quod mazim
							placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis
							in iis
							qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius
							quod ii
							legunt saepius. Claritas est etiam processus dynamicus. Phasellus eu rhoncus dolor,
							vitae
							scelerisque sapien</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--Our History Area End-->
	
	<!--Categories Area Start-->
	<div class="categories-area mt-115">
		<div class="container">
			<div class="row">
				<!--Section Title Start-->
				<div class="col-12">
					<div class="section-title text-center mb-35">
						<span>The Best collection</span>
						<h3>Shop By Categories</h3>
					</div>
				</div>
				<!--Section Title End-->
			</div>
		</div>
		<div class="container-fluid pl-50 pr-50">
			<div class="row">
				<div class="cat-1 col-md-4">
					<div class="categories-img img-full mb-30">
						<a href="#"><img src="img/category/home1-category-1.jpg" alt=""></a>
						<div class="categories-content">
							<h3>Potted Plant</h3>
							<h4>18 items</h4>
						</div>
					</div>
				</div>
				<div class="cat-2 col-md-8">
					<div class="row">
						<div class="cat-3 col-md-7">
							<div class="categories-img img-full mb-30">
								<a href="#"><img src="img/category/home1-category-2.jpg" alt=""></a>
								<div class="categories-content">
									<h3>Potted Plant</h3>
									<h4>18 items</h4>
								</div>
							</div>
						</div>
						<div class="cat-4 col-md-5">
							<div class="categories-img img-full mb-30">
								<a href="#"><img src="img/category/home1-category-3.jpg" alt=""></a>
								<div class="categories-content">
									<h3>Potted Plant</h3>
									<h4>18 items</h4>
								</div>
							</div>
						</div>
						<div class="cat-5 col-md-4">
							<div class="categories-img img-full mb-30">
								<a href="#"><img src="img/category/home1-category-4.jpg" alt=""></a>
								<div class="categories-content">
									<h3>Potted Plant</h3>
									<h4>18 items</h4>
								</div>
							</div>
						</div>
						<div class="cat-6 col-md-8">
							<div class="categories-img img-full mb-30">
								<a href="#"><img src="img/category/home1-category-5.jpg" alt=""></a>
								<div class="categories-content">
									<h3>Potted Plant</h3>
									<h4>18 items</h4>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--Categories Area End-->
	
	<!--Product Area Start-->
	<div class="product-area mt-85">
		<div class="container">
			<div class="row">
				<!--Section Title Start-->
				<div class="col-12">
					<div class="section-title text-center mb-35">
						<span>The Most Trendy</span>
						<h3>Featured Products</h3>
					</div>
				</div>
				<!--Section Title End-->
			</div>
			<div class="row">
				<div class="product-slider-active">
					<div class="col-md-3 col-lg-3 col-sm-4 col-xs-12">
						<!--Single Product Start-->
						<div class="single-product mb-25">
							<div class="product-img img-full">
								<a href="single-product.html">
									<img src="img/product/product1.jpg" alt="">
								</a>
								<span class="onsale">Sale!</span>
								<div class="product-action">
									<ul>
										<li><a href="#open-modal" data-toggle="modal" title="Quick view"><i
												class="fa fa-search"></i></a></li>
										<li><a href="#" title="Whishlist"><i class="fa fa-heart-o"></i></a></li>
										<li><a href="#" title="Compare"><i class="fa fa-refresh"></i></a></li>
									</ul>
								</div>
							</div>
							<div class="product-content">
								<h2><a href="single-product.html">Eleifend quam</a></h2>
								<div class="product-price">
									<div class="price-box">
										<span class="regular-price">$115.00</span>
									</div>
									<div class="add-to-cart">
										<a href="#">Add To Cart</a>
									</div>
								</div>
							</div>
						</div>
						<!--Single Product End-->
						<!--Single Product Start-->
						<div class="single-product mb-25">
							<div class="product-img img-full">
								<a href="single-product.html">
									<img src="img/product/product2.jpg" alt="">
								</a>
								<div class="product-action">
									<ul>
										<li><a href="#open-modal" data-toggle="modal" title="Quick view"><i
												class="fa fa-search"></i></a></li>
										<li><a href="#" title="Whishlist"><i class="fa fa-heart-o"></i></a></li>
										<li><a href="#" title="Compare"><i class="fa fa-refresh"></i></a></li>
									</ul>
								</div>
							</div>
							<div class="product-content">
								<h2><a href="single-product.html">Odio tortor consequat</a></h2>
								<div class="product-price">
									<div class="price-box">
										<span class="regular-price">$90.00</span>
									</div>
									<div class="add-to-cart">
										<a href="#">Add To Cart</a>
									</div>
								</div>
							</div>
						</div>
						<!--Single Product End-->
					</div>
					<div class="col-md-3 col-lg-3 col-sm-4 col-xs-12">
						<!--Single Product Start-->
						<div class="single-product mb-25">
							<div class="product-img img-full">
								<a href="single-product.html">
									<img src="img/product/product3.jpg" alt="">
								</a>
								<div class="product-action">
									<ul>
										<li><a href="#open-modal" data-toggle="modal" title="Quick view"><i
												class="fa fa-search"></i></a></li>
										<li><a href="#" title="Whishlist"><i class="fa fa-heart-o"></i></a></li>
										<li><a href="#" title="Compare"><i class="fa fa-refresh"></i></a></li>
									</ul>
								</div>
							</div>
							<div class="product-content">
								<h2><a href="single-product.html">Commodo dolor</a></h2>
								<div class="product-price">
									<div class="price-box">
										<span class="regular-price">$80.00</span>
									</div>
									<div class="add-to-cart">
										<a href="#">Add To Cart</a>
									</div>
								</div>
							</div>
						</div>
						<!--Single Product End-->
						<!--Single Product Start-->
						<div class="single-product mb-25">
							<div class="product-img img-full">
								<a href="single-product.html">
									<img src="img/product/product4.jpg" alt="">
								</a>
								<div class="product-action">
									<ul>
										<li><a href="#open-modal" data-toggle="modal" title="Quick view"><i
												class="fa fa-search"></i></a></li>
										<li><a href="#" title="Whishlist"><i class="fa fa-heart-o"></i></a></li>
										<li><a href="#" title="Compare"><i class="fa fa-refresh"></i></a></li>
									</ul>
								</div>
							</div>
							<div class="product-content">
								<h2><a href="single-product.html">Fusce tempor</a></h2>
								<div class="product-price">
									<div class="price-box">
										<span class="regular-price">$55.00</span>
									</div>
									<div class="add-to-cart">
										<a href="#">Add To Cart</a>
									</div>
								</div>
							</div>
						</div>
						<!--Single Product End-->
					</div>
					<div class="col-md-3 col-lg-3 col-sm-4 col-xs-12">
						<!--Single Product Start-->
						<div class="single-product mb-25">
							<div class="product-img img-full">
								<a href="single-product.html">
									<img src="img/product/product5.jpg" alt="">
								</a>
								<div class="product-action">
									<ul>
										<li><a href="#open-modal" data-toggle="modal" title="Quick view"><i
												class="fa fa-search"></i></a></li>
										<li><a href="#" title="Whishlist"><i class="fa fa-heart-o"></i></a></li>
										<li><a href="#" title="Compare"><i class="fa fa-refresh"></i></a></li>
									</ul>
								</div>
							</div>
							<div class="product-content">
								<h2><a href="single-product.html">Integer eget augue</a></h2>
								<div class="product-price">
									<div class="price-box">
										<span class="regular-price">$100.00</span>
									</div>
									<div class="add-to-cart">
										<a href="#">Add To Cart</a>
									</div>
								</div>
							</div>
						</div>
						<!--Single Product End-->
						<!--Single Product Start-->
						<div class="single-product mb-25">
							<div class="product-img img-full">
								<a href="single-product.html">
									<img src="img/product/product6.jpg" alt="">
								</a>
								<div class="product-action">
									<ul>
										<li><a href="#open-modal" data-toggle="modal" title="Quick view"><i
												class="fa fa-search"></i></a></li>
										<li><a href="#" title="Whishlist"><i class="fa fa-heart-o"></i></a></li>
										<li><a href="#" title="Compare"><i class="fa fa-refresh"></i></a></li>
									</ul>
								</div>
							</div>
							<div class="product-content">
								<h2><a href="single-product.html">Egestas dapibus</a></h2>
								<div class="product-price">
									<div class="price-box">
										<span class="regular-price">$55.00</span>
									</div>
									<div class="add-to-cart">
										<a href="#">Add To Cart</a>
									</div>
								</div>
							</div>
						</div>
						<!--Single Product End-->
					</div>
					<div class="col-md-3 col-lg-3 col-sm-4 col-xs-12">
						<!--Single Product Start-->
						<div class="single-product mb-25">
							<div class="product-img img-full">
								<a href="single-product.html">
									<img src="img/product/product7.jpg" alt="">
								</a>
								<div class="product-action">
									<ul>
										<li><a href="#open-modal" data-toggle="modal" title="Quick view"><i
												class="fa fa-search"></i></a></li>
										<li><a href="#" title="Whishlist"><i class="fa fa-heart-o"></i></a></li>
										<li><a href="#" title="Compare"><i class="fa fa-refresh"></i></a></li>
									</ul>
								</div>
							</div>
							<div class="product-content">
								<h2><a href="single-product.html">Auctor sem</a></h2>
								<div class="product-price">
									<div class="price-box">
										<span class="regular-price">$100.00</span>
									</div>
									<div class="add-to-cart">
										<a href="#">Add To Cart</a>
									</div>
								</div>
							</div>
						</div>
						<!--Single Product End-->
						<!--Single Product Start-->
						<div class="single-product mb-25">
							<div class="product-img img-full">
								<a href="single-product.html">
									<img src="img/product/product8.jpg" alt="">
								</a>
								<div class="product-action">
									<ul>
										<li><a href="#open-modal" data-toggle="modal" title="Quick view"><i
												class="fa fa-search"></i></a></li>
										<li><a href="#" title="Whishlist"><i class="fa fa-heart-o"></i></a></li>
										<li><a href="#" title="Compare"><i class="fa fa-refresh"></i></a></li>
									</ul>
								</div>
							</div>
							<div class="product-content">
								<h2><a href="single-product.html">Sapien libero</a></h2>
								<div class="product-price">
									<div class="price-box">
										<span class="regular-price">$82.00</span>
									</div>
									<div class="add-to-cart">
										<a href="#">Add To Cart</a>
									</div>
								</div>
							</div>
						</div>
						<!--Single Product End-->
					</div>
					<div class="col-md-3 col-lg-3 col-sm-4 col-xs-12">
						<!--Single Product Start-->
						<div class="single-product mb-25">
							<div class="product-img img-full">
								<a href="single-product.html">
									<img src="img/product/product9.jpg" alt="">
								</a>
								<div class="product-action">
									<ul>
										<li><a href="#open-modal" data-toggle="modal" title="Quick view"><i
												class="fa fa-search"></i></a></li>
										<li><a href="#" title="Whishlist"><i class="fa fa-heart-o"></i></a></li>
										<li><a href="#" title="Compare"><i class="fa fa-refresh"></i></a></li>
									</ul>
								</div>
							</div>
							<div class="product-content">
								<h2><a href="single-product.html">Pharetra sagittis</a></h2>
								<div class="product-price">
									<div class="price-box">
										<span class="regular-price">$100.00</span>
									</div>
									<div class="add-to-cart">
										<a href="#">Add To Cart</a>
									</div>
								</div>
							</div>
						</div>
						<!--Single Product End-->
						<!--Single Product Start-->
						<div class="single-product mb-25">
							<div class="product-img img-full">
								<a href="single-product.html">
									<img src="img/product/product10.jpg" alt="">
								</a>
								<div class="product-action">
									<ul>
										<li><a href="#open-modal" data-toggle="modal" title="Quick view"><i
												class="fa fa-search"></i></a></li>
										<li><a href="#" title="Whishlist"><i class="fa fa-heart-o"></i></a></li>
										<li><a href="#" title="Compare"><i class="fa fa-refresh"></i></a></li>
									</ul>
								</div>
							</div>
							<div class="product-content">
								<h2><a href="single-product.html">Turpis et iaculis</a></h2>
								<div class="product-price">
									<div class="price-box">
										<span class="regular-price">$65.00</span>
									</div>
									<div class="add-to-cart">
										<a href="#">Add To Cart</a>
									</div>
								</div>
							</div>
						</div>
						<!--Single Product End-->
					</div>
					<div class="col-md-3 col-lg-3 col-sm-4 col-xs-12">
						<!--Single Product Start-->
						<div class="single-product mb-25">
							<div class="product-img img-full">
								<a href="single-product.html">
									<img src="img/product/product11.jpg" alt="">
								</a>
								<div class="product-action">
									<ul>
										<li><a href="#open-modal" data-toggle="modal" title="Quick view"><i
												class="fa fa-search"></i></a></li>
										<li><a href="#" title="Whishlist"><i class="fa fa-heart-o"></i></a></li>
										<li><a href="#" title="Compare"><i class="fa fa-refresh"></i></a></li>
									</ul>
								</div>
							</div>
							<div class="product-content">
								<h2><a href="single-product.html">Sit amet felis</a></h2>
								<div class="product-price">
									<div class="price-box">
										<span class="regular-price">$90.00</span>
									</div>
									<div class="add-to-cart">
										<a href="#">Add To Cart</a>
									</div>
								</div>
							</div>
						</div>
						<!--Single Product End-->
						<!--Single Product Start-->
						<div class="single-product mb-25">
							<div class="product-img img-full">
								<a href="single-product.html">
									<img src="img/product/product12.jpg" alt="">
								</a>
								<div class="product-action">
									<ul>
										<li><a href="#open-modal" data-toggle="modal" title="Quick view"><i
												class="fa fa-search"></i></a></li>
										<li><a href="#" title="Whishlist"><i class="fa fa-heart-o"></i></a></li>
										<li><a href="#" title="Compare"><i class="fa fa-refresh"></i></a></li>
									</ul>
								</div>
							</div>
							<div class="product-content">
								<h2><a href="single-product.html">Lacus dignissim</a></h2>
								<div class="product-price">
									<div class="price-box">
										<span class="regular-price">$80.00</span>
									</div>
									<div class="add-to-cart">
										<a href="#">Add To Cart</a>
									</div>
								</div>
							</div>
						</div>
						<!--Single Product End-->
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--Product Area End-->
	
	<!--Product Countdown Area Start-->
	<div class="product-countdown-area mt-105 ml-50 mr-50">
		<div class="container">
			<div class="row">
				<!--Section Title Start-->
				<div class="col-12">
					<div class="section-title text-center mb-30">
						<h3>Deal of The Day</h3>
					</div>
				</div>
				<!--Section Title End-->
			</div>
			<div class="row">
				<div class="col-lg-8 col-md-10 col-12 ml-auto mr-auto mb-20">
					<!--Count Down Area Start-->
					<div class="count-down-area">
						<!--Count Down Start-->
						<div class="countdown-inner">
							<div class="count-box">
								<div class="pro-countdown" data-countdown="2033/10/01"></div>
							</div>
						</div>
						<!--Count Down End-->
						<!--Count Down Start-->
						<div class="countdown-inner">
							<div class="count-box">
								<div class="pro-countdown" data-countdown="2033/10/01"></div>
							</div>
						</div>
						<!--Count Down End-->
						<!--Count Down Start-->
						<div class="countdown-inner">
							<div class="count-box">
								<div class="pro-countdown" data-countdown="2033/10/01"></div>
							</div>
						</div>
						<!--Count Down End-->
						<!--Count Down Start-->
						<div class="countdown-inner">
							<div class="count-box">
								<div class="pro-countdown" data-countdown="2033/10/01"></div>
							</div>
						</div>
						<!--Count Down End-->
						<!--Count Down Start-->
						<div class="countdown-inner">
							<div class="count-box">
								<div class="pro-countdown" data-countdown="2033/10/01"></div>
							</div>
						</div>
						<!--Count Down End-->
					</div>
					<!--Count Down Area End-->
				</div>
			</div>
			<div class="row">
				<div class="offer-slider">
					<div class="col-md-4">
						<!--Single Product Start-->
						<div class="single-product mb-25">
							<div class="product-img img-full">
								<a href="single-product.html">
									<img src="img/product/product12.jpg" alt="">
								</a>
								<span class="onsale">Sale!</span>
								<div class="product-action">
									<ul>
										<li><a href="#open-modal" data-toggle="modal" title="Quick view"><i
												class="fa fa-search"></i></a></li>
										<li><a href="#" title="Whishlist"><i class="fa fa-heart-o"></i></a></li>
										<li><a href="#" title="Compare"><i class="fa fa-refresh"></i></a></li>
									</ul>
								</div>
							</div>
							<div class="product-content">
								<h2><a href="single-product.html">Sed sollicitudin</a></h2>
								<div class="product-price">
									<div class="price-box">
										<span class="regular-price">$40.00</span>
									</div>
									<div class="add-to-cart">
										<a href="#">Add To Cart</a>
									</div>
								</div>
							</div>
						</div>
						<!--Single Product End-->
					</div>
					<div class="col-md-4">
						<!--Single Product Start-->
						<div class="single-product mb-25">
							<div class="product-img img-full">
								<a href="single-product.html">
									<img src="img/product/product11.jpg" alt="">
								</a>
								<span class="onsale">Sale!</span>
								<div class="product-action">
									<ul>
										<li><a href="#open-modal" data-toggle="modal" title="Quick view"><i
												class="fa fa-search"></i></a></li>
										<li><a href="#" title="Whishlist"><i class="fa fa-heart-o"></i></a></li>
										<li><a href="#" title="Compare"><i class="fa fa-refresh"></i></a></li>
									</ul>
								</div>
							</div>
							<div class="product-content">
								<h2><a href="single-product.html">Diam vel neque</a></h2>
								<div class="product-price">
									<div class="price-box">
										<span class="regular-price">$40.00</span>
									</div>
									<div class="add-to-cart">
										<a href="#">Add To Cart</a>
									</div>
								</div>
							</div>
						</div>
						<!--Single Product End-->
					</div>
					<div class="col-md-4">
						<!--Single Product Start-->
						<div class="single-product mb-25">
							<div class="product-img img-full">
								<a href="single-product.html">
									<img src="img/product/product10.jpg" alt="">
								</a>
								<span class="onsale">Sale!</span>
								<div class="product-action">
									<ul>
										<li><a href="#open-modal" data-toggle="modal" title="Quick view"><i
												class="fa fa-search"></i></a></li>
										<li><a href="#" title="Whishlist"><i class="fa fa-heart-o"></i></a></li>
										<li><a href="#" title="Compare"><i class="fa fa-refresh"></i></a></li>
									</ul>
								</div>
							</div>
							<div class="product-content">
								<h2><a href="single-product.html">Aliquet auctor sem</a></h2>
								<div class="product-price">
									<div class="price-box">
										<span class="regular-price">$50.00</span>
									</div>
									<div class="add-to-cart">
										<a href="#">Add To Cart</a>
									</div>
								</div>
							</div>
						</div>
						<!--Single Product End-->
					</div>
					<div class="col-md-4">
						<!--Single Product Start-->
						<div class="single-product mb-25">
							<div class="product-img img-full">
								<a href="single-product.html">
									<img src="img/product/product9.jpg" alt="">
								</a>
								<span class="onsale">Sale!</span>
								<div class="product-action">
									<ul>
										<li><a href="#open-modal" data-toggle="modal" title="Quick view"><i
												class="fa fa-search"></i></a></li>
										<li><a href="#" title="Whishlist"><i class="fa fa-heart-o"></i></a></li>
										<li><a href="#" title="Compare"><i class="fa fa-refresh"></i></a></li>
									</ul>
								</div>
							</div>
							<div class="product-content">
								<h2><a href="single-product.html">Turpis et iaculis</a></h2>
								<div class="product-price">
									<div class="price-box">
										<span class="regular-price">$65.00</span>
									</div>
									<div class="add-to-cart">
										<a href="#">Add To Cart</a>
									</div>
								</div>
							</div>
						</div>
						<!--Single Product End-->
					</div>
					<div class="col-md-4">
						<!--Single Product Start-->
						<div class="single-product mb-25">
							<div class="product-img img-full">
								<a href="single-product.html">
									<img src="img/product/product13.jpg" alt="">
								</a>
								<span class="onsale">Sale!</span>
								<div class="product-action">
									<ul>
										<li><a href="#open-modal" data-toggle="modal" title="Quick view"><i
												class="fa fa-search"></i></a></li>
										<li><a href="#" title="Whishlist"><i class="fa fa-heart-o"></i></a></li>
										<li><a href="#" title="Compare"><i class="fa fa-refresh"></i></a></li>
									</ul>
								</div>
							</div>
							<div class="product-content">
								<h2><a href="single-product.html">Sociis natoque</a></h2>
								<div class="product-price">
									<div class="price-box">
										<span class="regular-price">$40.00</span>
									</div>
									<div class="add-to-cart">
										<a href="#">Add To Cart</a>
									</div>
								</div>
							</div>
						</div>
						<!--Single Product End-->
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--Product Countdown Area End-->
	
	<!--Banner Area Start-->
	<div class="banner-area pt-105">
		<div class="container-fluid pl-50 pr-50">
			<div class="row">
				<div class="col-md-4">
					<!--Single Banner Area Start-->
					<div class="single-banner mb-35">
						<div class="banner-img">
							<a href="#">
								<img src="img/banner/banner1.jpg" alt="">
							</a>
						</div>
					</div>
					<!--Single Banner Area End-->
				</div>
				<div class="col-md-4">
					<!--Single Banner Area Start-->
					<div class="single-banner mb-35">
						<div class="banner-img">
							<a href="#">
								<img src="img/banner/banner2.jpg" alt="">
							</a>
						</div>
					</div>
					<!--Single Banner Area End-->
				</div>
				<div class="col-md-4">
					<!--Single Banner Area Start-->
					<div class="single-banner mb-35">
						<div class="banner-img">
							<a href="#">
								<img src="img/banner/banner3.jpg" alt="">
							</a>
						</div>
					</div>
					<!--Single Banner Area End-->
				</div>
			</div>
		</div>
	</div>
	<!--Banner Area End-->
	
	<!--Testimonial Area Start-->
	<div class="testimonial-area mt-75">
		<div class="container">
			<div class="row">
				<!--Section Title Start-->
				<div class="col-12">
					<div class="section-title text-center mb-35">
						<span>We love our clients</span>
						<h3>What They’re Saying</h3>
					</div>
				</div>
				<!--Section Title End-->
			</div>
			<div class="row testimonial-active owl-carousel">
				<div class="col-12">
					<!--Single Testimonial Start-->
					<div class="single-testimonial text-center">
						<div class="testimonial-img">
							<img src="img/testimonial/testimonial3.jpg" alt="">
						</div>
						<div class="testimonial-content">
							<p>These guys have been absolutely outstanding. Perfect Themes and the best of all
								that you
								have many options to choose! Best Support team ever! Very fast responding! Thank
								you
								very much! I highly recommend this theme and these people!</p>
							<div class="testimonial-author">
								<h6>Katherine Sullivan <span>Customer</span></h6>
							</div>
						</div>
					</div>
					<!--Single Testimonial End-->
				</div>
				<div class="col-12">
					<!--Single Testimonial Start-->
					<div class="single-testimonial text-center">
						<div class="testimonial-img">
							<img src="img/testimonial/testimonial2.jpg" alt="">
						</div>
						<div class="testimonial-content">
							<p>These guys have been absolutely outstanding. Perfect Themes and the best of all
								that you
								have many options to choose! Best Support team ever! Very fast responding! Thank
								you
								very much! I highly recommend this theme and these people!</p>
							<div class="testimonial-author">
								<h6>Md Shohel <span>Customer</span></h6>
							</div>
						</div>
					</div>
					<!--Single Testimonial End-->
				</div>
				<div class="col-12">
					<!--Single Testimonial Start-->
					<div class="single-testimonial text-center">
						<div class="testimonial-img">
							<img src="img/testimonial/testimonial1.jpg" alt="">
						</div>
						<div class="testimonial-content">
							<p>These guys have been absolutely outstanding. Perfect Themes and the best of all
								that you
								have many options to choose! Best Support team ever! Very fast responding! Thank
								you
								very much! I highly recommend this theme and these people!</p>
							<div class="testimonial-author">
								<h6>Katherine Sullivan <span>Customer</span></h6>
							</div>
						</div>
					</div>
					<!--Single Testimonial End-->
				</div>
			</div>
		</div>
	</div>
	<!--Testimonial Area End-->
	
	<!--Brand Area Start-->
	<div class="brand-area mb-105">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="brand-active">
						<div class="single-brand img-full"><a href="#"><img src="img/brand/brand1.png" alt=""></a></div>
						<div class="single-brand img-full"><a href="#"><img src="img/brand/brand2.png" alt=""></a></div>
						<div class="single-brand img-full"><a href="#"><img src="img/brand/brand3.png" alt=""></a></div>
						<div class="single-brand img-full"><a href="#"><img src="img/brand/brand4.png" alt=""></a></div>
						<div class="single-brand img-full"><a href="#"><img src="img/brand/brand5.png" alt=""></a></div>
						<div class="single-brand img-full"><a href="#"><img src="img/brand/brand1.png" alt=""></a></div>
						<div class="single-brand img-full"><a href="#"><img src="img/brand/brand2.png" alt=""></a></div>
						<div class="single-brand img-full"><a href="#"><img src="img/brand/brand3.png" alt=""></a></div>
						<div class="single-brand img-full"><a href="#"><img src="img/brand/brand4.png" alt=""></a></div>
						<div class="single-brand img-full"><a href="#"><img src="img/brand/brand5.png" alt=""></a></div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--Brand Area End-->
	
	<!--Blog Area Start-->
	<div class="blog-area ml-50 mr-50 mt-105">
		<div class="container">
			<div class="row">
				<!--Section Title Start-->
				<div class="col-12">
					<div class="section-title text-center mb-35">
						<span>From The Blogs</span>
						<h3>Our Latest Posts</h3>
					</div>
				</div>
				<!--Section Title End-->
			</div>
			<div class="row">
				<div class="blog-slider-active">
					<div class="col-md-4">
						<!--Single Blog Start-->
						<div class="single-blog">
							<div class="blog-img img-full">
								<a href="single-blog.html">
									<img src="img/blog/blog1.jpg" alt="">
								</a>
							</div>
							<div class="blog-content">
								<div class="post-date">01/12/2018</div>
								<h3 class="post-title"><a href="single-blog.html">Blog image post</a></h3>
								<p class="post-description">Donec vitae hendrerit arcu, sit amet faucibus nisl.
									Cras
									pretium arcu ex. Aenean posuere libero</p>
								<p class="post-author">
									<img src="img/icon/author.png" alt=""> <span>Posted by </span>
									<a href="#">admin </a>
								</p>
							</div>
						</div>
						<!--Single Blog End-->
					</div>
					<div class="col-md-4">
						<!--Single Blog Start-->
						<div class="single-blog">
							<div class="blog-img img-full">
								<a href="single-blog.html">
									<img src="img/blog/blog2.jpg" alt="">
								</a>
							</div>
							<div class="blog-content">
								<div class="post-date">01/12/2018</div>
								<h3 class="post-title"><a href="single-blog.html">Post with Gallery</a></h3>
								<p class="post-description">Donec vitae hendrerit arcu, sit amet faucibus nisl.
									Cras
									pretium arcu ex. Aenean posuere libero</p>
								<p class="post-author">
									<img src="img/icon/author.png" alt=""> <span>Posted by </span>
									<a href="#">admin </a>
								</p>
							</div>
						</div>
						<!--Single Blog End-->
					</div>
					<div class="col-md-4">
						<!--Single Blog Start-->
						<div class="single-blog">
							<div class="blog-img img-full">
								<a href="single-blog.html">
									<img src="img/blog/blog3.jpg" alt="">
								</a>
							</div>
							<div class="blog-content">
								<div class="post-date">01/12/2018</div>
								<h3 class="post-title"><a href="single-blog.html">Post with Audio</a></h3>
								<p class="post-description">Donec vitae hendrerit arcu, sit amet faucibus nisl.
									Cras
									pretium arcu ex. Aenean posuere libero</p>
								<p class="post-author">
									<img src="img/icon/author.png" alt=""> <span>Posted by </span>
									<a href="#">admin </a>
								</p>
							</div>
						</div>
						<!--Single Blog End-->
					</div>
					<div class="col-md-4">
						<!--Single Blog Start-->
						<div class="single-blog">
							<div class="blog-img img-full">
								<a href="single-blog.html">
									<img src="img/blog/blog4.jpg" alt="">
								</a>
							</div>
							<div class="blog-content">
								<div class="post-date">01/12/2018</div>
								<h3 class="post-title"><a href="single-blog.html">Post with Video</a></h3>
								<p class="post-description">Donec vitae hendrerit arcu, sit amet faucibus nisl.
									Cras
									pretium arcu ex. Aenean posuere libero</p>
								<p class="post-author">
									<img src="img/icon/author.png" alt=""> <span>Posted by </span>
									<a href="#">admin </a>
								</p>
							</div>
						</div>
						<!--Single Blog End-->
					</div>
					<div class="col-md-4">
						<!--Single Blog Start-->
						<div class="single-blog">
							<div class="blog-img img-full">
								<a href="single-blog.html">
									<img src="img/blog/blog5.jpg" alt="">
								</a>
							</div>
							<div class="blog-content">
								<div class="post-date">01/12/2018</div>
								<h3 class="post-title"><a href="single-blog.html">Maecenas ultricies</a></h3>
								<p class="post-description">Donec vitae hendrerit arcu, sit amet faucibus nisl.
									Cras
									pretium arcu ex. Aenean posuere libero</p>
								<p class="post-author">
									<img src="img/icon/author.png" alt=""> <span>Posted by </span>
									<a href="#">admin </a>
								</p>
							</div>
						</div>
						<!--Single Blog End-->
					</div>
					<div class="col-md-4">
						<!--Single Blog Start-->
						<div class="single-blog">
							<div class="blog-img img-full">
								<a href="single-blog.html">
									<img src="img/blog/blog1.jpg" alt="">
								</a>
							</div>
							<div class="blog-content">
								<div class="post-date">01/12/2018</div>
								<h3 class="post-title"><a href="single-blog.html">Blog image post</a></h3>
								<p class="post-description">Donec vitae hendrerit arcu, sit amet faucibus nisl.
									Cras
									pretium arcu ex. Aenean posuere libero</p>
								<p class="post-author">
									<img src="img/icon/author.png" alt=""> <span>Posted by </span>
									<a href="#">admin </a>
								</p>
							</div>
						</div>
						<!--Single Blog End-->
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--Blog Area End-->
	
	<!--News Letter Area Start-->
	<div class="news-letter-area mt-120 mb-120">
		<div class="container">
			<div class="row">
				<!--Section Title Start-->
				<div class="col-12">
					<div class="section-title text-center mb-35">
						<h3>Send Newsletter</h3>
					</div>
				</div>
				<!--Section Title End-->
			</div>
			<div class="row">
				<div class="col-md-12">
					<div class="news-latter-box">
						<p>Enter Your Email Address For Our Mailing List To Keep Your Self Update</p>
						<div class="news-letter-form text-center">
							<form
									action="http://devitems.us11.list-manage.com/subscribe/post?u=6bbb9b6f5827bd842d9640c82&amp;id=05d85f18ef"
									method="post" id="mc-embedded-subscribe-form" name="mc-embedded-subscribe-form"
									class="popup-subscribe-form validate" target="_blank" novalidate>
								<div id="mc_embed_signup_scroll">
									<div id="mc-form" class="mc-form subscribe-form">
										<input id="mc-email" type="email" autocomplete="off"
										       placeholder="Enter your email here"/>
										<button id="mc-submit">Subscribe <i
												class="fa fa-chevron-right"></i></button>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--News Letter Area End-->
	
	<!--Footer Area Start-->
	<footer>
		<div class="footer-container">
			<!--Footer Top Area Start-->
			<div class="footer-top-area black-bg">
				<div class="container">
					<div class="row">
						<div class="col-lg-3 col-md-6">
							<!--Single Footer Widget Start-->
							<div class="single-footer-widget mb-40">
								<div class="footer-title">
									<h3>My Account</h3>
								</div>
								<ul class="link-widget">
									<li><a href="#">About Us</a></li>
									<li><a href="#">Team Member</a></li>
									<li><a href="#">Career</a></li>
									<li><a href="#">Specials</a></li>
									<li><a href="#">Best sellers</a></li>
									<li><a href="#">Our stores</a></li>
									<li><a href="#">Contact us</a></li>
								</ul>
							</div>
							<!--Single Footer Widget End-->
						</div>
						<div class="col-lg-3 col-md-6">
							<!--Single Footer Widget Start-->
							<div class="single-footer-widget mb-40">
								<div class="footer-title">
									<h3>Information</h3>
								</div>
								<ul class="link-widget">
									<li><a href="#">About Us</a></li>
									<li><a href="#">Contact Us</a></li>
									<li><a href="#">My orders</a></li>
									<li><a href="#">Terms & Conditions</a></li>
									<li><a href="#">Returns & Exchanges</a></li>
									<li><a href="#">Shipping & Delivery</a></li>
									<li><a href="#">Privacy Policy</a></li>
								</ul>
							</div>
							<!--Single Footer Widget End-->
						</div>
						<div class="col-lg-3 col-md-6">
							<!--Single Footer Widget Start-->
							<div class="single-footer-widget mb-40">
								<div class="footer-title">
									<h3>Quick Links</h3>
								</div>
								<ul class="link-widget">
									<li><a href="#">Support Center</a></li>
									<li><a href="#">Term & Conditions</a></li>
									<li><a href="#">Shipping</a></li>
									<li><a href="#">Privacy Policy</a></li>
									<li><a href="#">Help</a></li>
									<li><a href="#">Products Return</a></li>
									<li><a href="#">FAQS</a></li>
								</ul>
							</div>
							<!--Single Footer Widget End-->
						</div>
						<div class="col-lg-3 col-md-6">
							<!--Single Footer Widget Start-->
							<div class="single-footer-widget mb-40">
								<div class="footer-title">
									<h3>Categories</h3>
								</div>
								<ul class="link-widget">
									<li><a href="#">Bedroom</a></li>
									<li><a href="#">Furniture</a></li>
									<li><a href="#">Livingroom</a></li>
									<li><a href="#">Mobiles & Tablets</a></li>
									<li><a href="#">Men</a></li>
									<li><a href="#">Women</a></li>
									<li><a href="#">Accessories</a></li>
								</ul>
							</div>
							<!--Single Footer Widget End-->
						</div>
					</div>
				</div>
			</div>
			<!--Footer Top Area End-->
			<!--Footer Middle Area Start-->
			<div class="footer-middle-area black-bg">
				<div class="container">
					<div class="row">
						<div class="col-lg-3 col-md-6">
							<!--Single Footer Widget Start-->
							<div class="single-footer-widget mb-30">
								<div class="footer-logo">
									<a href="index.html"><img src="img/logo/logo-footer.png" alt=""></a>
								</div>
							</div>
							<!--Single Footer Widget End-->
						</div>
						<div class="col-lg-3 col-md-6">
							<!--Single Footer Widget Start-->
							<div class="single-footer-widget mb-30">
								<div class="footer-info">
									<div class="icon">
										<i class="fa fa-home"></i>
									</div>
									<p>Address : 安徽工业大学计算机科学与技术学院, 安徽马鞍山, 中国</p>
								</div>
							</div>
							<!--Single Footer Widget End-->
						</div>
						<div class="col-lg-3 col-md-6">
							<!--Single Footer Widget Start-->
							<div class="single-footer-widget mb-30">
								<div class="footer-info">
									<div class="icon">
										<i class="fa fa-envelope-open-o"></i>
									</div>
									<p>Email: <br>atreus534953576@gmail.com</p>
								</div>
							</div>
							<!--Single Footer Widget End-->
						</div>
						<div class="col-lg-3 col-md-6">
							<!--Single Footer Widget Start-->
							<div class="single-footer-widget mb-30">
								<div class="footer-info">
									<div class="icon">
										<i class="fa fa-mobile"></i>
									</div>
									<p>Phone: <br>(+86) 166 055 4079</p>
								</div>
							</div>
							<!--Single Footer Widget End-->
						</div>
					</div>
				</div>
			</div>
			<!--Footer Middle Area End-->
			<!--Footer Bottom Area Start-->
			<div class="footer-bottom-area black-bg pt-50 pb-50">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<!--Footer Payment Start-->
							<div class="footer-payments-image">
								<img src="img/payment/payment-icon.png" alt="">
							</div>
							<!--Footer Payment End-->
							<!--Footer Menu Start-->
							<div class="footer-menu text-center">
								<nav>
									<ul>
										<li><a href="#">Site Map</a></li>
										<li><a href="#">Search Terms</a></li>
										<li><a href="#">Advanced Search</a></li>
										<li><a href="#">Orders and Returns</a></li>
										<li><a href="#">Contact Us</a></li>
									</ul>
								</nav>
							</div>
							<!--Footer Menu End-->
							<!--Footer Copyright Start-->
							<div class="footer-copyright">
								<p>Copyright © <a href="http://www.bootstrapmb.com/">Plantmore</a> All Rights
									Reserved</p>
							</div>
							<!--Footer Copyright End-->
						</div>
					</div>
				</div>
			</div>
			<!--Footer Bottom Area End-->
		</div>
	</footer>
	<!--Footer Area End-->
	
	<!-- Modal Area Strat -->
	<div class="modal fade" id="open-modal" tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><i
							class="fa fa-close"></i></button>
				</div>
				<div class="modal-body">
					<div class="row">
						<!--Modal Img-->
						<div class="col-md-5">
							<!--Modal Tab Content Start-->
							<div class="tab-content product-details-large" id="myTabContent">
								<div class="tab-pane fade show active" id="single-slide1" role="tabpanel"
								     aria-labelledby="single-slide-tab-1">
									<!--Single Product Image Start-->
									<div class="single-product-img img-full">
										<img src="img/single-product/large/single-product1.jpg" alt="">
									</div>
									<!--Single Product Image End-->
								</div>
								<div class="tab-pane fade" id="single-slide2" role="tabpanel"
								     aria-labelledby="single-slide-tab-2">
									<!--Single Product Image Start-->
									<div class="single-product-img img-full">
										<img src="img/single-product/large/single-product2.jpg" alt="">
									</div>
									<!--Single Product Image End-->
								</div>
								<div class="tab-pane fade" id="single-slide3" role="tabpanel"
								     aria-labelledby="single-slide-tab-3">
									<!--Single Product Image Start-->
									<div class="single-product-img img-full">
										<img src="img/single-product/large/single-product3.jpg" alt="">
									</div>
									<!--Single Product Image End-->
								</div>
								<div class="tab-pane fade" id="single-slide4" role="tabpanel"
								     aria-labelledby="single-slide-tab-4">
									<!--Single Product Image Start-->
									<div class="single-product-img img-full">
										<img src="img/single-product/large/single-product4.jpg" alt="">
									</div>
									<!--Single Product Image End-->
								</div>
								<div class="tab-pane fade" id="single-slide5" role="tabpanel"
								     aria-labelledby="single-slide-tab-4">
									<!--Single Product Image Start-->
									<div class="single-product-img img-full">
										<img src="img/single-product/large/single-product5.jpg" alt="">
									</div>
									<!--Single Product Image End-->
								</div>
								<div class="tab-pane fade" id="single-slide6" role="tabpanel"
								     aria-labelledby="single-slide-tab-4">
									<!--Single Product Image Start-->
									<div class="single-product-img img-full">
										<img src="img/single-product/large/single-product6.jpg" alt="">
									</div>
									<!--Single Product Image End-->
								</div>
							</div>
							<!--Modal Content End-->
							<!--Modal Tab Menu Start-->
							<div class="single-product-menu">
								<div class="nav single-slide-menu owl-carousel" role="tablist">
									<div class="single-tab-menu img-full">
										<a class="active" data-toggle="tab" id="single-slide-tab-1"
										   href="#single-slide1"><img
												src="img/single-product/small/single-product1.jpg" alt=""></a>
									</div>
									<div class="single-tab-menu img-full">
										<a data-toggle="tab" id="single-slide-tab-2" href="#single-slide2"><img
												src="img/single-product/small/single-product2.jpg" alt=""></a>
									</div>
									<div class="single-tab-menu img-full">
										<a data-toggle="tab" id="single-slide-tab-3" href="#single-slide3"><img
												src="img/single-product/small/single-product3.jpg" alt=""></a>
									</div>
									<div class="single-tab-menu img-full">
										<a data-toggle="tab" id="single-slide-tab-4" href="#single-slide4"><img
												src="img/single-product/small/single-product4.jpg" alt=""></a>
									</div>
									<div class="single-tab-menu img-full">
										<a data-toggle="tab" id="single-slide-tab-5" href="#single-slide5"><img
												src="img/single-product/small/single-product5.jpg" alt=""></a>
									</div>
									<div class="single-tab-menu img-full">
										<a data-toggle="tab" id="single-slide-tab-6" href="#single-slide6"><img
												src="img/single-product/small/single-product6.jpg" alt=""></a>
									</div>
								</div>
							</div>
							<!--Modal Tab Menu End-->
						</div>
						<!--Modal Img-->
						<!--Modal Content-->
						<div class="col-md-7">
							<div class="modal-product-info">
								<h1>Sit voluptatem</h1>
								<div class="modal-product-price">
									<span class="old-price">$74.00</span>
									<span class="new-price">$69.00</span>
								</div>
								<a href="single-product.html" class="see-all">See all features</a>
								<div class="add-to-cart quantity">
									<form class="add-quantity" action="#">
										<div class="modal-quantity">
											<input type="number" value="1">
										</div>
										<div class="add-to-link">
											<button class="form-button" data-text="add to cart">add to
												cart
											</button>
										</div>
									</form>
								</div>
								<div class="cart-description">
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
										tempor
										incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
										quis
										nostrud exercitation ullamco,Proin lectus ipsum, gravida et mattis
										vulputate,
										tristique ut lectus.</p>
								</div>
								<div class="social-share">
									<h3>Share this product</h3>
									<ul class="socil-icon2">
										<li><a href=""><i class="fa fa-facebook"></i></a></li>
										<li><a href=""><i class="fa fa-twitter"></i></a></li>
										<li><a href=""><i class="fa fa-pinterest"></i></a></li>
										<li><a href=""><i class="fa fa-google-plus"></i></a></li>
										<li><a href=""><i class="fa fa-linkedin"></i></a></li>
									</ul>
								</div>
							</div>
						</div>
						<!--Modal Content-->
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Modal Area End -->
</div>

<!--All Js Here-->

<!--Jquery 1.12.4-->
<script src="js/vendor/jquery-1.12.4.min.js"></script>
<!--Popper-->
<script src="js/popper.min.js"></script>
<!--Bootstrap-->
<script src="js/bootstrap.min.js"></script>
<!--Imagesloaded-->
<script src="js/imagesloaded.pkgd.min.js"></script>
<!--Isotope-->
<script src="js/isotope.pkgd.min.js"></script>
<!--Waypoints-->
<script src="js/waypoints.min.js"></script>
<!--Counterup-->
<script src="js/jquery.counterup.min.js"></script>
<!--Carousel-->
<script src="js/owl.carousel.min.js"></script>
<!--Slick-->
<script src="js/slick.min.js"></script>
<!--Meanmenu-->
<script src="js/jquery.meanmenu.min.js"></script>
<!--Easyzoom-->
<script src="js/easyzoom.min.js"></script>
<!--Nice Select-->
<script src="js/jquery.nice-select.min.js"></script>
<!--ScrollUp-->
<script src="js/jquery.scrollUp.min.js"></script>
<!--Wow-->
<script src="js/wow.min.js"></script>
<!--Venobox-->
<script src="js/venobox.min.js"></script>
<!--Jquery Ui-->
<script src="js/jquery-ui.js"></script>
<!--Countdown-->
<script src="js/jquery.countdown.min.js"></script>
<!--Plugins-->
<script src="js/plugins.js"></script>
<!--Main Js-->
<script src="js/main.js"></script>
</body>
</html>
