<%--
  Created by IntelliJ IDEA.
  User: Sharrfire
  Date: 17-Dec-20
  Time: 12:55 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Tin tức</title>

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
    <title>Tin Tức</title>
    <style>


        #section2 {
            margin: 3% 8% 1%;
        }

        #section2 #text {
            font-weight: bold;
            text-align: center;
            border-radius: 5px;
            font-size: 25px;
            height: 80px;
            width: 150px;
            border: 2px solid red;
            background: #7ed321;
            color: white;
            margin-bottom: 3%;
        }

        #section2 #content {
            margin: 0px;
        }

        #section2 #content #content_a {
            text-align: center;

        }

        #content_a .text_text {
            font-size: 25px;
            top: 620px;
            left: 22%;
            position: center;
            font-weight: bold;
        }

        .text_text {
            color: #8d2f2c;
        }

        #section2 #conbtent #content_b {
            /*border: 1px solid black;*/
            margin-top: 10%;
            background: white;
        }

        #content_b .content_bbb {
            /*border: 1px solid black;*/
            height: 183px;
        }

        #content_b .content_bbb .a1 {
            float: left;
            width: 30%;
            text-align: center;
            padding: 14px;
        }

        #content_b .content_bbb .a1 img {
            border: 2px solid blue;
        }

        #content_b .content_bbb .a2 {
            float: right;
            width: 60%;
            text-align: left;
            padding: 32px;
            font-size: 20px;
        }



        #footer .left {
            text-align: center;
            margin-top: 15px;


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
                    <h2>Tin tức</h2>
                </div>
            </div>
        </div>
    </div>
</div> <!-- End Page title area -->
<div id="section2">

    <div id="content">
        <div id="content_a">

            <img src="img/samsung/galaxy-s21_800x450.jpg" height="600" width="1110"/>
            <p> <a href="#" class="text_text">Xuất hiện hình ảnh mặt trước Galaxy S21+: Thiết kế màn hình phẳng, viền benzel siêu
                mỏng và phần camera selfie thon gọn hơn</a> </p>
        </div>
        <div id="content_b">
            <div class="content_bbb">
                <a class="a1"><img src="img/oppo/oppocu_800x450.jpg" height="130" width="270"/></a>
                <a class="a2">Điện thoại OPPO cũ giá đã quá rẻ, nay còn được giảm ngon đến 25%, dịp để rinh về chiếc
                    điện thoại giá mềm không tưởng</a>
            </div>
            <div class="content_bbb">
                <a class="a1"><img src="img/samsung/galaxym51den-22-_2048x1152-mobile.jpg" height="130" width="270"/></a>
                <a class="a2"> Đánh giá hiệu năng Samsung Galaxy M51: Tốc Chiến, Liên Quân, Call of Duty Mobile,...
                    chiến ngon ở mức 60 FPS hết</a>
            </div>
            <div class="content_bbb">
                <a class="a1"><img src="img/vendor/1_1280x720-800-resize.jpg" height="130" width="270"/></a>
                <a class="a2">Với 2 ống kính hỗ trợ zoom quang, Galaxy S21 Ultra sẽ là smartphone có camera tele tốt
                    nhất từ trước tới nay</a>
            </div>
            <div class="content_bbb">
                <a class="a1"><img src="img/vendor/2-_1920x1080-800-resize.jpg" height="130" width="270"/></a>
                <a class="a2">Xiaomi Redmi K40 vừa xuất hiện tại Ủy ban Kinh tế Á-Âu EEC, ngày ra mắt dường như đang đến
                    rất gần</a>
            </div>
            <div class="content_bbb">
                <a class="a1"><img src="img/vendor/thumb_top4_800x450.png" height="130" width="270"/></a>
                <a class="a2">Top 4 mẫu smartphone đáng mua nhất tầm giá dưới 4 triệu với hiệu năng tốt, pin khủng,
                    thiết kế sang trọng, camera ấn tượng
                </a>
            </div>

        </div>
    </div>
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
                    <li><a href="#">1</a></li>
                    <li><a href="#">2</a></li>
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
<jsp:include page="Footer.jsp"></jsp:include>
</body>
</html>
