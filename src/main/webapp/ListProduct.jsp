<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
    <title>Danh mục sản phẩm</title>

    <!-- Google Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Titillium+Web:400,200,300,700,600' rel='stylesheet'
          type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Raleway:400,100' rel='stylesheet' type='text/css'>

    <!-- Bootstrap -->
    <link rel="stylesheet" href="css/vendor/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>


    <!-- Font Awesome -->
    <link rel="stylesheet" href="css/vendor/font-awesome.min.css">

    <!-- Custom CSS -->
    <link rel="stylesheet" href="css/vendor/owl.carousel.css">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="css/vendor/responsive.css">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <style>
        .col-md-3 col-sm-6 {
            float: left;
            display: flex;
        }

        .product-upper > img {
            width: 195px;
            height: 200px;
        }

        .btn-group-choice {
            text-align: right;
            padding-right: 252px;
            padding-top: 25px;
            padding-bottom: 25px;
            background: #fbfbfb;
            clear: both;

        }

        .btn-default {
            width: 123px;

        }

        .col-md-3-3 {
            width: 25%;
            background: #f1f1f1;
            border: 1px solid;
            margin-bottom: 5px;
            padding-bottom: 20px;
            padding-top: 15px;
        }

        .col-md-3-3.list-group-item {
            float: none;
            width: 100%;
            background-color: #fff;
            margin-bottom: 10px;
            position: relative;
            display: block;
            padding: 10px 15px;
            border: 1px solid #ddd;
            height: 227px;
        }

        .col-md-3-3.list-group-item:nth-of-type(odd):hover, .col-md-3-3.list-group-item:hover {
            background: #428bca;
        }

        .col-md-3-3.list-group-item img {
            margin-right: 10px;
        }

        .col-md-3-3.list-group-item .caption {
            padding: 9px 9px 0px 9px;
        }

        .col-md-3-3.list-group-item:nth-of-type(odd) {
            background: #eeeeee;
        }

        .col-md-3-3.list-group-item:before, .col-md-3.list-group-item:after {
            display: table;
            content: "";
        }

        .col-md-3-3.list-group-item img {
            float: left;
        }

        .col-md-3-3.list-group-item:after {
            clear: both;
        }

        .navbar-menu {
            margin-left: 155px;

        }

        .navbar-menu .price > ul {
            display: flex;
            margin-left: 10px;

        }

        .price span {
            margin: 10px;
        }

        .navbar-menu .price > ul > li {
            list-style-type: none;
            margin: 10px;

        }

        .menu-price .fl {
            float: left;
        }

        #products {
            float: right;
            margin-left: 334px;
            position: absolute;

        }

        #container-filter {
            float: left;
            width: 645px;
            margin-left: 40px;


        }

        .row {
            display: flex;
            flex-wrap: wrap;
            margin-right: -15px;
            margin-left: -15px;
        }

        .brand > ul > li {
            list-style-type: none;
            height: 40px;
            border: 1px solid #bbbbbf;
            padding: 5px;
            padding-top: 15px;
            text-align: center;

        }

        .brand a {
            color: black;
            text-decoration: none;
        }

        .brand a:hover {
            color: #31b0d5;
        }

        .brand .sub-title {
            height: 40px;
            border: 1px solid #bbbbbf;
            text-align: center;
            font-size: 17px;
            font-weight: bold;
            padding-top: 8px;
            background: #5a88ca;
            color: white;


        }

        .container-filter {
            clear: both;
            padding-top: 10px;

        }


    </style>
</head>
<body>
<jsp:include page="Header.jsp"/>


<div class="product-big-title-area">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="product-bit-title text-center">
                    <h2>Danh mục sản phẩm</h2>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="menu-price">
    <div class="navbar-menu">
        <div class="fl price">
            <ul>
                <span>Chọn mức giá:</span>
                <li><a href="#">Dưới 2 triệu</a></li>
                <li><a href="#">Dưới 2-4 triệu</a></li>
                <li><a href="#">Dưới 4-7 triệu</a></li>
                <li><a href="#">Dưới 7-14 triệu</a></li>
                <li><a href="#">Dưới 14-20 triệu</a></li>
                <li><a href="#">Trên 20 triệu</a></li>
            </ul>
        </div>

    </div>
</div>

<div class="btn-group-choice">
    <span>Chọn kiểu hiển thị</span>
    <a href="ListProduct.jsp" id="list" class="btn btn-default btn-sm">
        <span class="glyphicon glyphicon-th-list"> </span>Dạng danh sách</a>
    <a href="ListProduct.jsp" id="grid" class="btn btn-default btn-sm">
        <span class="glyphicon glyphicon-th"></span>Dạng lưới</a>
</div>


<div class="single-product-area">
    <div class="zigzag-bottom"></div>
    <div class="container" style="width: 80%; height: auto">
        <div class="row">
            <div class="col-md-4">
                <div class="row">

                    <div class="col-lg-5" style="position: relative">
                        <div class="border">
                            <div class="container-filter" style="    width: 300px;
                            height: auto;
                            /* border: 1px solid; */
                            align-content: center;
                            align-items: center;">
                                <p class="text border-bottom" style="text-align: center;margin: auto;">DANH MỤC SẢN
                                    PHẨM </p>
                                <div class="fl brand">
                                    <ul class="list-group category_block">
                                        <c:forEach items="${ListC}" var="c">
                                            <li class="active"><a href="category?cid=${c.id}">${c.cname}</a></li>
                                        </c:forEach>
                                    </ul>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--
                                <div class="single-sidebar">
                                    <h2 class="sidebar-title">Sản Phẩm mới</h2>
                                    <div class="thubmnail-recent">
                                        <img src="img/vendor/product-2.jpg" class="recent-thumb" alt="">
                                        <h2><a href="single-product.html">Samsung Galaxy Note 10</a></h2>
                                        <div class="product-sidebar-price">
                                            <ins>16.490.000₫</ins> <del>17.490.000₫</del>
                                        </div>
                                    </div>
                                    <div class="thubmnail-recent">
                                        <img src="img/realme/Realme-6-pro.jpg" class="recent-thumb" alt="">
                                        <h2><a href="single-product.html">Realme 6 pro</a></h2>
                                        <div class="product-sidebar-price">
                                            <ins>7.990.000₫</ins> <del>8.590.000₫</del>
                                        </div>
                                    </div>
                                    <div class="thubmnail-recent">
                                        <img src="img/oppo/oppo_a5.jpg" class="recent-thumb" alt="">
                                        <h2><a href="single-product.html">OPPO A5</a></h2>
                                        <div class="product-sidebar-price">
                                            <ins>3.990.000₫</ins> <del>4.590.000₫</del>
                                        </div>
                                    </div>
                                    <div class="thubmnail-recent">
                                        <img src="img/xiaomi/xiaomi-9t.jpg" class="recent-thumb" alt="">
                                        <h2><a href="single-product.html">Xiaomi Mi9T Pro</a></h2>
                                        <div class="product-sidebar-price">
                                            <ins>7.990.000₫</ins> <del>8.990.000₫</del>
                                        </div>
                                    </div>
                                </div>
                -->


            </div>
            <!------End-Product-Area------>


            <div class="col-md-8">
                <div class="product-content-right">

                    <div class="row">
                        <c:forEach items="${ListP}" var="p">

                            <div class="col-md-3-3 col-sm-6">

                                <div class="product-upper">
                                    <img src=${p.img} alt="">
                                </div>
                                <h2><a href="detail?pid=${p.id}">${p.name}</a></h2>
                                <div class="product-carousel-price">
                                    <ins>${p.priceSale}đ</ins>
                                    <del>${p.price}đ</del>
                                </div>

<%--                                <div class="product-option-shop">
                                    <a class="add_to_cart_button" data-quantity="1" data-product_sku=""
                                       data-product_id="70"
                                       rel="nofollow" href="add?id=${p.id}">Thêm giỏ hàng</a>
                                </div>--%>
                            </div>

                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
<%--
<div>

<div id="products" class="single-product-area">
    <div class="zigzag-bottom"></div>
    <div class="container">
        <div class="row">
            <c:forEach items="${ListP}" var="p">
                <div class="col-md-3-3 col-sm-6">
                    <div class="product-upper">
                        <img src=${p.img} alt="">
                    </div>
                    <h2><a href="">${p.name}</a></h2>
                    <div class="product-carousel-price">
                        <ins>${p.price}đ</ins>
                        <del>${p.priceSale}đ</del>
                    </div>

                    <div class="product-option-shop">
                        <a class="add_to_cart_button" data-quantity="1" data-product_sku="" data-product_id="70"
                           rel="nofollow" href="/Index/cart/add?id=${p.id}">Thêm giỏ hàng</a>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</div>
<div id="container-filter">
    <div class="row">
        <div class="col-lg-5">
            <div class="border">
                <div class="container-filter">
                    <p class="text border-bottom" style="text-align: center;margin-left: 42px;">DANH MỤC SẢN PHẨM </p>
                    <div class="fl brand">
                        <ul>
                            <div class="sub-title"> <span>THƯƠNG HIỆU</span> </div>
                            <li><a href="#">IPHONE</a></li>
                            <li><a href="#">OPPO</a></li>
                            <li><a href="#">SAMSUNG</a></li>
                            <li><a href="#">REALME</a></li>
                            <li><a href="#">REDME</a></li>
                            <li><a href="#">XIAOMI</a></li>
                        </ul>
                    </div>

                </div>
                <div class="border">

                </div>

            </div>
        </div>
    </div>
</div></div>
--%>


    <jsp:include page="Footer.jsp"></jsp:include>
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
<script src="js/jquery-3.5.1.min.js"></script>

<script type="text/javascript">
    $(document).ready(function () {
        $('#list').click(function (event) {
            event.preventDefault();
            $('#products .col-md-3-3').addClass('list-group-item');
        });
        $('#grid').click(function (event) {
            event.preventDefault();
            $('#products .col-md-3-3').removeClass('list-group-item');
            $('#products .col-md-3-3').addClass('grid-group-item');
        });
    });

</script>
</body>
</html>