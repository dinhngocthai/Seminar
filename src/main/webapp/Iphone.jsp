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
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>


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
        ,
        .col-md-3-3.list-group-item:after {
            clear: both;
        }


    </style>
</head>
<body>
<jsp:include page="Header.jsp"></jsp:include>

<div class="product-big-title-area">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="product-bit-title text-center">
                    <h2>Iphone</h2>
                </div>
            </div>
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

<div id="products" class="single-product-area">
    <div class="zigzag-bottom"></div>
    <div class="container">
        <div class="row">
            <c:forEach items="${ListSamsung}" var="p">
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
                           rel="nofollow" href="/canvas/shop/?add-to-cart=70">Thêm giỏ hàng</a>
                    </div>
                </div>
                <%--
                            <div class="col-md-3 col-sm-6">
                                <div class="single-shop-product">
                                    <div class="product-upper">
                                        <img src="img/samsung/samsung-galaxy-a31.png" alt="">
                                    </div>
                                    <h2><a href="">Samsung Galaxy A31 </a></h2>
                                    <div class="product-carousel-price">
                                        <ins>6.500.000₫</ins>
                                        <del>7.500.000₫</del>
                                    </div>

                                    <div class="product-option-shop">
                                        <a class="add_to_cart_button" data-quantity="1" data-product_sku="" data-product_id="70"
                                           rel="nofollow" href="/canvas/shop/?add-to-cart=70">Thêm giỏ hàng</a>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-3 col-sm-6">
                                <div class="single-shop-product">
                                    <div class="product-upper">
                                        <img src="img/samsung/samsung-galaxy-a30s.png" alt="">
                                    </div>
                                    <h2><a href="">Samsung Galaxy A30s</a></h2>
                                    <div class="product-carousel-price">
                                        <ins>6.000.000₫</ins>
                                        <del>7.000.000₫</del>
                                    </div>

                                    <div class="product-option-shop">
                                        <a class="add_to_cart_button" data-quantity="1" data-product_sku="" data-product_id="70"
                                           rel="nofollow" href="/canvas/shop/?add-to-cart=70">Thêm giỏ hàng</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 col-sm-6">
                                <div class="single-shop-product">
                                    <div class="product-upper">
                                        <img src="img/samsung/samsung-galaxy-a21s.png" alt="">
                                    </div>
                                    <h2><a href="">Samsung Galaxy A21s</a></h2>
                                    <div class="product-carousel-price">
                                        <ins>5.500.000₫</ins>
                                        <del>6.500.000₫</del>
                                    </div>

                                    <div class="product-option-shop">
                                        <a class="add_to_cart_button" data-quantity="1" data-product_sku="" data-product_id="70"
                                           rel="nofollow" href="/canvas/shop/?add-to-cart=70">Thêm giỏ hàng</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 col-sm-6">
                                <div class="single-shop-product">
                                    <div class="product-upper">
                                        <img src="img/iphone/iphone-11-pro-max-black-400x460.png" alt="">
                                    </div>
                                    <h2><a href="">Iphone 11 Pro Max</a></h2>
                                    <div class="product-carousel-price">
                                        <ins>29.000.000₫</ins>
                                        <del>30.000.000₫</del>
                                    </div>

                                    <div class="product-option-shop">
                                        <a class="add_to_cart_button" data-quantity="1" data-product_sku="" data-product_id="70"
                                           rel="nofollow" href="/canvas/shop/?add-to-cart=70">Thêm giỏ hàng</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 col-sm-6">
                                <div class="single-shop-product">
                                    <div class="product-upper">
                                        <img src="img/iphone/iphone-x-.jpg" alt="">
                                    </div>
                                    <h2><a href="">Iphone X </a></h2>
                                    <div class="product-carousel-price">
                                        <ins>10.000.000₫</ins>
                                        <del>11.000.000₫</del>
                                    </div>

                                    <div class="product-option-shop">
                                        <a class="add_to_cart_button" data-quantity="1" data-product_sku="" data-product_id="70"
                                           rel="nofollow" href="/canvas/shop/?add-to-cart=70">Thêm giỏ hàng</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 col-sm-6">
                                <div class="single-shop-product">
                                    <div class="product-upper">
                                        <img src="img/iphone/iphone-xs-max-gold-600x600.jpg" alt="">
                                    </div>
                                    <h2><a href="">Iphone Xs Max </a></h2>
                                    <div class="product-carousel-price">
                                        <ins>13.000.000₫</ins>
                                        <del>13.000.000₫</del>
                                    </div>

                                    <div class="product-option-shop">
                                        <a class="add_to_cart_button" data-quantity="1" data-product_sku="" data-product_id="70"
                                           rel="nofollow" href="/canvas/shop/?add-to-cart=70">Thêm giỏ hàng</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 col-sm-6">
                                <div class="single-shop-product">
                                    <div class="product-upper">
                                        <img src="img/iphone/iphone-Xr-den.png" alt="">
                                    </div>
                                    <h2><a href="">Iphone XR </a></h2>
                                    <div class="product-carousel-price">
                                        <ins>12.000.000₫</ins>
                                        <del>13.000.000₫</del>
                                    </div>

                                    <div class="product-option-shop">
                                        <a class="add_to_cart_button" data-quantity="1" data-product_sku="" data-product_id="70"
                                           rel="nofollow" href="/canvas/shop/?add-to-cart=70">Thêm giỏ hàng</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 col-sm-6">
                                <div class="single-shop-product">
                                    <div class="product-upper">
                                        <img src="img/samsung/samsung-galaxy-s20.png" alt="">
                                    </div>
                                    <h2><a href="">Samsung Galaxy S20</a></h2>
                                    <div class="product-carousel-price">
                                        <ins>21.500.000₫</ins>
                                        <del>22.500.000₫</del>
                                    </div>

                                    <div class="product-option-shop">
                                        <a class="add_to_cart_button" data-quantity="1" data-product_sku="" data-product_id="70"
                                           rel="nofollow" href="/canvas/shop/?add-to-cart=70">Thêm giỏ hàng</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 col-sm-6">
                                <div class="single-shop-product">
                                    <div class="product-upper">
                                        <img src="img/samsung/samsung-galaxy-z-fold-2.png" alt="">
                                    </div>
                                    <h2><a href="">Samsung Galaxy Z Fold</a></h2>
                                    <div class="product-carousel-price">
                                        <ins>50.000.000₫</ins>
                                        <del>52.500.000₫</del>
                                    </div>

                                    <div class="product-option-shop">
                                        <a class="add_to_cart_button" data-quantity="1" data-product_sku="" data-product_id="70"
                                           rel="nofollow" href="/canvas/shop/?add-to-cart=70">Thêm giỏ hàng</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 col-sm-6">
                                <div class="single-shop-product">
                                    <div class="product-upper">
                                        <img src="img/samsung/samsung-galaxy-z-flip.png" alt="">
                                    </div>
                                    <h2><a href="">Samsung Galaxy Z Flip</a></h2>
                                    <div class="product-carousel-price">
                                        <ins>36.000.000₫</ins>
                                        <del>37.500.000₫</del>
                                    </div>

                                    <div class="product-option-shop">
                                        <a class="add_to_cart_button" data-quantity="1" data-product_sku="" data-product_id="70"
                                           rel="nofollow" href="/canvas/shop/?add-to-cart=70">Thêm giỏ hàng</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 col-sm-6">
                                <div class="single-shop-product">
                                    <div class="product-upper">
                                        <img src="img/samsung/samsung-galaxy-s20-FE.png" alt="">
                                    </div>
                                    <h2><a href="">Samsung Galaxy S20 FE</a></h2>
                                    <div class="product-carousel-price">
                                        <ins>16.000.000₫</ins>
                                        <del>17.000.000₫</del>
                                    </div>

                                    <div class="product-option-shop">
                                        <a class="add_to_cart_button" data-quantity="1" data-product_sku="" data-product_id="70"
                                           rel="nofollow" href="/canvas/shop/?add-to-cart=70">Thêm giỏ hàng</a>
                                    </div>
                                </div>

                            </div>--%>
            </c:forEach>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="product-pagination text-center">
                    <nav>
                        <ul class="pagination">
                            <li>
                                <a href="#" aria-label="Previous">
                                    <span aria-hidden="true">&laquo;</span>
                                </a>
                            </li>
                            <li><a href="list-item.html">1</a></li>
                            <li><a href="list-item2.html">2</a></li>
                            <li><a href="#">3</a></li>
                            <li><a href="#">4</a></li>
                            <li><a href="#">5</a></li>
                            <li>
                                <a href="#" aria-label="Next">
                                    <span aria-hidden="true">&raquo;</span>
                                </a>
                            </li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </div>
</div>


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