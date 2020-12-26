<%--
  Created by IntelliJ IDEA.
  User: Sharrfire
  Date: 12-Dec-20
  Time: 4:24 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

</head>
<body>

<div class="site-branding-area">
    <div class="container">
        <div class="row">
            <div class="col-sm-6">
                <div class="logo">
                    <h1><a href="Index"><img src="img/vendor/your-logo.png"></a></h1>
                </div>
                <div class="search">
                    <input type="text" placeholder="Tìm kiếm">
                    <i class="fa fa-search"></i>

                </div>
            </div>
            <div class="row">
                <div class="col-md-8-menu">
                    <div class="user-menu">
                        <ul>
                            <li><a href="UserAccount"><i class="fa fa-user"></i> Tài khoản</a></li>
                            <li><a href="Cart"><i class="fa fa-shopping-cart"></i> Giỏ hàng</a></li>
                            <li><a href="Login"><i class="fa fa-user"></i> Đăng nhập</a></li>
                        </ul>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div> <!-- End site branding area -->

<div class="mainmenu-area">
    <div class="container">
        <div class="row">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>
            <div class="navbar-collapse collapse">
                <ul class="nav navbar-nav">
                    <li class=""><a href="Index">Trang chủ</a></li>
                    <li class="danh_muc"><a href="ListData">Danh mục sản phẩm</a>


                        <ul class="sub-menu">
                            <li>Hãng sản xuất
                                <ul class="h_sx">
                                    <li class=""><a class="" href="Iphone">Iphone</a> </li>
                                    <li class=""><a class="" href="Samsung">Samsung</a></li>
                                    <li class=""><a class="" href="OPPO">Oppo</a></li>
                                    <li class=""><a class="" href="Realme">Realme</a></li>
                                    <li class=""><a class="" href="Xiaomi" > Xiaomi</a></li>


                                </ul>
                            </li>

<%--                            <li>Mức giá

                                <ul class="muc_gia">
                                    <li>< 5 triệu</li>
                                    <li>5-10 triệu</li>
                                    <li>10-15 triệu</li>
                                    <li>>15 triệu</li>

                                </ul>

                            </li>--%>

                        </ul>


                    </li>
                    <li><a href="Product">Chi tiết sản phẩm</a></li>
                    <li><a href="Checkout">Thanh toán</a></li>
                    <li><a href="News">Tin tức</a></li>
                    <li><a href="Hotline">Liên hệ</a></li>
                </ul>
            </div>
        </div>
    </div>
</div> <!-- End mainmenu area -->

</body>
</html>
