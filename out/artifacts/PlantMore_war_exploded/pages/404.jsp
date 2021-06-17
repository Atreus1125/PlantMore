<%--
  Created by IntelliJ IDEA.
  User: 19931
  Date: 2021/5/29
  Time: 14:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://www.mldn.cn/c" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE html>
<html class="no-js" lang="zh">
	<head>
		<base href="<%=basePath%>">
		<meta charset="utf-8">
		<meta http-equiv="x-ua-compatible" content="ie=edge">
		<title>404</title>
		<meta name="description" content="">
		<meta name="robots" content="noindex, follow" />
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta name="robots" content="noindex, follow" />

		<!-- Place favicon.ico in the root directory -->
		<link rel="shortcut icon" type="image/x-icon" href="../img/favicon.ico">

		<!--All Css Here-->
		<!-- Bootstrap CSS-->
		<link rel="stylesheet" href="../css/bootstrap.min.css">
		<!-- Linearicon CSS-->
		<link rel="stylesheet" href="../css/linearicons.min.css">
		<!-- Font Awesome CSS-->
		<link rel="stylesheet" href="../css/font-awesome.min.css">
		<!-- Animate CSS-->
		<link rel="stylesheet" href="../css/animate.css">
		<!-- Owl Carousel CSS-->
		<link rel="stylesheet" href="../css/owl.carousel.min.css">
		<!-- Slick CSS-->
		<link rel="stylesheet" href="../css/slick.css">
		<!-- Meanmenu CSS-->
		<link rel="stylesheet" href="../css/meanmenu.min.css">
		<!-- Easyzoom CSS-->
		<link rel="stylesheet" href="../css/easyzoom.css">
		<!-- Venobox CSS-->
		<link rel="stylesheet" href="../css/venobox.css">
		<!-- Jquery Ui CSS-->
		<link rel="stylesheet" href="../css/jquery-ui.css">
		<!-- Nice Select CSS-->
		<link rel="stylesheet" href="../css/nice-select.css">
		<!-- Style CSS -->
		<link rel="stylesheet" href="../style.css">
		<!-- Responsive CSS -->
		<link rel="stylesheet" href="../css/responsive.css">
		<!-- Modernizr Js -->
		<script src="../js/vendor/modernizr-2.8.3.min.js"></script>
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
											<img src="../img/logo/logo.png" alt="">
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
												<li><a href="../index.jsp">商城首页</a></li>
												<li><a href="front/goods/goods_list.jsp">商品列表</a></li>
												<li><a href="http://120.78.188.0/">企业博客</a></li>
												<c:if test="${mid == null}">
													<li><a href="member_login.jsp">用户登录</a></li>
													<li><a href="member_register.jsp">用户注册</a></li>
												</c:if>
												<c:if test="${mid != null}">
													<li><a href="member_info.jsp">个人信息</a>
													</li>
													<li><a href="member_list.jsp">全部订单</a></li>
													<li><a href="MemberServletFront/logout">安全退出</a></li>
													<li><img src="img/${photo}" style="width:50px;height: 50px; "></li>
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
													<a href="#">
														<span class="cart-icon">
															<span class="cart-quantity">2</span>
														</span>
														<span class="cart-title">Your cart
															<br><strong>$190.00</strong></span>
													</a>
													<!--Cart Dropdown Start-->
													<div class="cart-dropdown">
														<ul>
															<li class="single-cart-item">
																<div class="cart-img">
																	<a href="single-product.html"><img
																			src="../img/cart/cart1.jpg" alt=""></a>
																</div>
																<div class="cart-content">
																	<h5 class="product-name"><a
																			href="single-product.html">Odio
																			tortor consequat</a></h5>
																	<span class="cart-price">1 × $90.00</span>
																</div>
																<div class="cart-remove">
																	<a title="Remove" href="#"><i
																			class="fa fa-times"></i></a>
																</div>
															</li>
															<li class="single-cart-item">
																<div class="cart-img">
																	<a href="single-product.html"><img
																			src="../img/cart/cart2.jpg" alt=""></a>
																</div>
																<div class="cart-content">
																	<h5 class="product-name"><a
																			href="single-product.html">Auctor
																			sem</a></h5>
																	<span class="cart-price">1 × $100.00</span>
																</div>
																<div class="cart-remove">
																	<a title="Remove" href="#"><i
																			class="fa fa-times"></i></a>
																</div>
															</li>
														</ul>
														<p class="cart-subtotal"><strong>Subtotal:</strong> <span
																class="float-right">$190.00</span></p>
														<p class="cart-btn">
															<a href="cart.html">购物车详情</a>
															<a href="checkout.html">结算购物车</a>
														</p>
													</div>
													<!--Cart Dropdown End-->
												</div>
											</div>
										</div>
									</c:if>
									<!--Header Option End-->
								</div>
								<!--Header Menu And Mini Cart End-->
							</div>
						</div>
					</div>
				</div>
			</header>
			<!--Header Area End-->

			<!--Error 404 Area Start-->
			<div class="error-404-area">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<div class="error-wrapper text-center">
								<div class="error-text">
									<h1>404</h1>
									<h2>Opps! PAGE NOT BE FOUND</h2>
									<p>抱歉！您要查找的页面不存在、已被删除、名称更改或暂时不可用。</p>
								</div>
								<div class="search-error">
									<form action="#">
										<input placeholder="Search" type="text">
										<button><i class="fa fa-search"></i></button>
									</form>
								</div>
								<div class="error-button">
									<a href="../index.jsp">返回商城主页</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!--Error 404 Area End-->

			<!--Brand Area Start-->
			<div class="brand-area mb-105">
				<div class="container">
					<div class="row">
						<div class="col-12">
							<div class="brand-active">
								<div class="single-brand img-full"><a href="#"><img src="../img/brand/brand1.png"
											alt=""></a></div>
								<div class="single-brand img-full"><a href="#"><img src="../img/brand/brand2.png"
											alt=""></a></div>
								<div class="single-brand img-full"><a href="#"><img src="../img/brand/brand3.png"
											alt=""></a></div>
								<div class="single-brand img-full"><a href="#"><img src="../img/brand/brand4.png"
											alt=""></a></div>
								<div class="single-brand img-full"><a href="#"><img src="../img/brand/brand5.png"
											alt=""></a></div>
								<div class="single-brand img-full"><a href="#"><img src="../img/brand/brand1.png"
											alt=""></a></div>
								<div class="single-brand img-full"><a href="#"><img src="../img/brand/brand2.png"
											alt=""></a></div>
								<div class="single-brand img-full"><a href="#"><img src="../img/brand/brand3.png"
											alt=""></a></div>
								<div class="single-brand img-full"><a href="#"><img src="../img/brand/brand4.png"
											alt=""></a></div>
								<div class="single-brand img-full"><a href="#"><img src="../img/brand/brand5.png"
											alt=""></a></div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!--Brand Area End-->

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
											<a href="index.html"><img src="../img/logo/logo-footer.png" alt=""></a>
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
										<img src="../img/payment/payment-icon.png" alt="">
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
			<!-- Modal Area End -->
		</div>

		<!--All Js Here-->
		<!--Jquery 1.12.4-->
		<script src="../js/vendor/jquery-1.12.4.min.js"></script>
		<!--Popper-->
		<script src="../js/popper.min.js"></script>
		<!--Bootstrap-->
		<script src="../js/bootstrap.min.js"></script>
		<!--Imagesloaded-->
		<script src="../js/imagesloaded.pkgd.min.js"></script>
		<!--Isotope-->
		<script src="../js/isotope.pkgd.min.js"></script>
		<!--Waypoints-->
		<script src="../js/waypoints.min.js"></script>
		<!--Carousel-->
		<script src="../js/owl.carousel.min.js"></script>
		<!--Slick-->
		<script src="../js/slick.min.js"></script>
		<!--Meanmenu-->
		<script src="../js/jquery.meanmenu.min.js"></script>
		<!--Easyzoom-->
		<script src="../js/easyzoom.min.js"></script>
		<!--Nice Select-->
		<script src="../js/jquery.nice-select.min.js"></script>
		<!--ScrollUp-->
		<script src="../js/jquery.scrollUp.min.js"></script>
		<!--Wow-->
		<script src="../js/wow.min.js"></script>
		<!--Venobox-->
		<script src="../js/venobox.min.js"></script>
		<!--Jquery Ui-->
		<script src="../js/jquery-ui.js"></script>
		<!--Countdown-->
		<script src="../js/jquery.countdown.min.js"></script>
		<!--Plugins-->
		<script src="../js/plugins.js"></script>
		<!--Main Js-->
		<script src="../js/main.js"></script>
	</body>
</html>
