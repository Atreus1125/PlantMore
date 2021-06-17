<%--
  Created by IntelliJ IDEA.
  User: 19931
  Date: 2021/5/30
  Time: 23:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://www.mldn.cn/c" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
	String showUrl = basePath + "pages/front/goods/GoodsServletFront/show";
	String listUrl = basePath + "pages/front/goods/GoodsServletFront/list";
	String addCarUrl = basePath + "pages/front/shopcar/ShopcarServletFront/insert";
	System.out.println("******goods_list.jsp页面的basePath为" + basePath + "******");
%>

<!doctype html>
<html class="no-js" lang="zh">
<head>
	<base href="<%=basePath%>">
	<meta charset="utf-8">
	<meta http-equiv="x-ua-compatible" content="ie=edge">
	<title>商品列表</title>
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
			<div class="header-area header-sticky pt-30 pb-30">
				<div class="container">
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
	
	<!--Shop Area Start-->
	<div class="shop-area mb-70">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 order-2 order-lg-1">
					<!--Product Category Widget Start-->
					<div class="shop-sidebar">
						<h4>Product Categories</h4>
						<div class="categori-checkbox">
							<form action="#">
								<ul>
									<li><input name="product-categori" type="checkbox"><a href="#">竹子</a><span class="count">(0)</span></li>
									<li><input name="product-categori" type="checkbox"><a href="#">多肉</a><span class="count">(0)</span></li>
									<li><input name="product-categori" type="checkbox"><a href="#">铃兰</a><span class="count">(0)</span></li>
									<li><input name="product-categori" type="checkbox"><a href="#">万年青</a><span class="count">(0)</span></li>
									<li><input name="product-categori" type="checkbox"><a href="#">菖蒲</a><span class="count">(0)</span></li>
									<li><input name="product-categori" type="checkbox"><a href="#">三色堇</a><span class="count">(0)</span></li>
									<li><input name="product-categori" type="checkbox"><a href="#">榕树</a><span class="count">(0)</span></li>
								</ul>
							</form>
						</div>
					</div>
					<!--Product Category Widget End-->
					
					<!--Color Category Widget Start-->
					<div class="shop-sidebar">
						<h4>Color</h4>
						<div class="categori-checkbox">
							<form action="#">
								<ul>
									<li><input name="product-categori" type="checkbox"><a href="#">粉色</a><span class="count">(0)</span></li>
									<li><input name="product-categori" type="checkbox"><a href="#">绿色</a><span class="count">(0)</span></li>
									<li><input name="product-categori" type="checkbox"><a href="#">白色</a><span class="count">(0)</span></li>
								</ul>
							</form>
						</div>
					</div>
					<!--Color Category Widget End-->
					
					<!--Price Filter Widget Start-->
					<div class="shop-sidebar">
						<h4>Filter by price</h4>
						<div class="price-filter">
							<div id="slider-range"></div>
							<div class="price-slider-amount">
								<div class="label-input">
									<label>价格 : </label>
									<input type="text" id="amount" name="price" placeholder="Add Your Price"/>
								</div>
								<button type="button">过滤</button>
							</div>
						</div>
					</div>
					<!--Price Filter Widget End-->
					
					<!--Recent Product Widget Start-->
					<div class="shop-sidebar">
						<h4>Top Rated Products</h4>
						<div class="rc-product">
							<ul>
								<li>
									<div class="rc-product-thumb img-full">
										<a href="single-product.html">
											<img src="img/product/product13.jpg" alt="">
										</a>
									</div>
									<div class="rc-product-content">
										<h6><a href="single-product.html">人参榕</a></h6>
										<div class="rc-product-review">
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
										</div>
										<div class="rc-product-price">
											<span class="price">￥66.00</span>
										</div>
									</div>
								</li>
								<li>
									<div class="rc-product-thumb img-full">
										<a href="single-product.html">
											<img src="img/product/product9.jpg" alt="">
										</a>
									</div>
									<div class="rc-product-content">
										<h6><a href="single-product.html">多肉组合</a></h6>
										<div class="rc-product-review">
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
										</div>
										<div class="rc-product-price">
											<span class="price">￥72.00</span>
										</div>
									</div>
								</li>
								<li>
									<div class="rc-product-thumb img-full">
										<a href="single-product.html">
											<img src="img/product/product15.jpg" alt="">
										</a>
									</div>
									<div class="rc-product-content">
										<h6><a href="single-product.html">金钱蒲</a></h6>
										<div class="rc-product-review">
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
										</div>
										<div class="rc-product-price">
											<span class="price">￥72.00</span>
										</div>
									</div>
								</li>
							</ul>
						</div>
					</div>
					<!--Recent Product Widget End-->
					
					<!--Banner Widget Start-->
					<div class="shop-sidebar">
						<div class="sidebar-banner single-banner">
							<div class="banner-img">
								<a href="#">
									<img src="img/banner/shop-sidebar.jpg" alt="">
								</a>
							</div>
						</div>
					</div>
					<!--Banner Widget End-->
				</div>
				<div class="col-lg-9 order-1 order-lg-2">
					<div class="shop-layout">
						<!--Breadcrumb One Start-->
						<div class="breadcrumb-one mb-120">
							<div class="breadcrumb-img">
								<img src="img/page-banner/shop-banner-1.jpg" alt="">
							</div>
							<div class="breadcrumb-content">
								<ul>
									<li><a href="index.jsp">商城首页</a></li>
									<li class="active">商品列表</li>
								</ul>
							</div>
						</div>
						<!--Breadcrumb One End-->
						
						<!--Grid & List View Start-->
						<div class="shop-topbar-wrapper d-md-flex justify-content-md-between align-items-center">
							<div class="grid-list-option">
								<ul class="nav">
									<li><a class="active" data-toggle="tab" href="#grid"><i class="fa fa-th-large"></i></a></li>
									<li><a data-toggle="tab" href="#list"><i class="fa fa-th-list"></i></a></li>
								</ul>
							</div>
							<!--Toolbar Short Area Start-->
							<div class="toolbar-short-area d-md-flex align-items-center">
								<div class="toolbar-shorter ">
									<select class="wide">
										<option data-display="">综合排序</option>
										<option value="">销量排序</option>
										<option value="">信用排序</option>
										<option value="">价格降序</option>
										<option value="">价格升序</option>
										<option value="">名称升序</option>
										<option value="">名称降序</option>
									</select>
								</div>
								<p class="show-product">显示 1–9 来自 42 个结果</p>
							</div>
							<!--Toolbar Short Area End-->
						</div>
						<!--Grid & List View End-->
						
						<!--Shop Product Start-->
						<div class="shop-product">
							<div id="myTabContent-2" class="tab-content">
								<div id="grid" class="tab-pane fade show active">
									<div class="product-grid-view">
										<!--缩略图商品区域 开始-->
										<div class="row">
											<c:if test="${allGoods != null}" var="res">
												<c:forEach items="${allGoods}" var="goods">
													<!--Single Product Start-->
													<div class="col-md-4">
														<div class="single-product mb-25">
															<div class="product-img img-full">
																<a href="single-product.html">
																	<img src="upload/goods/${goods.photo}" alt="">
																</a>
																<span class="onsale">特价!</span>
																<div class="product-action">
																	<ul>
																		<li><a href="#open-modal" data-toggle="modal" title="Quick view"><i class="fa fa-search"></i></a></li>
																		<li><a href="#" title="Whishlist"><i class="fa fa-heart-o"></i></a></li>
																		<li><a href="#" title="Compare"><i class="fa fa-refresh"></i></a></li>
																	</ul>
																</div>
															</div>
															<div class="product-content">
																<h2><a href="single-product.html">${goods.title}</a></h2>
																<div class="product-price">
																	<div class="price-box">
																		<span class="regular-price">￥${goods.price}</span>
																	</div>
																	<div class="add-to-cart">
																		<a href="<%=addCarUrl%>?gid=${goods.gid}">加入购物车</a>
																	</div>
																</div>
															</div>
														</div>
													</div>
													<!--Single Product End-->
												</c:forEach>
											</c:if>
										</div>
										<!--缩略图商品区域 结束-->
									</div>
								</div>
								<div id="list" class="tab-pane fade">
									<div class="product-list-view">
										<div class="product-list-item mb-40">
											<div class="row">
												<c:if test="${allGoods != null}" var="res">
													<c:forEach items="${allGoods}" var="goods">
														<!--Single List Product Start-->
														<div class="col-md-4">
															<div class="single-product">
																<div class="product-img img-full">
																	<a href="single-product.html">
																		<img src="upload/goods/${goods.photo}" alt="">
																	</a>
																	<span class="onsale">特价!</span>
																</div>
															</div>
														</div>
														<div class="col-md-8">
															<div class="product-content shop-list">
																<h2><a href="single-product.html">${goods.title}</a></h2>
																<div class="product-reviews">
																	<i class="fa fa-star"></i>
																	<i class="fa fa-star"></i>
																	<i class="fa fa-star"></i>
																	<i class="fa fa-star"></i>
																	<i class="fa fa-star-o"></i>
																</div>
																<div class="product-description">
																	<p>${goods.note}</p>
																</div>
																<div class="product-price">
																	<div class="price-box">
																		<span class="price">￥${goods.price}</span>
																		<span class="regular-price">￥${goods.price+15}</span>
																	</div>
																</div>
																<div class="product-list-action">
																	<div class="add-btn">
																		<a href="#">加入购物车</a>
																	</div>
																	<ul>
																		<li><a href="#open-modal" data-toggle="modal" title="Quick view"><i class="fa fa-search"></i></a></li>
																		<li><a href="#" title="Whishlist"><i class="fa fa-heart-o"></i></a></li>
																		<li><a href="#" title="Compare"><i class="fa fa-refresh"></i></a></li>
																	</ul>
																</div>
															</div>
														</div>
														<!--Single List Product End-->
													</c:forEach>
												</c:if>
											</div>
										</div>
									</div>
								</div>
								<!--Pagination Start-->
								<div class="product-pagination">
									<ul>
										<li class="active"><a href="#">1</a></li>
										<li><a href="#">2</a></li>
										<li><a href="#">3</a></li>
										<li><a href="#">4</a></li>
										<li><a href="#">5</a></li>
										<li><a href="#"><i class="fa fa-angle-double-right"></i></a></li>
									</ul>
								</div>
								<!--Pagination End-->
							</div>
						</div>
						<!--Shop Product End-->
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--Shop Area End-->
	
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
