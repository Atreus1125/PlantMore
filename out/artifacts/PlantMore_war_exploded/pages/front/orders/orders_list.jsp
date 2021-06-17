<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://www.mldn.cn/c" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
    String showUrl = basePath + "pages/front/orders/OrdersServletFront/show";
%>

<!doctype html>
<html class="no-js" lang="zh">
<head>
    <base href="<%=basePath%>">
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>个人信息</title>
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
        function preview(file) {
            let prevDiv = document.getElementById('preview');
            if (file.files && file.files[0]) {
                let reader = new FileReader();
                reader.onload = function(evt) {
                    prevDiv.innerHTML = '<img src="' + evt.target.result + '" />';
                }
                reader.readAsDataURL(file.files[0]);
            } else {
                prevDiv.innerHTML = '<div class="img" style="filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale,src=\'' + file.value + '\'"></div>';
            }
        }
    </script>
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
    
    <!--Breadcrumb Tow Start-->
    <div class="breadcrumb-tow mb-120">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="breadcrumb-title">
                        <h1>用户订单</h1>
                    </div>
                    <div class="breadcrumb-content breadcrumb-content-tow">
                        <ul>
                            <li><a href="index.jsp">商城首页</a></li>
                            <li class="active">用户订单</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--Breadcrumb Tow End-->
    
    <!--My Account Area Strat-->
    <div class="my-account white-bg mb-110">
        <div class="container">
            <div class="account-dashboard">
                <div class="row">
                    <div class="col-md-12 col-lg-2">
                        <!-- Nav tabs -->
                        <ul class="nav flex-column dashboard-list" role="tablist">
                            <li><a class="nav-link active" data-toggle="tab" href="#dashboard">控制面板</a></li>
                            <li><a class="nav-link" data-toggle="tab" href="#orders">订单管理</a></li>
                        </ul>
                    </div>
                    <div class="col-md-12 col-lg-10">
                        <!-- Tab panes -->
                        <div class="tab-content dashboard-content">
                            <div id="dashboard" class="tab-pane fade show active">
                                <h3>控制面板</h3>
                                <p>从您的帐户控制面板，您可以轻松地检查和查看您最近的订单，管理您的发货和账单地址，并编辑您的密码和帐户详细信息。</p>
                            </div>
                            <div id="orders" class="tab-pane fade">
                                <h3>订单管理</h3>
                                <div class="table-responsive">
                                    <c:if test="${allOrders != null}" var="res">
                                        <table class="table">
                                            <thead>
                                            <tr>
                                                <th>订单编号</th>
                                                <th>收件人</th>
                                                <th>联系电话</th>
                                                <th>收件地址</th>
                                                <th>下单日期</th>
                                                <th>操作</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <c:forEach items="${allOrders}" var="orders">
                                                <tr>
                                                    <td>${orders.oid}</td>
                                                    <td>${orders.name}</td>
                                                    <td>${orders.phone}</td>
                                                    <td>${orders.address}</td>
                                                    <td>${orders.credate}</td>
                                                    <td><a class="view" href="<%=showUrl%>?oid=${orders.oid}">查看</a></td>
                                                </tr>
                                            </c:forEach>
                                            </tbody>
                                        </table>
                                    </c:if>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--My Account Area End-->
    
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
