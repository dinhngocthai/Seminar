<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Chi tiết sản phẩm</title>

    <!-- Google Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Titillium+Web:400,200,300,700,600' rel='stylesheet'
          type='text/css'>
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
</head>
<body>


<jsp:include page="Header.jsp"></jsp:include>

<div class="product-big-title-area">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="product-bit-title text-center">
                    <h2>Chi tiết sản phẩm</h2>
                </div>
            </div>
        </div>
    </div>
</div> <!-- End Page title area -->


<div class="single-product-area">
    <div class="zigzag-bottom"></div>
    <div class="container">
        <div class="row">

            <!------End-Product-Area------>


            <%--
                        <div class="col-md-8">
            --%>
            <div class="product-content-right">
<%--                <div class="product-breadcroumb">
                    <a href="Index">Trang chủ</a>
                    <a href="Product">Danh mục sản phẩm</a>
                    <a href="Product">Samsung Galaxy Note 10</a>
                </div>--%>

                <div class="row">
                    <div class="col-sm-6">
                        <div class="product-images">
                            <div class="product-main-img">
                                <img src="${detail.img}" alt="">
                            </div>

<%--                            <div class="product-gallery">
                                <a href="#"> <img src="img/samsung/SSG-Back.jpg" alt=" "></a>
                                <a href="#"><img src="img/samsung/SSG-Side.jpg" alt=""></a>
                                <a href="#"><img src="img/samsung/SSG-Pen.jpg" alt=""></a>
                            </div>--%>
                        </div>
                    </div>

                    <div class="col-sm-6">
                        <div class="product-inner">
                            <h2 class="product-name">${detail.name}</h2>
                            <div class="product-inner-price">
                                <ins>${detail.priceSale}</ins>
                                <del>${detail.price}</del>
                            </div>

                            <form action="" class="cart">
                                <div class="quantity">
                                    <input type="number" size="4" class="input-text qty text" title="Qty" value="1"
                                           name="quantity" min="1" step="1">
                                </div>
                                <button class="add_to_cart_button" type="submit">Thêm vào giỏ hàng</button>
                            </form>
<%--

                            <div class="product-inner-category">
                                <p>Category: <a href="">Summer</a>. Tags: <a href="">awesome</a>, <a
                                        href="">best</a>, <a href="">sale</a>, <a href="">shoes</a>. </p>
                            </div>
--%>

                            <div role="tabpanel">
                                <ul class="product-tab" role="tablist">
                                    <li role="presentation" class="active"><a href="#home" aria-controls="home"
                                                                              role="tab" data-toggle="tab">Thông số kỹ
                                        thuật</a>
                                    </li>
                                    <li role="presentation"><a href="#profile" aria-controls="profile" role="tab"
                                                               data-toggle="tab">Đánh giá</a></li>
                                </ul>
                                <div class="tab-content">
                                    <div role="tabpanel" class="tab-pane fade in active" id="home">
                                        <p>
                                            ${detail.title}
                                        </p>
<%--
                                        <h2>Thông số kỹ thuật</h2>
                                        <p>Màn hình: 6.3", FHD+, Dynamic AMOLED, 1080 x 2280 Pixel</p>
                                        <p>Camera sau: 12.0 MP + 16.0 MP + 12.0 MP</p>
                                        <p>Camera trước: 10.0 MP</p>
                                        <p>RAM: 8 GB</p>
                                        <p>Bộ nhớ trong: 256 GB</p>
                                        <p>CPU: Exynos 9825</p>
                                        <p>Dung lượng pin: 3500 mAh</p>
                                        <p>Thẻ sim: 2, Nano SIM</p>
                                        <p>Hệ điều hành: Android 9.0</p>
                                        <p>Tên hãng: SamSung</p>
--%>

                                    </div>

                                    <div role="tabpanel" class="tab-pane fade" id="profile">
                                        <h2>Nhận xét</h2>
                                        <div class="submit-review">
                                            <p><label>Tên</label> <input name="name" type="text"></p>
                                            <p><label>Email</label> <input name="email" type="email"></p>
                                            <div class="rating-chooser">
                                                <p>Đánh giá</p>

                                                <div class="rating-wrap-post">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                </div>
                                            </div>
                                            <p><label>Ý kiến</label> <textarea name="review" id="" cols="30"
                                                                               rows="10"></textarea></p>
                                            <p><input type="submit" value="Gửi"></p>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>

                <div class="related-products-wrapper">
                    <h2 class="related-products-title"> Mô tả sản phẩm</h2>
                    <div class="boxArticle">
                        <p>
                            ${detail.description}
                        </p>

<%--
                        <article class="area_article  area_articleFull" style="">
                            <h3>Nhà sản xuất&nbsp;<a href="https://www.thegioididong.com/dtdd-realme" target="_blank"
                                                     title="Tham khảo thêm điện thoại Realme kinh doanh tại Thế Giới Di Động">Realme</a>&nbsp;vừa
                                mới trình làng chiếc điện thoại <a href="https://www.thegioididong.com/dtdd/realme-c17"
                                                                   target="_blank"
                                                                   title="Tham khảo sản phẩm Realme C17 tại Thế Giới Di Động">Realme
                                    C17</a> hứa hẹn sẽ đem đến cho người dùng những cải thiện tối ưu nhất về chất lượng
                                lẫn thiết kế bên ngoài.</h3>
                            <h3>Mở màn trở lại với diện mạo bắt mắt</h3>
                            <p>Chạy theo xu thế thiết kế nguyên khối rắn chắc, không kém phần tinh tế và gọn nhẹ với
                                trọng lượng chỉ 188 g. Bao gồm 2 bản màu chính: Lake Green và Navy Blue tươi sáng, thanh
                                lịch.</p>
                            <p><a class="preventdefault"
                                  href="https://www.thegioididong.com/images/42/227681/realme-c17.jpg"
                                  onclick="return false;"><img alt=" Realme C17  | Thiết kế mặt lưng "
                                                               data-original="https://cdn.tgdd.vn/Products/Images/42/227681/realme-c17.jpg"
                                                               class="lazy" title=" Realme C17  | Thiết kế mặt lưng "
                                                               src="https://cdn.tgdd.vn/Products/Images/42/227681/realme-c17.jpg"
                                                               style="display: block;"></a></p>
                            <p>Công nghệ <a href="https://www.thegioididong.com/hoi-dap/man-hinh-ips-lcd-la-gi-905752"
                                            target="_blank" title="Màn hình IPS LCD là gì?">màn hình IPS LCD</a> cung
                                cấp giao diện màu sắc đa dạng, góc nhìn rộng, cho phép người dùng trải nghiệm được hết
                                chất lượng hình ảnh mà không nhất thiết phải ngồi trực diện.</p>
                            <p><a class="preventdefault"
                                  href="https://www.thegioididong.com/images/42/227681/realme-c17-033520-073529.jpg"
                                  onclick="return false;"><img
                                    alt="Realme C17 | Thiết kế nguyên khối tinh tế, chắc chắn"
                                    data-original="https://cdn.tgdd.vn/Products/Images/42/227681/realme-c17-033520-073529.jpg"
                                    class="lazy" title="Realme C17 | Thiết kế nguyên khối tinh tế, chắc chắn"
                                    src="https://cdn.tgdd.vn/Products/Images/42/227681/realme-c17-033520-073529.jpg"
                                    style="display: block;"></a></p>
                            <p>Mặt kính cường lực <a
                                    href="https://www.thegioididong.com/hoi-dap/tim-hieu-ve-cac-mat-kinh-cuong-luc-gorilla-glass-1172198#glass1"
                                    target="_blank" title="Tìm hiểu về các mặt kính cường lực Gorilla Glass">Corning
                                Gorilla Glass</a> bảo vệ tối ưu màn hình, chống va đập, trầy xước từ những tác động bên
                                ngoài.</p>
                            <h3>Camera chất lượng tha hồ chụp ảnh</h3>
                            <p>Cụm camera mặt lưng sau khi được nâng cấp so với phiên bản cũ thì nay camera chính đã có
                                độ phân giải 13 MP, camera phụ góc siêu rộng 8 MP, một ống kính macro 2 MP và một camera
                                đen trắng 2 MP.&nbsp;</p>
                            <p><a class="preventdefault"
                                  href="https://www.thegioididong.com/images/42/227681/realme-c17-033520-073513.jpg"
                                  onclick="return false;"><img alt="Realme C17 | Cụm 4 camera sau"
                                                               data-original="https://cdn.tgdd.vn/Products/Images/42/227681/realme-c17-033520-073513.jpg"
                                                               class="lazy" title="Realme C17 | Cụm 4 camera sau"
                                                               src="https://cdn.tgdd.vn/Products/Images/42/227681/realme-c17-033520-073513.jpg"
                                                               style="display: block;"></a></p>
                            <p>Camera trước có độ phân giải 8 MP, hỗ trợ <a
                                    href="https://www.thegioididong.com/hoi-dap/cac-chuan-quay-phim-tren-dien-thoai-tablet-pho-bi-1174134#fullhd"
                                    target="_blank"
                                    title="Các chuẩn quay phim trên điện thoại, tablet phổ biến hiện nay">quay video
                                Full HD</a> và video call thông qua ứng dụng.</p>
                            <p><a class="preventdefault"
                                  href="https://www.thegioididong.com/images/42/227681/realme-c17-033520-073506.jpg"
                                  onclick="return false;"><img
                                    alt="Realme C17 | Camera trước nốt ruồi độ phân giải 8 MP"
                                    data-original="https://cdn.tgdd.vn/Products/Images/42/227681/realme-c17-033520-073506.jpg"
                                    class="lazy" title="Realme C17 | Camera trước nốt ruồi độ phân giải 8 MP"
                                    src="https://cdn.tgdd.vn/Products/Images/42/227681/realme-c17-033520-073506.jpg"
                                    style="display: block;"></a></p>
                            <h3>Hệ điều hành có nhiều cải tiến hấp dẫn mọi tín đồ game thủ</h3>
                            <p>Realme C17 được trang bị chipset Snapdragon 460 thế hệ mới giúp máy hoạt động ổn định
                                hơn, từ đó mọi trải nghiệm của người dùng đều được cải thiện một cách rõ rệt trên
                                smartphone giá rẻ.</p>
                            <p><a class="preventdefault"
                                  href="https://www.thegioididong.com/images/42/227681/realme-c17-02.jpg"
                                  onclick="return false;"><img alt="Realme C17 | Sử dụng chipset Snapdragon 460"
                                                               data-original="https://cdn.tgdd.vn/Products/Images/42/227681/realme-c17-02.jpg"
                                                               class="lazy"
                                                               title="Realme C17 | Sử dụng chipset Snapdragon 460"
                                                               src="https://cdn.tgdd.vn/Products/Images/42/227681/realme-c17-02.jpg"
                                                               style="display: block;"></a></p>
                            <p>Sử dụng&nbsp;<a
                                    href="https://www.thegioididong.com/hoi-dap/android-10-android-q-la-gi-co-gi-moi-1237224"
                                    target="_blank" title="Android 10 (Android Q) là gì? Có gì mới?">Android 10</a> với
                                nhiều tính năng bổ trợ như: Giao diện được cá nhân hóa, tăng cường bảo mật và riêng tư,
                                mở khóa bằng vân tay,…</p>
                            <p><a class="preventdefault"
                                  href="https://www.thegioididong.com/images/42/227681/realme-c17-033520-073544.jpg"
                                  onclick="return false;"><img
                                    alt="Realme C17 | Chạy nền Android 10 tăng cường bảo mật, mở khóa vân tay"
                                    data-original="https://cdn.tgdd.vn/Products/Images/42/227681/realme-c17-033520-073544.jpg"
                                    class="lazy"
                                    title="Realme C17 | Chạy nền Android 10 tăng cường bảo mật, mở khóa vân tay"
                                    src="https://cdn.tgdd.vn/Products/Images/42/227681/realme-c17-033520-073544.jpg"
                                    style="display: block;"></a></p>
                            <p>Đặc biệt, <a
                                    href="https://www.thegioididong.com/hoi-dap/tim-hieu-chip-qualcomm-snapdragon-665-1177729"
                                    target="_blank" title="Tìm hiểu chip Qualcomm Snapdragon 665">chipset GPU Adreno
                                610</a> tập trung xử lí hình ảnh và đồ họa chân thực, sắc nét hơn khi người dùng chơi
                                game.</p>
                            <p><a class="preventdefault"
                                  href="https://www.thegioididong.com/images/42/227681/realme-c17-033520-073558.jpg"
                                  onclick="return false;"><img
                                    alt="Realme C17 | Chipset GPU Adreno 610, xử lí hình ảnh, chơi game mượt mà"
                                    data-original="https://cdn.tgdd.vn/Products/Images/42/227681/realme-c17-033520-073558.jpg"
                                    class="lazy"
                                    title="Realme C17 | Chipset GPU Adreno 610, xử lí hình ảnh, chơi game mượt mà"
                                    src="https://cdn.tgdd.vn/Products/Images/42/227681/realme-c17-033520-073558.jpg"
                                    style="display: block;"></a></p>
                            <p>Trang bị RAM 6 GB giúp máy khả năng đa nhiệm tốt hơn, ít giật lag và bộ nhớ trong 128 GB
                                hỗ trợ thêm 256 GB qua thẻ nhớ ngoài, cho bạn thỏa thích lưu trữ mọi dữ liệu.</p>
                            <p><a class="preventdefault"
                                  href="https://www.thegioididong.com/images/42/227681/realme-c17-01.jpg"
                                  onclick="return false;"><img alt="Realme C17 | Hỗ trợ thẻ nhớ ngoài"
                                                               data-original="https://cdn.tgdd.vn/Products/Images/42/227681/realme-c17-01.jpg"
                                                               class="lazy" title="Realme C17 | Hỗ trợ thẻ nhớ ngoài"
                                                               src="https://cdn.tgdd.vn/Products/Images/42/227681/realme-c17-01.jpg"
                                                               style="display: block;"></a></p>
                            <h3>Dung lượng pin lớn nay còn thêm Type - C sạc nhanh</h3>
                            <p>Với thời lượng pin chuẩn 5000 mAh có thêm hỗ trợ <a
                                    href="https://www.thegioididong.com/dtdd-sac-pin-nhanh" target="_blank"
                                    title="Tham khảo điện thoại pin trâu chính hãng tại Thegioididong.com ">sạc pin
                                nhanh</a>&nbsp;cho người dùng thoải mái sử dụng điện thoại cả ngày dài.</p>
                            <p><a class="preventdefault"
                                  href="https://www.thegioididong.com/images/42/227681/realme-c17-033520-073551.jpg"
                                  onclick="return false;"><img
                                    alt="Realme C17 | Pin chuẩn Li-po 5000 mAh có thêm hỗ trợ Type - C sạc nhanh"
                                    data-original="https://cdn.tgdd.vn/Products/Images/42/227681/realme-c17-033520-073551.jpg"
                                    class="lazy"
                                    title="Realme C17 | Pin chuẩn Li-po 5000 mAh có thêm hỗ trợ Type - C sạc nhanh"
                                    src="https://cdn.tgdd.vn/Products/Images/42/227681/realme-c17-033520-073551.jpg"
                                    style="display: block;"></a></p>
                            <p>Tính năng đa dạng, cùng hiệu năng mượt mà là những gì Realme C17 hướng tới mọi đối tượng
                                người dùng tầm trung với mức giá vô cùng thu hút.</p>
                            <div class="boxRtAtc">
                                <div class="likewied">
                                    <div class="likeshare">
                                        <div class="fb-like fb_iframe_widget" data-href="/dtdd/realme-c17"
                                             data-layout="button_count" data-action="like" data-size="small"
                                             data-show-faces="false" data-share="true" fb-xfbml-state="rendered"
                                             fb-iframe-plugin-query="action=like&amp;app_id=242045172499368&amp;container_width=0&amp;href=https%3A%2F%2Fwww.thegioididong.com%2Fdtdd%2Frealme-c17&amp;layout=button_count&amp;locale=vi_VN&amp;sdk=joey&amp;share=true&amp;show_faces=false&amp;size=small">
                                            <span style="vertical-align: bottom; width: 150px; height: 28px;"><iframe
                                                    name="f3d3306ac2dd17c" width="1000px" height="1000px"
                                                    data-testid="fb:like Facebook Social Plugin"
                                                    title="fb:like Facebook Social Plugin" frameborder="0"
                                                    allowtransparency="true" allowfullscreen="true" scrolling="no"
                                                    allow="encrypted-media"
                                                    src="https://www.facebook.com/v8.0/plugins/like.php?action=like&amp;app_id=242045172499368&amp;channel=https%3A%2F%2Fstaticxx.facebook.com%2Fx%2Fconnect%2Fxd_arbiter%2F%3Fversion%3D46%23cb%3Df1a3854a601e988%26domain%3Dwww.thegioididong.com%26origin%3Dhttps%253A%252F%252Fwww.thegioididong.com%252Ff819ee90e2cdec%26relation%3Dparent.parent&amp;container_width=0&amp;href=https%3A%2F%2Fwww.thegioididong.com%2Fdtdd%2Frealme-c17&amp;layout=button_count&amp;locale=vi_VN&amp;sdk=joey&amp;share=true&amp;show_faces=false&amp;size=small"
                                                    style="border: none; visibility: visible; width: 150px; height: 28px;"
                                                    __idm_frm__="53" class=""></iframe></span></div>
                                    </div>


                                    <div class="clr"></div>
&lt;%&ndash;
                                    <script>
                                        //#region Đánh giá trang search

                                        function closeForm() {
                                            $(".reason").css("display", "none");
                                        }

                                        CallCheckAppriseBeforeLoadJquery();

                                        var gl_submitReview = false;

                                        function submitReview() {
                                            if (gl_submitReview) return false;
                                            gl_submitReview = true;
                                            var form = $('.order-review form');
                                            var vCt = $.trim($('.reason [name=rs_note]').val());
                                            var vGender = $.trim($('input[name=rs_gender]').val());
                                            var vName = $.trim($('input[name=rs_name]').val());
                                            var vPhone = $.trim($('input[name=rs_phone]').val());
                                            var vAge = $.trim($('input[name=rs_age]').val());
                                            var vLink = encodeURI(window.location.href);
                                            var vsatisfationType = $.trim($('input[name=rs_satisfationType]').val());
                                            //if (vEmail == '') { alert('Vui lòng chọn độ tuổi.'); gl_submitReview = false; return false; }
                                            //if (vGender == '') { alert('Vui lòng chọn giới tính.'); gl_submitReview = false; return false; }

                                            var data = {
                                                ct: vCt,
                                                name: vName,
                                                phone: vPhone,
                                                email: "",
                                                gender: vGender,
                                                age: vAge,
                                                type: 3,
                                                productID: productID,
                                                lnk: vLink,
                                                satisfationType: vsatisfationType
                                            };
                                            $.ajax({
                                                type: "POST",
                                                cache: false,
                                                data: data,
                                                url: "/aj/ProductV4/UpdateRatingArticle/",
                                                beforeSend: function () {
                                                    BeforeSendAjax();
                                                },
                                                success: function (e) {
                                                    gl_submitReview = false;
                                                    if (e.mes != null && e.mes != "") {
                                                        $('.order-review .er-content').html(e.mes);
                                                        $('.order-review .er-content').show();
                                                    } else {
                                                        $('.order-review form').remove();
                                                        $('.order-review .er-content').html("");
                                                        $('.order-review .er-content').hide();

                                                        $('.order-review .thank').show();
                                                        setlocalStorage(productID, e.res);
                                                    }
                                                    EndSendAjax();
                                                },
                                                error: function (err) {
                                                    gl_submitReview = false;
                                                    $('#Tnote').val('');
                                                    alert("Vui lòng nhập đúng dữ liệu đánh giá");
                                                }
                                            });
                                        }

                                        function chooseReview(t) {
                                            $('.order-review .right a').removeClass('act');
                                            $(t).addClass('act');
                                            $('.order-review .right .replay-icon').addClass($('.order-review .right a.act').attr('data-val'));
                                            $('.order-review .right a.replay-icon').html($('.order-review .right a.act').html());
                                            $('.replay-icon-thank').html($('.order-review .right a.act').html());
                                            $('.order-review .right a.none-i').hide();
                                            $('.order-review .left p.first-left').hide();
                                            $('.before-apprise b g.nt').html($('.order-review .right a.act').attr('data-name'));
                                            $('.order-review .left p.before-apprise').show();
                                            if ($(t).data('val') == 'good') {
                                                $('input[name=rs_satisfationType]').val(6);
                                                $('.reason textarea').attr('placeholder', $('#fGender').val().trim() + ' ' + $('#fname').val().trim() + ' có góp ý gì thêm không?');
                                                //$('.reason').removeClass('bd');

                                                // -------- rule moi : submit truoc r moi show, show ra neu update tiep thi submit tip
                                                var form = $('.order-review form');
                                                var vCt = $.trim($('.reason [name=rs_note]').val());
                                                var vGender = $.trim($('input[name=rs_gender]').val());
                                                var vName = $.trim($('input[name=rs_name]').val());
                                                var vPhone = $.trim($('input[name=rs_phone]').val());
                                                var vAge = $.trim($('input[name=rs_age]').val());
                                                var vLink = encodeURI(window.location.href);
                                                var vsatisfationType = $.trim($('input[name=rs_satisfationType]').val());
                                                //if (vEmail == '') { alert('Vui lòng chọn độ tuổi.'); gl_submitReview = false; return false; }
                                                //if (vGender == '') { alert('Vui lòng chọn giới tính.'); gl_submitReview = false; return false; }
                                                var data = {
                                                    ct: vCt,
                                                    name: vName,
                                                    phone: vPhone,
                                                    email: "",
                                                    age: vAge,
                                                    gender: vGender,
                                                    type: 3,
                                                    productID: productID,
                                                    lnk: vLink,
                                                    satisfationType: vsatisfationType
                                                };
                                                console.log("before__submit");
                                                $.ajax({
                                                    type: "POST",
                                                    cache: false,
                                                    data: data,
                                                    url: "/aj/ProductV4/SubmitRatingArticle/",
                                                    beforeSend: function () {
                                                        BeforeSendAjax();
                                                    },
                                                    success: function (e) {
                                                        gl_submitReview = false;
                                                        //if (e.mes != null && e.mes != "") {
                                                        //    $('.order-review .er-content').html(e.mes);
                                                        //    $('.order-review .er-content').show();
                                                        //}
                                                        //else {
                                                        //    $('.order-review form').remove();
                                                        //    $('.order-review .er-content').html("");
                                                        //    $('.order-review .er-content').hide();

                                                        //    $('.order-review .thank').show();
                                                        //    setlocalStorage(productID, e.res);
                                                        //}
                                                        console.log("response__submit");
                                                        EndSendAjax();
                                                    },
                                                    error: function (err) {
                                                        gl_submitReview = false;
                                                        $('#Tnote').val('');
                                                        alert("Vui lòng nhập đúng dữ liệu đánh giá");
                                                    }
                                                });
                                                // -------- end rule moi submit

                                                $('.reason').show();
                                            } else {
                                                $('input[name=rs_satisfationType]').val(0);
                                                $('.reason textarea').attr('placeholder', 'Điều gì khiến ' + $('#fGender').val().trim() + ' ' + $('#fname').val().trim() + ' không hài lòng? ');
                                                //$('.reason').addClass('bd');
                                                $('.reason').show();
                                            }
                                        }

                                        function setlocalStorage(name, val) {
                                            if (localStorage !== undefined) {
                                                localStorage.setItem(name, val);
                                            }
                                        }

                                        function getlocalStorage(name) {
                                            if (localStorage !== undefined) {
                                                var data = localStorage.getItem(name);
                                                if (data !== null)
                                                    return data;
                                            }
                                            return null;
                                        }

                                        function CheckApprise() {
                                            var productId = $.trim($('input[name=rs_productId]').val());
                                            var tmp = getlocalStorage(productId);
                                            if (tmp != null) {
                                                $('.order-review').hide();
                                            }
                                        }

                                        function CallCheckAppriseBeforeLoadJquery() {
                                            setTimeout(function () {
                                                if (typeof jQuery !== 'undefined') {
                                                    CheckApprise();
                                                    return false;
                                                }
                                            }, 1000);
                                        }

                                        //#endregion
                                    </script>
&ndash;%&gt;
                                </div>


                                <div class="bifRtCt bRtAtc hide">
                                    <p>Mời bạn góp ý để chúng tôi phục vụ tốt hơn</p>
                                    <textarea name="txtContent" rows="3"
                                              placeholder="Vui lòng nhập nội dung góp ý (tối thiểu 30 ký tự)"></textarea>
                                    <span>Hãy để lại thông tin để được hỗ trợ khi cần thiết (Không bắt buộc):</span>
                                    <div class="ifRtGd" data-val="">
                                        <label onclick="rtAtcChangeGder(1)" class="ifGdM "><i></i>Anh</label>
                                        <label onclick="rtAtcChangeGder(2)" class="ifGdFm"><i></i>Chị</label>
                                    </div>
                                    <input type="text" name="txtFullName" placeholder="Họ tên" value="">
                                    <input type="text" name="txtPhoneNumber" placeholder="Số điện thoại" value=""
                                           style="display:none;">
                                    <input type="text" name="txtEmail" placeholder="Email" value=""
                                           style="display:none;">
                                    <button type="submit" onclick="sendRatingContent(-1)">Gửi góp ý<span>Cam kết bảo mật thông tin cá nhân</span>
                                    </button>
                                    <label class="alert"></label>
                                    <input type="hidden" name="hdRateType" value="2">
                                    <input type="hidden" name="hdVideoUrl" value="">
                                </div>

                            </div>
                        </article>
--%>
                    </div>
                </div>

<%--
                <div class="related-products-wrapper">
                    <h2 class="related-products-title"> Sản phẩm liên quan</h2>
                    <div class="related-products-carousel">
                        <c:forEach items="${productList}" var="p">
                            <div class="single-product">
                                <div class="product-f-image">
                                    <img src=${p.img} alt="">
                                    <div class="product-hover">
                                        <a href="" class="add-to-cart-link"><i class="fa fa-shopping-cart"></i>Thêm giỏ
                                            hàng</a>
                                        <a href="" class="view-details-link"><i class="fa fa-link"></i> Chi tiết</a>
                                    </div>
                                </div>

                                <h2><a href="">${p.name}</a></h2>

                                <div class="product-carousel-price">
                                    <ins>${p.price}đ</ins>
                                    <del>${p.priceSale}đ</del>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
--%>
            </div>
            <%--
                        </div>
            --%>
        </div>
    </div>
</div>

<jsp:include page="Footer.jsp"></jsp:include>

</div>

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
</body>
</html>