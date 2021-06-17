<%--
  Created by IntelliJ IDEA.
  User: 19931
  Date: 2021/6/5
  Time: 10:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://www.mldn.cn/c" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
	String deleteUrl = basePath + "pages/front/shopcar/ShopcarServletFront/delete?p=p";
	String updateUrl = basePath + "pages/front/shopcar/ShopcarServletFront/update";
	String ordersUrl = basePath + "pages/front/orders/OrdersServletFront/insert";
	System.out.println("******car_list.jsp页面的basePath为" + basePath + "******");
%>

<!doctype html>
<html class="no-js" lang="zh">
<head>
	<base href="<%=basePath%>">
	<meta charset="utf-8">
	<meta http-equiv="x-ua-compatible" content="ie=edge">
	<title>购物车列表</title>
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
	
	<script type="text/javascript">
        let allPrice = 0;

        function sumSingleGoods(gid) {
            let price = parseInt(document.getElementById("price-" + gid).innerHTML);
            let count = parseInt(document.getElementById(gid).value);
            allPrice += (price * count);
            document.getElementById("sum-" + gid).innerHTML = "" + (price * count) + "";
        }

        function sumAllGoods() {
            document.getElementById("result").innerHTML = allPrice;
        }

        function deleteAll(url, paramName, eleName) {
            let data = "";//保存所有要删除的数据编号，有可能是数组，也有可能只有一个
            let item = document.getElementsByName(eleName);
            let count = 0;//保存要删除的数据个数
            //要判断是否有要删除的数据
            if (item.length == undefined) {//表示只有一个元素，不是数组
                if (document.getElementsByName(eleName).checked == true) {//数据选中
                    data += document.getElementsByName(eleName).value + "|" ;
                    count ++;
                }
            } else {
                for (let x = 0; x < item.length; x ++) {
                    if (item[x].checked == true) {
                        count ++;
                        data += item[x].value + "|";
                    }
                }
            }
            if (count > 0) {//有要删除的数据
                if (window.confirm("确定要执行操作吗？")) {
                    // console.log(url + "?" + paramName + "=" + data);
                    window.location = url + "&" + paramName + "=" + data;
                }
            } else {
                alert("您还未选择任何要操作的数据！");
            }
        }

        function checkboxSelect(obj, eleName) {
            let item = document.getElementsByName(eleName) ;
            if (item.length == undefined) {//表示只有一个元素，不是数组
                document.getElementsByName(eleName).checked = this.checked;
            } else {
                for (let x = 0; x < item.length; x ++) {
                    item[x].checked = obj.checked;
                }
            }
        }
	</script>
</head>
<body>
<div class="wrapper">
	<!--Header Area Start-->
	<header>
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
							
							<div class="col-lg-9 col-md-9 text-lg-right">
								<!--Main Menu Area Start-->
								<div class="header-menu">
									<nav>
										<ul class="main-menu">
											<li><a href="index.jsp">商城首页</a></li>
											<li><a href="pages/front/goods/GoodsServletFront/list">商品列表</a></li>
											<li><a href="http://120.78.188.0/">企业博客</a></li>
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
							</div>
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
	</header>
	<!--Header Area End-->
	
	<!--Breadcrumb Tow Start-->
	<div class="breadcrumb-tow mb-120">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="breadcrumb-title">
						<h1>购物车</h1>
					</div>
					<div class="breadcrumb-content breadcrumb-content-tow">
						<ul>
							<li><a href="index.html">商城主页</a></li>
							<li class="active">购物车</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--Breadcrumb Tow End-->
	
	<!--Shopping Cart Area Start-->
	<div class="Shopping-cart-area mb-110">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<c:if test="${allGoods != null}" var="res">
						<form action="<%=updateUrl%>" method="post">
							<div class="table-content table-responsive">
								<table class="table">
									<thead>
									<tr>
										<th><div class="categori-checkbox"><ul><li><input type="checkbox" onclick="checkboxSelect(this, 'gid')"></li></ul></div></th>
										<th class="plantmore-product-thumbnail">图片</th>
										<th class="cart-product-name">名称</th>
										<th class="plantmore-product-price">单价</th>
										<th class="plantmore-product-quantity">数量</th>
										<th class="plantmore-product-subtotal">总价</th>
									</tr>
									</thead>
									<tbody>
									<c:forEach items="${allGoods}" var="goods">
										<tr>
											<td class="plantmore-product-remove"><div class="categori-checkbox"><ul><li><input type="checkbox" id="gid" name="gid" value="${goods.gid}"></li></ul></div></td>
											<td class="plantmore-product-thumbnail"><a href="#"><img src="upload/goods/${goods.photo}" style="width:50px;height:50px;"></a></td>
											<td class="plantmore-product-name"><a href="#">${goods.title}</a></td>
											<td class="plantmore-product-price"><span id="price-${goods.gid}">${goods.price}</span></td>
											<td class="plantmore-product-quantity"><input value="${allCars[goods.gid]}" size="5" name="${goods.gid}" id="${goods.gid}" type="number"></td>
											<td class="product-subtotal">
												<span class="amount" id="sum-${goods.gid}">
													<script type="text/javascript">sumSingleGoods(${goods.gid});</script>
												</span>
											</td>
										</tr>
									</c:forEach>
									</tbody>
								</table>
							</div>
							<div class="row">
								<div class="col-12">
									<div class="coupon-all">
										<div class="coupon">
											<input class="button" name="apply_coupon" value="删除购物车商品" type="button" onclick="deleteAll('<%=deleteUrl%>','ids','gid')">
										</div>
										<div class="coupon2">
											<input class="button" value="修改商品数量" type="submit">
										</div>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-5 ml-auto">
									<div class="cart-page-total">
										<h2>购物车总金额</h2>
										<ul>
											<li>
												小计
												<span id="result">
													<script type="text/javascript">sumAllGoods()</script>
												</span>
											</li>
										</ul>
										<a href="<%=ordersUrl%>">结账</a>
									</div>
								</div>
							</div>
						</form>
					</c:if>
				</div>
			</div>
		</div>
	</div>
	<!--Shopping Cart Area End-->

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

