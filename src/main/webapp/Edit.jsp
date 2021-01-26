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
    <title>Quản lí sản phẩm</title>
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
                    <h2>Quản lý <b>sản phẩm</b></h2>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Edit Modal HTML -->
    <div class="modal-dialog">
        <div class="modal-content">
            <form action="edit" method="post">
                <div class="modal-header">
                    <h4 class="modal-title">Sửa thông tin sản phẩm</h4>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label>ID</label>
                        <input  value="${detail.id}" name="id" type="text" class="form-control" required readonly>
                    </div>
                    <div class="form-group">
                        <label>Tên sản phẩm</label>
                        <input  value="${detail.name}" name="name" type="text" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>Hình ảnh</label>
                        <input value="${detail.img}" name="image" type="text" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>Giá</label>
                        <input value="${detail.price}" name="price" type="text" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>Giá giảm</label>
                        <input value="${detail.priceSale}" name="priceSale" type="text" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>Thông số</label>
                        <textarea name="title" class="form-control" required>${detail.title}</textarea>
                    </div>
                    <div class="form-group">
                        <label>Mô tả</label>
                        <textarea name="description" class="form-control" required> ${detail.description}</textarea>
                    </div>
                    <div class="form-group">
                        <label>Danh sách</label>
                        <select name="category" class="form-select" aria-label="Default select example">

                            <c:forEach items="${ListC}" var="c">
                                <option value="${c.id}">${c.cname}</option>
                            </c:forEach>
                        </select>
                    </div>

                </div>
                <div class="modal-footer">
<%--
                    <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
--%>
                    <input type="submit" class="btn btn-success " value="Edit">
                </div>
            </form>
        </div>
    </div>
<!-- Edit Modal HTML -->
<div class="button-radius">
    <a href="manager">Quay lại</a>
</div>
<script src="js/manager.js" type="text/javascript"></script>
<script>

</script>
</body>
</html>