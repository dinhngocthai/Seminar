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
                width: 70%;
                padding-top: 33px;
                padding-left: 33px;
                padding-right: 33px;
                height: auto;
                background: #063050;
                margin: auto;
                border-radius: 12px;
                padding-bottom: 28px;
                margin-top: 89px;
            }
            .sign_in_form .text{
                color: white;
                font-weight: bold;
                font-size: 24px;
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

            .button1{

                background:#114477 !important;
                border-radius: 20px;
                width: 166px;
                height: 45px;
            }

            .err {
                color: red;
            }

        </style>

    </head>
<body>
<div class="container">
    <div class="sign_in_form">
        <span class="text">ĐĂNG KÍ</span>
        <form id="Sign_In" method="post" action="Signup" >
            <div class="input_box">
                <input id="user" name="user" type="text" placeholder="Tên người dùng" value="">

            </div>
            <div class="err">
                <span id="errorname"></span>

            </div>
            <-------------------------------------------------------->


            <-------------------------------------------------------->
            <div class="input_box">
                <input id="password" name="password" type="password" placeholder="Mật khẩu" value="">
                <!--  <span id="errorpass" class="err"></span>-->

            </div>
            <div class="err">
                <span id="errorpass"></span>

            </div>
            <-------------------------------------->
            <div class="input_box">
                <input id="repassword" name="repassword" type="password" placeholder="Nhập lại mật khẩu" value="">
                <!-- <span id="errorrepass" class="err"></span>-->

            </div>
            <div class="err">
                <span id="errorrepass"></span>

            </div>
            <--------------------------------------------->

            <div class="button">
                <input class="button1" type="submit" value="Tạo tài khoản"> <!--onclick="getInfo(); return false"-->></input>
            </div>
        </form>
    </div>
</div>

<script>
    function getInfo(){
        var username=document.getElementById("username").value;
        var email= document.getElementById("email").value;
        var password=document.getElementById("password").value;
        var repassword=document.getElementById("repassword").value;
        //kiem tra du lieu
        if(username=="") {
            document.getElementById("errorname").innerHTML="Vui lòng nhập tên người dùng";
        } else {
            document.getElementById("errorname").innerHTML="";
        }
        //ktra email
        if(email==""){
            document.getElementById("erroremail").innerHTML="Vui lòng nhập email";
        }  else {
            document.getElementById("erroremail").innerHTML="";
        }

        //ktra mat khau
        if(password==""){
            document.getElementById("errorpass").innerHTML="Vui lòng nhập mật khẩu";
        }  else {
            document.getElementById("errorpass").innerHTML="";
        }
        if(repassword==""){
            document.getElementById("errorrepass").innerHTML="Vui lòng nhập lại mật khẩu";
        }  else {
            document.getElementById("errorrepass").innerHTML="";
        }



    }
</script>

</body>
</html>
