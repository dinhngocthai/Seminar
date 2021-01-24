<%--
  Created by IntelliJ IDEA.
  User: Sharrfire
  Date: 17-Dec-20
  Time: 12:08 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Login</title>

    <!-- Google Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Titillium+Web:400,200,300,700,600' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Raleway:400,100' rel='stylesheet' type='text/css'>

    <!-- Bootstrap -->
    <link rel="stylesheet" href="css/vendor/bootstrap.min.css">

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
        body{
            background-image: url("img/vendor/hinhnen_login.png");
            background-size: cover;

        }
        .container{
            width: 1100px;
            height: auto;
            margin:  auto;
            padding-top: 10%;
            background-size: contain;
        }
        .sign_in_form{
            width: 62%;
            padding: 33px;
            height: auto;
            background: #053260;
            margin: auto;
            border-radius: 12px;
            padding-bottom: 28px;

        }
        .sign_in_form .text{
            color:white;
            font-weight: bold;
            font-size: 23px;
        }
        .input_box{
            padding-top: 26px;
            position: relative;

        }
        .input_box span{
            position: absolute;
            top: 45px;
            right: 20px;
            cursor: pointer;
        }
        .input_box input{
            width: 100%;
            box-shadow: 0px 0px 23px -3px rgba(0,0,0,0.75);
            border-radius: 10px;
            height: 51px;
            border: none;
            cursor: pointer;
            box-sizing: border-box;
        }
        .label_1{
            text-align: right;
            padding-top: 17px;
        }
        .button{
            width: 132px;
            margin: auto;
            padding-top: 22px;
        }
        .button1{
            padding-top: 5px;
            padding-bottom: 5px;
            border-radius: 20px;
            width: 132px;
            height: 45px;
            cursor: pointer;
            background:#114477 !important;
        }
        .button1:hover{
            background: #0f1113!important;
        }

        .sign_Up{
            color: #6d6565;
            margin-top: 50px;
            text-align: center;
            cursor: pointer;

        }


    </style>
</head>

<body>

<div class="container">
    <div class="sign_in_form">
        <form id="Sign_In" method="get" action="Login">
            <span class="text">ĐĂNG NHẬP</span>

            <div class="input_box">
                <input id="user" name="user" type="text" placeholder="Tên người dùng">

            </div>
            <div class="input_box">
                <input id="password" name="password" type="password" placeholder="Mật khẩu">
                <span class="fa fa-eye" onclick="showHidden()"></span>

            </div>
            <div class="label_1">
                <span><a href="forgetpass.html">Quên mật khẩu?</a></span>

            </div>
            <div class="button">
                <input class="button1" type="submit" value="Đăng nhập">
            </div>
        </form>

        <div class="sign_Up">
            <span class="text">Bạn có tài khoản chưa? <a href="Signup.jsp">Đăng kí</a></span>

        </div>
    </div>
</div>
</body>

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

<script>
    isBool = true;

    function showHidden() {
        if (isBool) {
            document.getElementById("password").setAttribute("type", "text");
            isBool = false;
        } else {
            document.getElementById("password").setAttribute("type", "password");
            isBool = true;
        }

    }
</script>

</html>
