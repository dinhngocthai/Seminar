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

        .col-md-3-3.list-group-item:after {
            clear: both;
        }


    </style>
</head>
<body>
<jsp:include page="Header.jsp" />


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
            <c:forEach items="${ListProduct}" var="p">
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


<div class="footer-top-area">
    <div class="zigzag-bottom"></div>
    <div class="container">
        <div class="row">
            <div class="col-md-3 col-sm-6">
                <div class="footer-about-us">
                    <h2>SM<span>Store</span></h2>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Perferendis sunt id doloribus vero quam
                        laborum quas alias dolores blanditiis iusto consequatur, modi aliquid eveniet eligendi iure
                        eaque ipsam iste, pariatur omnis sint! Suscipit, debitis, quisquam. Laborum commodi veritatis
                        magni at?</p>
                    <div class="footer-social">
                        <a href="#" target="_blank"><i class="fa fa-facebook"></i></a>
                        <a href="#" target="_blank"><i class="fa fa-twitter"></i></a>
                        <a href="#" target="_blank"><i class="fa fa-youtube"></i></a>
                        <a href="#" target="_blank"><i class="fa fa-linkedin"></i></a>
                    </div>
                </div>
            </div>

            <div class="col-md-3 col-sm-6">
                <div class="footer-menu">
                    <h2 class="footer-wid-title">Điều hướng người dùng</h2>
                    <ul>
                        <li><a href="myaccount.html">Tài khoản</a></li>
                        <li><a href="cart.html">Giỏ hàng</a></li>
                        <li><a href="news.html">Tin tức</a></li>

                    </ul>
                </div>
            </div>


            <div class="col-md-3 col-sm-6">
                <div class="footer-menu">
                    <h2 class="footer-wid-title">Danh mục</h2>
                    <ul>
                        <li><a href="iphone.html">Iphone</a></li>
                        <li><a href="samsung.html">Samsung</a></li>
                        <li><a href="oppo.html">OPPO</a></li>
                        <li><a href="realme.html">Realme</a></li>
                        <li><a href="xiaomi.html">Xiaomi</a></li>
                    </ul>
                </div>
            </div>

            <div class="col-md-3 col-sm-6">
                <div class="footer-newsletter">
                    <h2 class="footer-wid-title">Nhận tin</h2>
                    <p>Nhập địa chỉ email để có thể nhận thêm thông báo về chương trình khuyến mãi.</p>
                    <div class="newsletter-form">
                        <input type="email" placeholder="Nhập email">
                        <input type="submit" value="Gửi">
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="footer-bottom-area">
    <div class="container">
        <div class="row">
            <div class="col-md-8">
                <div class="copyright">
                    <p>Mọi thắc mắc xin liên hệ đường dây nóng: 19001188</p>
                </div>
            </div>

            <div class="col-md-4">
                <div class="footer-card-icon">
                    <i class="fa fa-cc-discover"></i>
                    <i class="fa fa-cc-mastercard"></i>
                    <i class="fa fa-cc-paypal"></i>
                    <i class="fa fa-cc-visa"></i>
                </div>
            </div>
        </div>
    </div>
</div>


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