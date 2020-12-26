<%--
  Created by IntelliJ IDEA.
  User: Sharrfire
  Date: 17-Dec-20
  Time: 12:51 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Liên hệ</title>

    <!-- Google Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Titillium+Web:400,200,300,700,600' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300' rel='stylesheet' type='text/css'>
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
</head>
<body>
<jsp:include page="Header.jsp"></jsp:include>
<div class="product-big-title-area">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="product-bit-title text-center">
                    <h2>Liên hệ</h2>
                </div>
            </div>
        </div>
    </div>
</div> <!-- End Page title area -->

<div class="main">
    <div class="address">
        <div class="container">
            <div class="row">
                <div class="col-lg-5">
                    <h3 class="text-center">Địa chỉ</h3>
                    <div class="address">
                        <table class="table">
                            <tr>
                                <td><i class="fa fa-map-marker" aria-hidden="true"></i></td>
                                <td class="text-break"> ...., ...., Thành phố Hồ Chí Minh</td>
                            </tr>
                        </table>
                    </div>
                    <div class="phone">
                        <table class="table">
                            <tr>
                                <td><i class="fa fa-phone" aria-hidden="true"></i></td>
                                <td>Hotline<br>090 ... ....</td>

                            </tr>
                        </table>

                    </div>
                    <div class="phone_bussiness">
                        <table class="table">
                            <tr>
                                <td><i class="fa fa-phone" aria-hidden="true"></i></td>
                                <td>Hotline bussiness<br>090 ... ....</td>

                            </tr>
                        </table>
                    </div>
                    <div class="phone_technician">
                        <table class="table">
                            <tr>
                                <td><i class="fa fa-phone" aria-hidden="true"></i></td>
                                <td>Hotline kỹ thuật<br>090 ... ....</td>

                            </tr>
                        </table>
                    </div>
                    <div class="mail">
                        <table class="table">
                            <tr >
                                <td><i class="fa fa-envelope"></i></td>
                                <td style=""> Mail</td>

                            </tr>
                        </table>
                    </div>
                    <div class="company_phone">
                        <table class="table">
                            <tr>
                                <td><i class="fa fa-phone" aria-hidden="true"></i></td>
                                <td>Điện thoại công ty <br> 090 ... ....</td>

                            </tr>
                        </table>
                    </div>
                    <div class="work_time">
                        <table class="table">
                            <tr>
                                <td><i class="fa fa-clock-o" aria-hidden="true"></i></td>
                                <td>Thời gian làm việc<br>9h-19h</td>

                            </tr>
                        </table>
                    </div>
                </div>
                <div class="col-lg-7">
                    <h3 class="text-center">Gửi thông tin liên hệ</h3>
                    <div class="form-group">
                        <label for="name">Tên khách hàng:</label>
                        <input type="text" class="form-control" id="name">
                    </div>
                    <div class="form-group">
                        <label for="note_content">Ghi chú:</label>
                        <textarea class="form-control" rows="5" id="note_content"></textarea>
                    </div>
                    <div class="custom-file ">
                        <input type="file" class="custom-file-input" id="customFile">
                        <label class="custom-file-label" for="customFile">Đính kèm ảnh</label>
                    </div>
                    <div class="newsletter-form" style="margin: 0px">
                        <input type="submit" value="Gửi">
                    </div>
                </div>

            </div>
        </div>
    </div>

</div>
<jsp:include page="Footer.jsp"></jsp:include>
</body>
</html>
