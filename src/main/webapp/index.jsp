<%--
  Created by IntelliJ IDEA.
  User: Sharrfire
  Date: 07-Dec-20
  Time: 9:53 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<!--
ustora by freshdesignweb.com
Twitter: https://twitter.com/freshdesignweb
URL: https://www.freshdesignweb.com/ustora/
-->
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>SM Store</title>

    <!-- Google Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Titillium+Web:400,200,300,700,600' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Raleway:400,100' rel='stylesheet' type='text/css'>

    <!-- Bootstrap -->
    <link rel="stylesheet" href="css/bootstrap.min.css">

    <!-- Font Awesome -->
    <link rel="stylesheet" href="css/font-awesome.min.css">

    <!-- Custom CSS -->
    <link rel="stylesheet" href="css/owl.carousel.css">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="css/responsive.css">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <style>


    </style>
</head>
<body>
<jsp:include page="Header.jsp" />


<div class="slider-area">
    <!-- Slider -->
    <div class="block-slider block-slider4">
        <ul class="" id="bxslider-home4">
            <li>
                <img src="img/vendor/h4-slide.png" alt="Slide">
                <div class="caption-group">
                    <h2 class="caption title">
                        iPhone <span class="primary">6 <strong>Plus</strong></span>
                    </h2>
                    <h4 class="caption subtitle">Dual SIM</h4>
                    <a class="caption button-radius" href="#"><span class="icon"></span>Khám phá ngay</a>
                </div>
            </li>
            <li><img src="img/vendor/h4-slide2.png" alt="Slide">
                <div class="caption-group">
                    <h2 class="caption title">
                        Mua 1 tặng 1 <span class="primary"><strong>Giảm giá</strong> 50% </span>
                    </h2>
                    <h4 class="caption subtitle">Dụng cụ học tập và balo.*</h4>
                    <a class="caption button-radius" href="#"><span class="icon"></span>Khám phá ngay</a>
                </div>
            </li>
            <li><img src="img/vendor/h4-slide3.png" alt="Slide">
                <div class="caption-group">
                    <h2 class="caption title">
                        Apple <span class="primary">Store <strong>Ipod</strong></span>
                    </h2>
                    <h4 class="caption subtitle">Chọn sản phẩm</h4>
                    <a class="caption button-radius" href="#"><span class="icon"></span>Khám phá ngay</a>
                </div>
            </li>
            <li><img src="img/vendor/h4-slide4.png" alt="Slide">
                <div class="caption-group">
                    <h2 class="caption title">
                        Apple <span class="primary">Store <strong>Ipod</strong></span>
                    </h2>
                    <h4 class="caption subtitle">& Phone</h4>
                    <a class="caption button-radius" href="#"><span class="icon"></span>Khám phá ngay</a>
                </div>
            </li>
        </ul>
    </div>
    <!-- ./Slider -->
</div> <!-- End slider area -->

<div class="promo-area">
    <div class="zigzag-bottom"></div>
    <div class="container">
        <div class="row">
            <div class="col-md-3 col-sm-6">
                <div class="single-promo promo1">
                    <i class="fa fa-refresh"></i>
                    <p>30 Ngày trở lại</p>
                </div>
            </div>
            <div class="col-md-3 col-sm-6">
                <div class="single-promo promo2">
                    <i class="fa fa-truck"></i>
                    <p>Giao hàng miễn phí</p>
                </div>
            </div>
            <div class="col-md-3 col-sm-6">
                <div class="single-promo promo3">
                    <i class="fa fa-lock"></i>
                    <p>Thanh toán an toàn</p>
                </div>
            </div>
            <div class="col-md-3 col-sm-6">
                <div class="single-promo promo4">
                    <i class="fa fa-gift"></i>
                    <p>Sản phẩm mới</p>
                </div>
            </div>
        </div>
    </div>
</div> <!-- End promo area -->




<div class="product-widget-area">
    <div class="zigzag-bottom"></div>
    <div class="container">
        <div class="row">
            <div class="col-md-4">
                <div class="single-product-widget">
                    <h2 class="product-wid-title">Top Sale</h2>
                    <a href="#" class="wid-view-more">Xem tất cả</a>

                    <c:forEach items="${ListS}" var="s">
                        <div class="single-wid-product">
                            <a href="single-product.html"><img src=${s.img} class="product-thumb"></a>
                            <h2><a href="single-product.html">${s.name}</a></h2>
                            <div class="product-wid-rating">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                            </div>
                            <div class="product-carousel-price">
                                <ins>${s.priceSale}đ</ins>
                                <del>${s.price}đ</del>
                            </div>

                        </div>
                    </c:forEach>

                </div>
            </div>
            <div class="col-md-4">
                <div class="single-product-widget">
                    <h2 class="product-wid-title">Giá rẻ</h2>
                    <a href="#" class="wid-view-more">Xem tất cả</a>

                    <c:forEach items="${ListLP}" var="lp">
                        <div class="single-wid-product">
                            <a href="single-product.html"><img src=${lp.img} class="product-thumb"></a>
                            <h2><a href="single-product.html">${lp.name}</a></h2>
                            <div class="product-wid-rating">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                            </div>
                            <div class="product-carousel-price">
                                <ins>${lp.priceSale}đ</ins>
                                <del>${lp.price}đ</del>
                            </div>

                        </div>
                    </c:forEach>
                </div>
            </div>
            <div class="col-md-4">
                <div class="single-product-widget">
                    <h2 class="product-wid-title">Mới nhất</h2>
                    <a href="#" class="wid-view-more">Xem tất cả</a>
                    <c:forEach items="${ListL}" var="l">
                    <div class="single-wid-product">
                        <a href="single-product.html"><img src=${l.img} class="product-thumb"></a>
                        <h2><a href="single-product.html">${l.name}</a></h2>
                        <div class="product-wid-rating">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                        </div>
                        <div class="product-carousel-price">
                            <ins>${l.priceSale}đ</ins>
                            <del>${l.price}đ</del>
                        </div>

                    </div>
                    </c:forEach>
                </div>
            </div>
        </div>
    </div>
</div> <!-- End product widget area -->

<jsp:include page="Footer.jsp"></jsp:include>


</div> <!-- End footer bottom area -->

<!-- Latest jQuery form server -->
<script src="https://code.jquery.com/jquery.min.js"></script>

<!-- Bootstrap JS form CDN -->
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

<!-- jQuery sticky menu -->
<script src="js/owl.carousel.min.js"></script>
<script src="js/jquery.sticky.js"></script>

<!-- jQuery easing -->
<script src="js/jquery.easing.1.3.min.js"></script>

<!-- Main Script -->
<script src="js/main.js"></script>

<!-- Slider -->
<script type="text/javascript" src="js/bxslider.min.js"></script>
<script type="text/javascript" src="js/script.slider.js"></script>
</body>
</html>