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
<jsp:include page="Header.jsp"></jsp:include>


<div class="product-big-title-area">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="product-bit-title text-center">
                    <h2>Đăng nhập</h2>
                </div>
            </div>
        </div>
    </div>
</div>
<div>
    <div class="container">
        <div class="login-wrap">
            <div class="login-content">
                <div class="login-logo">
                    <a href="index.html">
                        <img src="img/vendor/your-logo.png" alt="SM Store" style="width: 50%; height: auto">
                    </a>
                </div>
                <div class="login-form">
                    <form action="" method="post">
                        <div class="form-group">
                            <label>Email Address</label>
                            <input class="au-input au-input--full" type="email" name="email" placeholder="Email">
                        </div>
                        <button class="au-btn au-btn--block au-btn--green m-b-20" type="submit">submit</button>
                    </form>
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