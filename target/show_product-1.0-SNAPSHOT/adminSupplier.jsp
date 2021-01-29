<%@ page import="vn.edu.nlu.Beans.User" %>
<%@ page import="vn.edu.nlu.Beans.Supplier" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
                <div class="w3ls_mobiles_grid_left_grid">
                    <h3>Quản lý</h3>
                    <div class="w3ls_mobiles_grid_left_grid_sub">
                        <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                            <div class="panel panel-default">
                                <div class="panel-heading" role="tab" id="headingOne">
                                    <h4 class="panel-title asd">
                                        <a class="pa_italic" href="adminOrder.html">
                                            <i class="glyphicon glyphicon-plus" aria-hidden="true"></i>Đơn hàng
                                        </a>
                                    </h4>
                                </div>
                                <!-- <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                              <div class="panel-body panel_text">
                                <ul>
                                    <li><a href="" role="button" data-toggle="collapse" >Tất cả</a></li>
                                    <li><a href="#cancel"  role="button" data-toggle="collapse" >Đơn đã hủy</a></li>
                                    <li><a href="products2.html">Đơn đang giao</a></li>
                                    <li><a href="#delivered">Đơn đã giao</a></li>
                                    <li><a href="products.html">Trả hàng/Hoàn tiền</a></li>
                                </ul>
                              </div>
                            </div> -->
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading" role="tab" id="headingTwo">
                                    <h4 class="panel-title asd">
                                        <a class="pa_italic" href="products.html">
                                            <span class="glyphicon glyphicon-plus" aria-hidden="true"></span><i
                                                class="glyphicon glyphicon-plus" aria-hidden="true"></i>Sản phẩm
                                        </a>
                                    </h4>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading" role="tab" id="heading3">
                                    <h4 class="panel-title asd">
                                        <a class="pa_italic" href="adminStaff.html">
                                            <span class="glyphicon glyphicon-plus" aria-hidden="true"></span><i
                                                class="glyphicon glyphicon-plus" aria-hidden="true"></i>Nhân viên
                                        </a>
                                    </h4>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading" role="tab" id="heading4">
                                    <h4 class="panel-title asd">
                                        <a class="pa_italic" href="adminCustomer.html">
                                            <span class="glyphicon glyphicon-plus" aria-hidden="true"></span><i
                                                class="glyphicon glyphicon-plus" aria-hidden="true"></i>Khách hàng
                                        </a>
                                    </h4>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading" role="tab" id="heading5">
                                    <h4 class="panel-title asd">
                                        <a class="pa_italic" href="adminContact.html">
                                            <span class="glyphicon glyphicon-plus" aria-hidden="true"></span><i
                                                class="glyphicon glyphicon-plus" aria-hidden="true"></i>Liên hệ
                                        </a>
                                    </h4>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading" role="tab" id="heading6">
                                    <h4 class="panel-title asd">
                                        <a class="pa_italic collapsed" href="adminProduct.html">
                                            <span class="glyphicon glyphicon-minus" aria-hidden="true"></span><i
                                                class="glyphicon glyphicon-plus" aria-hidden="true"></i>Nhà sản xuất
                                        </a>
                                    </h4>
                                </div>
                                <!-- <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                               <div class="panel-body panel_text">
                                <ul>
                                    <li><a href="products2.html">Tất cả sản phẩm</a></li>
                                    <li><a href="products2.html">Thêm sản phẩm</a></li>
                                    <li><a href="products2.html">Đang kinh doanh</a></li>
                                    <li><a href="products2.html">Đã hết</a></li>
                                </ul>
                              </div>
                            </div> -->
                            </div>
                        </div>
                    </div>
                </div>
                <!-- <div class="w3ls_mobiles_grid_left_grid">
                    <h3>Tài chính</h3>
                    <div class="w3ls_mobiles_grid_left_grid_sub">
                        <div class="ecommerce_color ecommerce_size">
                            <ul>
                                <li><a href="#">Doanh thu theo tuần</a></li>
                                <li><a href="#">Doanh thu theo tháng</a></li>
                                <li><a href="#">Doanh thu theo quý</a></li>
                                <li><a href="#">Doanh thu theo năm</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="w3ls_mobiles_grid_left_grid">
                    <h3>Dữ liệu</h3>
                    <div class="w3ls_mobiles_grid_left_grid_sub">
                        <div class="ecommerce_color ecommerce_size">
                            <ul>
                                <li><a href="#">Phân tích bán hàng</a></li>
                                <li><a href="#">Hiệu quả hoạt động</a></li>
                            </ul>
                        </div>
                    </div>
                </div> -->
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
    <div class="footer">
        <div class="container">
            <div class="w3_footer_grids">
                <div class="col-md-3 w3_footer_grid">
                    <h3>Liên hệ</h3>
                    <ul class="address">
                        <li><i class="glyphicon glyphicon-map-marker" aria-hidden="true"></i>Trường Đại Học Nông Lâm
                            <span>Kp6, P.Linh Trung, Q.Thủ Đức, TP. Hồ Chí Minh</span>
                        </li>
                        <li><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i><a
                                href="18130000@st.hcmuaf.edu.vn">18130000@st.hcmuaf.edu.vn</a></li>
                        <li><i class="glyphicon glyphicon-earphone" aria-hidden="true"></i>+84 999 999 999</li>
                    </ul>
                </div>
                <div class="col-md-3 w3_footer_grid">
                    <h3>Thông tin</h3>
                    <ul class="info">
                        <li><a href="about.html">Về chúng tôi</a></li>
                        <li><a href="mail.html">Liên hệ chúng tôi</a></li>
                        <li><a href="codes.html">Mã khuyến mãi</a></li>
                        <li><a href="products.html">Sản phẩm đặc biệt</a></li>
                        <li><a href="faq.html">FAQ's</a></li>
                    </ul>
                </div>
                <div class="col-md-3 w3_footer_grid">
                    <h3>Danh mục</h3>
                    <ul class="info">
                        <li><a href="products.html">Tablets</a></li>
                        <li><a href="products1.html">Laptops Gaming</a></li>
                        <li><a href="products.html">Laptops Office</a></li>
                        <li><a href="products2.html">Laptops Studying</a></li>
                    </ul>
                </div>
                <div class="col-md-3 w3_footer_grid">
                    <h3>Hồ sơ</h3>
                    <ul class="info">
                        <li><a href="index.html">Home</a></li>
                        <li><a href="products.html">Today's Deals</a></li>
                    </ul>
                    <h4>Theo dõi</h4>
                    <div class="agileits_social_button">
                        <ul>
                            <li><a href="#" class="facebook"> </a></li>
                            <li><a href="#" class="twitter"> </a></li>
                            <li><a href="#" class="google"> </a></li>
                            <li><a href="#" class="pinterest"> </a></li>
                        </ul>
                    </div>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
        <div class="footer-copy">
            <div class="footer-copy1">
                <div class="footer-copy-pos">
                    <a href="#home1" class="scroll"><img src="images/arrow.png" alt=" " class="img-responsive"/></a>
                </div>
            </div>
            <div class="container">
                <p>&copy; 2020 Laptop Store. All rights reserved | Design by <a href="#">WE</a></p>
            </div>
        </div>
    </div>
    <!-- //footer -->

    <!-- cart-js -->
    <!-- <script src="js/minicart.js"></script>
    <script>
        w3ls.render();

        w3ls.cart.on('w3sb_checkout', function (evt) {
            var items, len, i;

            if (this.subtotal() > 0) {
                items = this.items();

                for (i = 0, len = items.length; i < len; i++) {
                }
            }
        });
    </script>   -->
    <!-- //cart-js -->

</div>
</body>

</html>