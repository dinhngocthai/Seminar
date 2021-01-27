<%--
    Document   : ManagerProduct
    Created on : Dec 28, 2020, 5:19:02 PM
    Author     : trinh
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Tài khoản</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link href="css/vendor/manager.css" rel="stylesheet" type="text/css"/>
    <link href="style.css" rel="stylesheet" />


    <style>
        img {
            width: 170px;
            height: 120px;
        }
    </style>
<body>
<div class="container">
    <div class="table-wrapper">
        <div class="table-title">
            <div class="row">
                <div class="col-sm-6">
                    <h2>Sửa thông tin</h2>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Edit Modal HTML -->
<div id="editEmployeeModal" class="">
    <div class="modal-dialog">
        <div class="modal-content">
            <form action="editAccount" method="post">
                <div class="modal-header">
                    <h4 class="modal-title">Sửa thông tin tài khoản</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label>ID</label>
                        <input  value="${detailAccount.id}" name="id" type="text" class="form-control" required readonly>
                    </div>
                    <div class="form-group">
                        <label>Tài khoản</label>
                        <input  value="${detailAccount.username}" name="username" type="text" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>Mật khẩu</label>
                        <input  value="${detailAccount.password}" name="password" type="text" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>Họ Tên</label>
                        <input  value="${detailAccount.fullname}" name="fullname" type="text" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>Email</label>
                        <input value="${detailAccount.email}" name="email" type="text" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>Địa chỉ</label>
                        <input value="${detailAccount.address}" name="address" type="text" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>Số điện thoại </label>
                        <input value="${detailAccount.phone}" name="phone" type="text" class="form-control" required>
                    </div>
                </div>
                <div class="modal-footer">
                    <input type="submit" class="btn btn-info active" value="Edit">
                </div>
            </form>
        </div>
    </div>
</div>

<!-- Edit Modal HTML -->

<div class="button-radius">
    <a href="managerAccount">Quay lại</a>
</div>
<script src="js/manager.js" type="text/javascript"></script>
<script>

</script>
</body>
</html>