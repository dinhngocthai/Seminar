<%--
  Created by IntelliJ IDEA.
  User: Sharrfire
  Date: 17-Dec-20
  Time: 12:00 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Đăng kí</title>

        <!-- Google Fonts -->
        <link href='http://fonts.googleapis.com/css?family=Titillium+Web:400,200,300,700,600' rel='stylesheet'
              type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300' rel='stylesheet'
              type='text/css'>
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
            .container_form {
                width: 1100px;
                height: auto;
                margin: auto;
                padding: 10px;
                background: #fbfbfb;
                background-image: url("img/vendor/hinh-nen-huawei-mate-10-1.jpg");
            }

            .sign_in_form {
                width: 400px;
                padding: 33px;
                height: auto;
                background: #282f59;
                margin: auto;
                border-radius: 12px;
                padding-bottom: 28px;

            }

            .input_box {
                padding-top: 11px;
                position: relative;
                display: flex;

            }

            .input_box input {
                width: 100%;
                box-shadow: 0px 0px 23px -3px rgba(0, 0, 0, 0.75);
                border-radius: 5px;
                height: 43px;
                border: none;
                cursor: pointer;
                box-sizing: border-box;
            }

            .button {
                width: 150px;
                margin: auto;
                padding-top: 22px;
            }

            .button1 {

                color: #e8e5e5;
                padding-top: 5px;
                padding-bottom: 5px;
                border-radius: 20px;
                width: 147px;
                height: 45px;
                cursor: pointer;
            }

            .image img {
                background: white;
                border-radius: 50%;
                box-shadow: 0px 0px 23px -3px rgb(50, 44, 50);
                align-items: center;
            }

            .err {
                color: red;
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
                    <h2>Đăng kí</h2>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="container_form">
    <div class="sign_in_form">
        <form id="Sign_In" method="post" action="" onsubmit="getInfo();return false">
            <div class="input_box">
                <input id="username" name="username" type="text" placeholder="Tên người dùng" value="">

            </div>
            <div class="err">
                <span id="errorname"></span>

            </div>


            <div class="input_box">
                <input id="last_first_name" name="lastfirstname" type="text" placeholder="Họ và tên" value="">
                <!--<span id="errorname_1" class="err"></span> -->
            </div>

            <div class="err">
                <span id="errorname_1"></span>
            </div>


            <div class="input_box">
                <input id="email" name="email" type="text" placeholder="Email" value="">
                <!-- <span id="erroremail" class="err"></span> -->

            </div>
            <div class="err">
                <span id="erroremail"></span>

            </div>


            <div class="input_box">
                <input id="phone" name="phone" type="text" placeholder="Số điện thoại" value="">
                <!-- <span id="errorphone" class="err"></span>-->

            </div>
            <div class="err">
                <span id="errorphone"></span>

            </div>

            <div class="input_box">
                <input id="address" name="address" type="text" placeholder="Địa chỉ" value="">
                <!--  <span id="erroradd" class="err"></span> -->

            </div>
            <div class="err">
                <span id="erroradd"></span>

            </div>
            <div class="input_box">
                <input id="password" name="password" type="password" placeholder="Mật khẩu" value="">
                <!--  <span id="errorpass" class="err"></span>-->

            </div>
            <div class="err">
                <span id="errorpass"></span>

            </div>


            <div class="input_box">
                <input id="repassword" name="repassword" type="password" placeholder="Nhập lại mật khẩu" value="">
                <!-- <span id="errorrepass" class="err"></span>-->

            </div>
            <div class="err">
                <span id="errorrepass"></span>

            </div>



            <div class="button">
                <input class="button1" type="submit" value="Tạo tài khoản"> <!--onclick="getInfo(); return false"-->
                </input>
            </div>
        </form>
    </div>
</div>
<jsp:include page="Footer.jsp"></jsp:include>
</body>
</html>
