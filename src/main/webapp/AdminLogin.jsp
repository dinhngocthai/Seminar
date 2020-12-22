<%--
  Created by IntelliJ IDEA.
  User: Sharrfire
  Date: 23-Dec-20
  Time: 12:12 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="8QuNJqWP8lVYG5eTloj22rWj2lVU5XmNBvMdDCsq">

    <title>Neoshabusuki</title>
    <!-- FAVICON -->
    <link href="//via.placeholder.com/32x32" rel="icon" type="image/png">
    <!-- BOOTSTRAP -->
    <link rel="stylesheet" href="//tvp.com.vn/assets/plugins/bootstrap/css/bootstrap.min.css" type="text/css">
    <!-- JQUERY UI -->
    <link type="text/css" href="//tvp.com.vn/assets/plugins/jquery-ui-1.12.1.custom/jquery-ui.min.css" rel="stylesheet">
    <!-- STYLE -->
    <link id="stylesheet" type="text/css" href="//tvp.com.vn/assets/css/style.css" rel="stylesheet" media="screen">
    <!-- CUSTOM STYLE -->
    <link type="text/css" href="//tvp.com.vn/assets/css/custom.css" rel="stylesheet">
    <!--  MODERNIZR JS -->
    <script src="//tvp.com.vn/assets/plugins/modernizr/modernizr-custom.js"></script>
    <!--  PLUGINS -->
    <link href="//tvp.com.vn/assets/plugins/perfect-scrollbar/css/perfect-scrollbar.min.css" rel="stylesheet" type="text/css">
    <link href="//tvp.com.vn/assets/plugins/toastr/toastr.min.css" rel="stylesheet"/>
    <script src="//tvp.com.vn/assets/plugins/jquery/jquery.min.js"></script>
    <script src="//tvp.com.vn/assets/plugins/jquery-ui-1.12.1.custom/jquery-ui.min.js"></script>
</head>

<body class="">

<!-- BEGIN PRELOADER -->
<div id="preloader">
    <div class="inner">
        <span class="loader"></span>
    </div>
</div>
<!-- END PRELOADER -->

<div class="login-cover">

    <div class="login-cover-image"></div>
    <div class="login-cover-bg"></div>
</div>

<!-- BEGIN MAIN WRAPPER -->
<div class="sm_bg_transparent">
    <div class="login login-v2">
        <div class="col-md-12"></div>
        <!-- begin brand -->
        <div class="login-header">
            <div class="brand">
                <a href="/AdminLogin.html/tvp.com.vn/admin">NEOSuki&amp;Shabu</a>

                <small>Nhà hàng</small>
            </div>
        </div>
        <!-- end brand -->
        <div class="login-content animated fadeInUp">
            <form action="/AdminLogin.html/tvp.com.vn/admin/login" method="POST" class="margin-bottom-0">
                <input type="hidden" name="_token" value="8QuNJqWP8lVYG5eTloj22rWj2lVU5XmNBvMdDCsq">
                <div class="row mb-3">
                    <div class="col-lg-12 sm-form-design">
                        <input type="text" name="email" id="cf_email"
                               class="form-control h5-email"
                               placeholder="Vui lòng điền tên đăng nhập"
                               value=""
                               autocomplete="off"
                               tabindex="1"
                               maxlength="35" required>
                        <label class="control-label">Tên đăng nhập</label>
                    </div>
                </div>
                <div class="row mb-3">
                    <div class="col-lg-12 sm-form-design">
                        <input type="password" name="password" id="cf_password"
                               class="form-control h5-email"
                               placeholder="Vui lòng điền mật khẩu"
                               value=""
                               autocomplete="off"
                               tabindex="2"
                               maxlength="35" required>
                        <label class="control-label">Mật khẩu</label>
                    </div>
                </div>
                <div class="row m-b-10 m-t-15">
                    <div class="col-lg-12">
                        <div class="checkbox">
                            <input type="checkbox" checked id="chkRemember">
                            <label for="chkRemember">Ghi nhớ</label>
                        </div>
                    </div>
                </div>
                <div class="login-buttons">
                    <button type="submit" class="btn btn-primary btn-block btn-lg sm_bg_6 border-0">Đăng nhập</button>
                </div>



            </form>
        </div>
    </div>
</div>
<!-- END MAIN WRAPPER -->
<!-- /.login-box -->
<!-- CORE JS -->
<script src="//tvp.com.vn/assets/plugins/popper/popper.min.js"></script>
<script src="//tvp.com.vn/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
<script src="//tvp.com.vn/assets/js/slidebar/slidebar.js"></script>
<script src="//tvp.com.vn/assets/js/classie.js"></script>
<script src="//tvp.com.vn/assets/js/side_menu.js"></script>

<!-- PLUGINS -->
<script src="//tvp.com.vn/assets/plugins/pace/pace.min.js"></script>
<script src="//tvp.com.vn/assets/plugins/smooth-scrollbar/smooth-scrollbar.js"></script>
<script src="//tvp.com.vn/assets/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js"></script>
<script src="//tvp.com.vn/assets/plugins/perfect-scrollbar/js/perfect-scrollbar.jquery.min.js"></script>
<script src="//tvp.com.vn/assets/plugins/placeholders/placeholders.js"></script>
<script src="//tvp.com.vn/assets/plugins/toastr/toastr.min.js"></script>
<script src="//tvp.com.vn/assets/js/custom.js"></script>
<!-- APP JS -->
<script src="//tvp.com.vn/assets/js/app.js"></script>
<script src="//tvp.com.vn/assets/js/sm_login_demo.js"></script>
</body>
</html>