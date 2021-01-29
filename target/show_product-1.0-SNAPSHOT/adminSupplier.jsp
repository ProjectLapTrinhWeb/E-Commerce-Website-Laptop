<%@ page import="vn.edu.nlu.Beans.User" %>
<%@ page import="vn.edu.nlu.Beans.Supplier" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@include file="iCheckAdmin.jsp" %>
<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Laptop Store</title>
    <!-- for-mobile-apps -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="keywords" content="Electronic Store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
	SmartPhone Compatible web template, free web designs for Nokia, Samsung, LG, SonyEricsson, Motorola web design"/>
    <script type="application/x-javascript"> addEventListener("load", function () {
        setTimeout(hideURLbar, 0);
    }, false);

    function hideURLbar() {
        window.scrollTo(0, 1);
    } </script>
    <!-- //for-mobile-apps -->
    <!-- Custom Theme files -->
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all"/>
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all"/>
    <link href="css/fasthover.css" rel="stylesheet" type="text/css" media="all"/>
    <link href="css/popuo-box.css" rel="stylesheet" type="text/css" media="all"/>
    <!-- //Custom Theme files -->
    <!-- font-awesome icons -->
    <link href="css/font-awesome.css" rel="stylesheet">
    <!-- //font-awesome icons -->
    <!-- js -->
    <script src="js/jquery.min.js"></script>
    <link rel="stylesheet" href="css/jquery.countdown.css"/> <!-- countdown -->
    <!-- //js -->
    <!-- web fonts -->
    <link href='//fonts.googleapis.com/css?family=Glegoo:400,700' rel='stylesheet' type='text/css'>
    <link
            href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic'
            rel='stylesheet' type='text/css'>
    <!-- //web fonts -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <!-- start-smooth-scrolling -->
    <script type="text/javascript">
        jQuery(document).ready(function ($) {
            $(".scroll").click(function (event) {
                event.preventDefault();
                $('html,body').animate({scrollTop: $(this.hash).offset().top}, 1000);
            });
        });
    </script>
    <!-- //end-smooth-scrolling -->
</head>

<body>
<!-- header modal -->
<%@include file="iheaderModal.jsp" %>
<!-- <script>
    $('#myModal88').modal('show');
</script>   -->
<!-- header modal -->
<!-- header -->
<%@include file="iheader.jsp" %>
<!-- //header -->
<!-- navigation -->
<%@include file="inavigation.jsp" %>
<!-- //navigation -->
<!-- banner -->
<div class="banner banner10" style="background-image: url(images/banner-about1.jpg);">
    <div class="container">
        <h2>Admin Control</h2>
    </div>
</div>
<!-- //banner -->
<!-- breadcrumbs -->
<div class="breadcrumb_dress">
    <div class="container">
        <ul>
            <li><a href="index.html"><span class="glyphicon glyphicon-home" aria-hidden="true"></span> Home</a>
                <i>/</i>
            </li>
            <li>Admin Control</li>
        </ul>
    </div>
</div>
<!-- //breadcrumbs -->
<!-- body -->
<!-- admin -->

<%List<Supplier> list = (List<Supplier>) request.getAttribute("List");%>
<div class="mobiles">
    <div class="container" style="margin: 0 !important;">
        <div class="w3ls_mobiles_grids">
            <div class="col-md-4 w3ls_mobiles_grid_left">
                <%@include file="iMenuAdmin.jsp" %>
            </div>
        </div>
        <div class="tab-content">
            <div class="content-admin collapse in" id="admin-product">
                <div class="all-product">
                    <ul class="nav nav-tabs" id="myProductTab">
                        <li class="active"><a data-toggle="tab" href="#all-product">Tất cả</a></li>
                        <li><a data-toggle="tab" href="#supplierActive">Đang hoạt động</a></li>
                        <li><a data-toggle="tab" href="#unactivated">Đã ngưng hoạt động</a></li>
                    </ul>
                    <div class="search-product search-order">
                        <form action="" method="get">
                            <label>
                                Tìm kiếm sản phẩm:
                                <input type="search" name="search" class="search-box"
                                       placeholder="Theo tên thương hiệu...">
                                <input type="submit" value="Tìm" class="search-btn" id="">
                                <a href="#myModaladdSupplier" target="_blank" rel="noopener noreferrer"
                                   id="add-product" data-toggle="modal"
                                   data-target="#myModaladdSupplier">Thêm nhà sản xuất</a>
                            </label>
                        </form>

                        <div class="modal fade" id="myModaladdSupplier" role="dialog">
                            <div class="modal-dialog">

                                <!-- Modal delete content-->
                                <div class="modal-content">
                                    <form action="AddSupplier" enctype="multipart/form-data" method="post">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal">
                                                &times;
                                            </button>
                                            <h4 class="modal-title">Thêm nhà sản xuất</h4>
                                        </div>
                                        <div class="modal-body">
                                            <div style="width: 900px;height: 290px;display: flex;">
                                                <div style="width: 400px;height: 290px;margin-left: 40px">
                                                    <div style="width: 300px;height: 100px">
                                                        <label>
                                                            Tên nhà sản xuất:
                                                        </label>
                                                        <input name="Name" placeholder="Nhập tên nhà sản xuất">
                                                    </div>
                                                    <div style="height: 100px">
                                                        <label>
                                                            Status:
                                                        </label>
                                                        <div class="form-group">
                                                            <select name="Status" class="form-control"
                                                                    id="chooseStatus"
                                                                    style="width: 204px;">
                                                                <option>Active</option>
                                                                <option>Unactive</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="imgProduct">
                                                            Ảnh:
                                                            <input type="file" class="form-control "
                                                                   style="width: 204px;"
                                                                   onchange="readURL(this)" name="img"
                                                                   id="imgProduct">
                                                        </label>
                                                    </div>
                                                </div>
                                                <div style="width: 400px;height: 250px;float: right">

                                                    <div class="thumbnail" style="width: 400px;height: 250px">
                                                        <img style="max-width: 400px;max-height: 250px"
                                                             src="images/image.png" alt="hinh-anh-nha-san-xuat"
                                                             id="img-upload">
                                                    </div>

                                                </div>
                                            </div>

                                        </div>
                                        <div class="modal-footer">
                                            <button type="submit" class="btn my-blue">Thêm nhà sản xuất</button>
                                            <button type="button" class="btn btn-default"
                                                    data-dismiss="modal">Đóng
                                            </button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                        </label>
                    </div>
                </div>
                <div class="tab-content" id="content-product">
                    <div id="all-product" class="tab-pane fade in active">
                        <table class="table table-bordered header-tab">
                            <thead>
                            <tr>
                                <th>ID</th>
                                <th>Name</th>
                                <th>Status</th>
                                <th>Image</th>
                                <th>Action</th>
                            </tr>
                            </thead>
                            <tbody>
                            <%for (Supplier s : list) { %>
                            <!--                        start product-->

                            <tr>
                                <td><%= s.getId() %>
                                </td>
                                <td><%= s.getName()%>
                                </td>
                                <td><%= s.getStatus()%>
                                </td>
                                <td><img src="<%= s.getImg()%>" style="max-width: 40px; max-height: 40px;"
                                         alt="img-supplier"></td>
                                <td>
                                    <input type="text" name="id" value="" class="hidden">
                                    <button type="button" class="btn btn-warning left" data-toggle="modal"
                                            data-target="#MyModalupdateSupplier<%= s.getId()%>">
                                        <i class="fa fa-wrench" style="font-size:12px;color:black"></i>
                                    </button>
                                    <div class="modal fade" id="MyModalupdateSupplier<%= s.getId()%>" role="dialog">
                                        <div class="modal-dialog">

                                            <!-- Modal delete content-->
                                            <div class="modal-content">
                                                <form action="updateSupplier" method="get"
                                                      enctype="multipart/form-data">
                                                    <div class="modal-header">
                                                        <button type="button" class="close" data-dismiss="modal">
                                                            &times;
                                                        </button>
                                                        <h4 class="modal-title" style="color: #151313">Sửa nhà sản
                                                            xuất <%= s.getName()%>
                                                        </h4>
                                                    </div>
                                                    <div class="modal-body">
                                                        <div style="width: 900px;height: 290px;display: flex;">
                                                            <div style="width: 400px;height: 290px;margin-left: 40px">
                                                                <div style="width: 300px;height: 100px">
                                                                    <label style="color: #151313">
                                                                        Tên nhà sản xuất:
                                                                    </label>
                                                                    <input value="<%= s.getName()%>" name="Name"
                                                                           style="color: #0b0b0b"
                                                                    >

                                                                </div>
                                                                <div style="height: 100px">
                                                                    <label style="color: #151313">
                                                                        Status:
                                                                    </label>
                                                                    <div class="form-group">
                                                                        <select class="form-control"
                                                                                id="updateStatus"
                                                                                style="width: 204px;"
                                                                                name="Status">
                                                                            <option value="Active">Active
                                                                            </option>
                                                                            <option value="Unactive">Unactive
                                                                            </option>
                                                                        </select>
                                                                    </div>
                                                                </div>
                                                                <div class="form-group">
                                                                    <label for="imgProduct"
                                                                           style="color:#151313;">
                                                                        Ảnh:
                                                                        <input type="file" class="form-control "
                                                                               style="width: 204px;"
                                                                               onchange="readURL(this)"
                                                                               name="img"
                                                                               id="imgSupplier">
                                                                    </label>
                                                                </div>
                                                            </div>
                                                            <div style="width: 400px;height: 250px;float: right">
                                                                <div class="thumbnail"
                                                                     style="width: 400px;height: 250px">
                                                                    <img style="max-width: 400px;max-height: 250px"
                                                                         src="<%= s.getImg()%>"
                                                                         alt="hinh-anh-nha-san-xuat"
                                                                         id="img-update2" name="img">
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="modal-footer">

                                                        <input type="text" name="id" value="<%= s.getId()%>"
                                                               class="hidden">
                                                        <button type="submit" class="btn my-blue">Sửa</button>
                                                        <button type="button" class="btn btn-default"
                                                                data-dismiss="modal">Đóng
                                                        </button>

                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                    <button type="button" class="btn btn-default right" data-toggle="modal"
                                            data-target="#myModalDelete<%= s.getId()%>">
                                        <i class="fa fa-remove" style="font-size:12px;color:red"></i>
                                    </button>
                                    <!-- Modal delete -->
                                    <div class="modal fade" id="myModalDelete<%= s.getId()%>" role="dialog">
                                        <div class="modal-dialog">

                                            <!-- Modal delete content-->
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal">
                                                        &times;
                                                    </button>
                                                    <h4 class="modal-title">Xóa nhà sản xuất</h4>
                                                </div>
                                                <div class="modal-body">
                                                    <p class="center">Bạn có muốn xóa nhà sản xuất <%= s.getName()%>
                                                        không!?</p>
                                                </div>
                                                <div class="modal-footer">
                                                    <form action="deleteSupplier" method="post">
                                                        <input type="text" name="id" value="<%= s.getId()%>"
                                                               class="hidden">
                                                        <button type="submit" class="btn btn-warning right">Xóa
                                                            sản phẩm
                                                        </button>
                                                        <button type="button" style="margin-right: 30px"
                                                                class="btn btn-default" data-dismiss="modal">Đóng
                                                        </button>
                                                    </form>

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- end Modal delete--></td>
                            </tr>

                            <!--                        end product--><% }%>
                            </tbody>
                        </table>
                    </div>
                    <div id="supplierActive" class="tab-pane fade">
                        <table class="table table-bordered header-tab">
                            <thead>
                            <tr>
                                <th>ID</th>
                                <th>Name</th>
                                <th>Status</th>
                                <th>Image</th>
                                <th>Action</th>
                            </tr>
                            </thead>
                            <tbody>
                            <!--                        start product-->
                            <tr>
                                <td>1</td>
                                <td>Dell</td>
                                <td>Active</td>
                                <td><img src="img/1.jpg" style="max-width: 40px; max-height: 40px;" alt="img-product">
                                </td>
                                <td>
                                    <form action="" method="post">
                                        <input type="text" name="id" value="" class="hidden">
                                        </button>
                                        <button type="submit" class="btn btn-warning left">
                                            <i class="fa fa-wrench" style="font-size:12px;color:black"></i>
                                        </button>
                                    </form>
                                    <button type="button" class="btn btn-default right" data-toggle="modal"
                                            data-target="#myModalDelete1">
                                        <i class="fa fa-remove" style="font-size:12px;color:red"></i>

                                    </button>
                                    <!-- Modal delete -->
                                    <div class="modal fade" id="myModalDelete1" role="dialog">
                                        <div class="modal-dialog">

                                            <!-- Modal delete content-->
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal">
                                                        &times;
                                                    </button>
                                                    <h4 class="modal-title">Xóa sản phẩm</h4>
                                                </div>
                                                <div class="modal-body">
                                                    <p class="center">Bạn có muốn xóa sản phẩm này không!?</p>
                                                </div>
                                                <div class="modal-footer">
                                                    <input type="text" name="id" value="" class="hidden">
                                                    <button type="submit" class="btn btn-warning right">Xóa
                                                        sản phẩm
                                                    </button>
                                                    <button type="button" style="margin-right: 30px"
                                                            class="btn btn-default" data-dismiss="modal">Đóng
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- end Modal delete--></td>
                            </tr>
                            <!--                        end product-->
                            </tbody>
                        </table>
                    </div>
                    <div id="unactivated" class="tab-pane fade">
                        <table class="table table-bordered header-tab">
                            <thead>
                            <tr>
                                <th>ID</th>
                                <th>Name</th>
                                <th>Status</th>
                                <th>Image</th>
                                <th>Action</th>
                            </tr>
                            </thead>
                            <tbody>
                            <!--                        start product-->
                            <tr>
                                <td>1</td>
                                <td>Dell</td>
                                <td>Unactivated</td>
                                <td><img src="img/1.jpg" style="max-width: 40px; max-height: 40px;" alt="img-product">
                                </td>
                                <td>
                                    <form action="" method="post">
                                        <input type="text" name="id" value="" class="hidden">
                                        <button type="submit" class="btn btn-warning left">
                                            <i class="fa fa-wrench" style="font-size:12px;color:black"></i>
                                        </button>
                                    </form>
                                    <button type="button" class="btn btn-default right" data-toggle="modal"
                                            data-target="#myModalDelete2">
                                        <i class="fa fa-remove" style="font-size:12px;color:red"></i>

                                    </button>
                                    <!-- Modal delete -->
                                    <div class="modal fade" id="myModalDelete2" role="dialog">
                                        <div class="modal-dialog">

                                            <!-- Modal delete content-->
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal">
                                                        &times;
                                                    </button>
                                                    <h4 class="modal-title">Xóa sản phẩm</h4>
                                                </div>
                                                <div class="modal-body">
                                                    <p class="center">Bạn có muốn xóa sản phẩm này không!?</p>
                                                </div>
                                                <div class="modal-footer">
                                                    <form action="" method="post">
                                                        <input type="text" name="id" value="" class="hidden">
                                                        <button type="submit" class="btn btn-warning right">Xóa
                                                            sản phẩm
                                                        </button>
                                                    </form>
                                                    <button type="button" style="margin-right: 30px"
                                                            class="btn btn-default" data-dismiss="modal">Đóng
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- end Modal delete--></td>
                            </tr>
                            <!--                        end product-->
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- end all order -->


    <!-- end content-admin -->
    <script>
        function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();
                reader.onload = function (e) {
                    $('#img-upload')
                        .attr('src', e.target.result)
                        .width(450)
                        .height(300);
                };
                reader.readAsDataURL(input.files[0]);
            }
        }
    </script>
    <script>
        function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();
                reader.onload = function (e) {
                    $('#img-upload2')
                        .attr('src', e.target.result)
                        .width(450)
                        .height(300);
                };
                reader.readAsDataURL(input.files[0]);
            }
        }
    </script>
    <!-- end body -->

    <!-- div -->
    <div style="background-color: #0064cf; width: 100%; height: 60px;"></div>
    <!-- end div -->
    <!-- footer -->
    <%@include file="ifooter.jsp" %>
    <!-- //footer -->
</div>
</body>

</html>