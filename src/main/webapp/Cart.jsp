<%@ page import="demo.model.Cart" %>
<%@ page import="java.util.Collection" %>
<%@ page import="demo.entity.Product" %>

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
<jsp:include page="Header.jsp"></jsp:include>



<div class="product-big-title-area">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="product-bit-title text-center">
                    <h2>Giỏ hàng</h2>
                </div>
            </div>
        </div>
    </div>
</div> <!-- End Page title area -->


<div class="single-product-area">
    <div class="zigzag-bottom"></div>
    <div class="container">
        <div class="row">
            <div class="col-md-4">

                <div class="single-sidebar">
                    <h2 class="sidebar-title">Sản Phẩm</h2>
                    <c:forEach items="${ListOPPO}" var="p">
                        <div class="thubmnail-recent">
                            <img src="${p.img}" class="recent-thumb" alt="">
                            <h2><a href="single-product.html">${p.name}</a></h2>
                            <div class="product-sidebar-price">
                                <ins>${p.price}đ</ins>
                                <del>${p.priceSale}đ</del>
                            </div>
                        </div>
                    </c:forEach>
                </div>

            </div>
            <!------End-Product-Area------>


            <div class="product-content-right">
                <div class="woocommerce">
                    <form method="post" action="#">
                        <table cellspacing="1" class="shop_table cart">
                            <thead>
                            <tr>
                                <th class="product-remove">&nbsp;</th>
                                <th class="product-thumbnail">&nbsp;</th>
                                <th class="product-name">Sản phẩm</th>
                                <th class="product-price">Giá</th>
                                <th class="product-quantity" style="width: 24%">Số lượng</th>
                                <th class="product-subtotal">Tổng giá</th>
                            </tr>
                            </thead>
                            <tbody>
                            <% Cart c = Cart.getCart(session);
                                Collection<Product> data = c.getData();
                                request.setAttribute("data",data);
                            %>
                            <c:forEach items="$(data)" var="d">
                                <tr class="cart_item">
                                    <td class="product-remove">
                                        <a title="Remove this item" class="remove" href="#">×</a>
                                    </td>

                                    <td class="product-thumbnail">
                                        <a href="single-product.html"><img width="145" height="145" alt="poster_1_up" class="shop_thumbnail" src="$(d.img)"></a>
                                    </td>

                                    <td class="product-name">
                                        <a href="single-product.html">$(d.name)</a>
                                    </td>

                                    <td class="product-price">
                                        <span class="amount">$(d.price)</span>
                                    </td>


                                    <td class="product-quantity">
                                        <div class="quantity buttons_added">
                                            <input type="button" class="minus" value="-"  >
                                            <input type="number" size="4" class="input-text qty text" title="Qty" value="$(d.quantity)" min="0" step="1">
                                            <input type="button" class="plus" value="+" >
                                        </div>
                                    </td>

                                    <td class="product-subtotal">
                                        <span class="amount">$(d.price * d.quantity)</span>
                                    </td>
                                </tr>
                            </c:forEach>

                            <tr>
                                <td class="actions" colspan="6">
                                    <div class="coupon">
                                        <label for="coupon_code">Mã giảm giá:</label>
                                        <input type="text" style="width: 300px;" placeholder="Nhập mã..." value="" id="coupon_code" class="input-text" name="coupon_code">
                                    </div>
                                    <input type="submit" value="Dùng" name="apply_coupon" class="button">
                                    <input type="submit" value="Cập nhật" name="update_cart" class="button">
                                    <input type="submit" value="Thanh toán" name="proceed" class="checkout-button button alt wc-forward">
                                </td>
                            </tr>

                            </tbody>
                        </table>
                    </form>

                    <div class="cart-collaterals">




                        <div class="cart_totals ">
                            <h2>Tổng tiền</h2>

                            <table cellspacing="0">
                                <tbody>
                                <tr class="cart-subtotal">
                                    <th>Giỏ hàng</th>
                                    <td><span class="amount">3.490.000₫</span></td>
                                </tr>

                                <tr class="shipping">
                                    <th>Phí vận chuyển</th>
                                    <td>Miễn phí</td>
                                </tr>

                                <tr class="order-total">
                                    <th>Tổng</th>
                                    <td><strong><span class="amount">3.490.000₫</span></strong> </td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
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


</body>
</body>
</html>