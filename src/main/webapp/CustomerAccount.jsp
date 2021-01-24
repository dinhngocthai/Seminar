<%--
  Created by IntelliJ IDEA.
  User: Sharrfire
  Date: 17-Dec-20
  Time: 1:17 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Tài khoản</title>

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
    <title>Tài khoản</title>
    <style>
        .my-account-section {
            width: 1170px;
            margin: 20px   auto;
            min-height: 500px;
            margin-bottom: 0px;
            /*
                        border: 1px solid black;
            */
        }
        .header_title {
            padding-bottom: 7px;
            text-align: center;
            text-transform: uppercase;
            width: 1100px;
            border-bottom: 1px solid #eae1e1;
            margin: auto;
        }

        .title_1 {
            font-size: 18px;
        }

        .profile {
            border: 1px solid #ffffff;
            background: #f1eeee;
            height: auto;
        }

        .profile_left {
            padding-top: 32px;
            width: 639px;
            margin: auto;
            background: white;
        }

        .label_wraper {
            display: flex;
        }

        .input_with_label {
            margin: 10px;
        }

        .input_label_label {
            width: 20%;
            text-align: right;
            color: rgba(85, 85, 85, .8);
            text-transform: capitalize;
            overflow: hidden;
        }

        .input_label_content {
            width: 80%;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
            padding-left: 1.25rem;

        }

        .input_text_text {
            width: 433px;
            border-radius: 8px;
        }

        .input_label_label .label_ten {
            padding-top: 14px;
        }

        .check_gender {
            padding-top: 10px;
        }

        .dob select {
            width: 18%;
            height: 43px;
            display: inline-flex;
            background: #f1f1f1;
            cursor: pointer;
            border: 2px solid #c3c2c2;
            margin: 2px;
            margin-top: 1px;
        }

        .button_submit {
            /*            padding-left: 120px;
                        padding-bottom: 20px;*/
            text-align: center;
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
                    <h2>Tài khoản</h2>
                </div>
            </div>
        </div>
    </div>
</div> <!-- End Page title area -->


<div class="my-account-section">
    <div class="header_title">
        <div class="header_title_1">
            <span class="title_1">Hồ sơ cá nhân</span>
        </div>
        <div class="sub_header_title">
            <span class="sub_title_1">Quản lí thông tin hồ sơ để bảo mật tài khoản</span>
        </div>
    </div>
    <div class="profile">
        <form>
            <div class="profile_left">
                <div class="input_with_label">
                    <div class="label_wraper">
                        <div class="input_label_label">
                            <label>Tên đăng nhập</label>

                        </div>
                        <div class="input_label_content">
                            <div class="input-text">SM_Store</div>

                        </div>

                    </div>

                </div>
                <div class="input_with_label">
                    <div class="label_wraper">
                        <div class="input_label_label">
                            <label class="label_ten">Tên</label>
                        </div>
                        <div class="input_label_content">
                            <input class="input_text_text" type="text" placeholder value="">

                        </div>
                    </div>
                </div>
                <div class="input_with_label">
                    <div class="label_wraper">
                        <div class="input_label_label">
                            <label class="label_ten">Email</label>
                        </div>
                        <div class="input_label_content">
                            <input class="input_text_text" type="text" placeholder value="">

                        </div>
                    </div>
                </div>
                <div class="input_with_label">
                    <div class="label_wraper">
                        <div class="input_label_label">
                            <label class="label_ten">Số điện thoại</label>
                        </div>
                        <div class="input_label_content">
                            <input class="input_text_text" type="text" placeholder value="">

                        </div>
                    </div>
                </div>
                <div class="input_with_label">
                    <div class="label_wraper">
                        <div class="input_label_label">
                            <label class="label_ten">Giới tính</label>
                        </div>
                        <div class="input_label_content" s>
                            <div class="check_gender">
                                <input style="margin-right: 7px" checked="checked" name="gioitinh" type="radio" value="Nam"/>Nam
                                <input style="margin-right: 7px" name="gioitinh" type="radio" value="Nu"/>Nữ
                                <input style="margin-right: 7px" name="gioitinh" type="radio" value="Khac"/>Khác
                            </div>

                        </div>

                    </div>
                </div>
                <div class="input_with_label">
                    <div class="label_wraper">
                        <div class="input_label_label">
                            <label class="label_ten">Ngày sinh</label>
                        </div>
                        <div class="input_label_content">
                            <div class="dob">
                                <select>
                                    <option>1</option>
                                    <option>2</option>
                                    <option>3</option>
                                    <option>4</option>
                                    <option>5</option>
                                    <option>6</option>
                                    <option>7</option>
                                    <option>8</option>
                                    <option>9</option>
                                    <option>10</option>
                                    <option>11</option>
                                    <option>12</option>
                                    <option>13</option>
                                    <option>14</option>
                                    <option>15</option>
                                    <option>16</option>
                                    <option>17</option>
                                    <option>18</option>
                                    <option>19</option>
                                    <option>20</option>
                                    <option>21</option>
                                </select>
                                <select>
                                    <option>Tháng 1</option>
                                    <option>Tháng 2</option>
                                    <option>Tháng 3</option>
                                    <option>Tháng 4</option>
                                    <option>Tháng 5</option>
                                    <option>Tháng 6</option>
                                    <option>Tháng 7</option>
                                    <option>Tháng 8</option>
                                    <option>Tháng 9</option>
                                    <option>Tháng 10</option>
                                    <option>Tháng 11</option>
                                    <option>Tháng 12</option>

                                </select>
                                <select>
                                    <option>2002</option>
                                    <option>2001</option>
                                    <option>2000</option>
                                    <option>1999</option>
                                    <option>1998</option>
                                    <option>1997</option>
                                    <option>1996</option>
                                    <option>1995</option>
                                    <option>1994</option>
                                    <option>1993</option>

                                </select>
                            </div>
                        </div>

                    </div>

                </div>
                <div class="input_with_label">
                    <div class="label_wraper">
                        <div class="input_label_label">
                            <label class="label_ten">Địa chỉ</label>
                        </div>
                        <div class="input_label_content">
                            <input class="input_text_text" type="text" placeholder value="">

                        </div>
                    </div>
                </div>
                <div class="button_submit">
                    <input id="btn_luu" type="submit" value="Lưu">

                </div>

            </div>
        </form>
    </div>
</div>

<jsp:include page="Footer.jsp"></jsp:include>
</body>
</html>
