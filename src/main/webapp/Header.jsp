<%--
  Created by IntelliJ IDEA.
  User: Sharrfire
  Date: 12-Dec-20
  Time: 4:24 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>
<head>
<style>
    .user-menu li a {
        display: block;
        font-size: 13px;
        margin-right: 5px;
        padding: 5px;
    }
</style>
</head>
<body>

<div class="site-branding-area">
    <div class="container">
        <div class="row">
            <div class="col-sm-6">
                <div class="logo">
                    <h1><a href="home"><img src="img/vendor/your-logo.png"></a></h1>
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
                            <c:if test="${ sessionScope.acc.isAdmin == 1}">
                                <li ><a href="#"><i class="fa fa-user-md"></i> Quản lí tài khoản </a></li>
                            </c:if>

                            <c:if test="${ sessionScope.acc.isSell == 1}">
                                <li><a href="manager"><i class="fa fa-bar-chart"></i>Quản lí sản phẩm</a></li>
                            </c:if>

                            <c:if test="${ sessionScope.acc != null}">

                                <li><a href="UserAccount"><i class="fa fa-user"></i>${sessionScope.acc.username}</a>
                                </li>
                                <li><a href="Cart"><i class="fa fa-shopping-cart"></i> Giỏ hàng</a></li>

                                <li><a href="Logout"><i class="fa fa-sign-out"></i> Đăng xuất</a></li>
                            </c:if>

                            <c:if test="${ sessionScope.acc == null}">
                                <li><a href="Cart"><i class="fa fa-shopping-cart"></i> Giỏ hàng</a></li>

                                <li><a href="Login.jsp"><i class="fa fa-user"></i> Đăng nhập</a></li>
                            </c:if>

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
                    <li class=""><a href="home">Trang chủ</a></li>
                    <li class="danh_muc"><a href="ProductList">Danh mục sản phẩm</a>


<%--
                        <ul class="sub-menu">
                            <li>Hãng sản xuất
                                <ul class="h_sx">
                                    <li class=""><a class="" href="Iphone">Iphone</a></li>
                                    <li class=""><a class="" href="Samsung">Samsung</a></li>
                                    <li class=""><a class="" href="OPPO">Oppo</a></li>
                                    <li class=""><a class="" href="Realme">Realme</a></li>
                                    <li class=""><a class="" href="Xiaomi"> Xiaomi</a></li>


                                </ul>
                            </li>

                            &lt;%&ndash;                            <li>Mức giá

                                                            <ul class="muc_gia">
                                                                <li>< 5 triệu</li>
                                                                <li>5-10 triệu</li>
                                                                <li>10-15 triệu</li>
                                                                <li>>15 triệu</li>

                                                            </ul>

                                                        </li>&ndash;%&gt;

                        </ul>
--%>


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
