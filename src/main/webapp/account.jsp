<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<%@ page import="vn.edu.nlu.Beans.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%--<%@include file="iCheckAccount.jsp"%>--%>
<!DOCTYPE html>
<html lang="en">
<head>

    <title>Laptop Store | Your Account</title>
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
    <!-- //Custom Theme files -->
    <!-- font-awesome icons -->
    <link href="css/font-awesome.css" rel="stylesheet">
    <!-- //font-awesome icons -->
    <!-- js -->
    <script src="js/jquery.min.js"></script>
    <!-- //js -->
    <!-- web fonts -->
    <link href='//fonts.googleapis.com/css?family=Glegoo:400,700' rel='stylesheet' type='text/css'>
    <link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic'
          rel='stylesheet' type='text/css'>
    <!-- //web fonts -->
    <!-- for bootstrap working -->
    <script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
    <!-- //for bootstrap working -->
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
<div class="banner banner1">
    <div class="container">
        <h2>Ưu đãi tuyệt vời khi mua <span style="font-size: 55px; font-weight: bold;">Laptop</span> dành cho Sinh viên
            <i>35% Discount</i></h2>
    </div>
</div>
<!-- breadcrumbs -->
<div class="breadcrumb_dress">
    <div class="container">
        <ul>
            <li><a href="index.html"><span class="glyphicon glyphicon-home" aria-hidden="true"></span> Home</a> <i>/</i>
            </li>
            <li>Account <i>/</i> Info</li>

        </ul>
    </div>
</div>
<!-- //breadcrumbs -->
<!-- Account body -->
<div class="mobiles">
    <div class="container" style="margin: 0 !important;">
        <div class="w3ls_mobiles_grids">
            <div class="col-md-4 w3ls_mobiles_grid_left">
                <div class="w3ls_mobiles_grid_left_grid">
                    <h3>Tài khoản</h3>
                    <div class="w3ls_mobiles_grid_left_grid_sub">
                        <div class="account-header-content" style="width: 150px;height: 40px;display: flex;">
                            <% HttpSession s = request.getSession();
                                User user2 = (User) s.getAttribute("User");
                                if (user2 != null) {%>
                            <div class="img-contain-div" style="width: 30%;height: 100%;display: flex;">
                                <img src="<%= user2.getImage()%>"
                                     style="border-radius: 50% ;width: 100%;height: 100%;border: 1px solid black;"
                                     alt="">
                            </div>
                            <div class="account-name-div"
                                 style="width: 70%;height: 100%;display:flex;float: right;padding-top: 15px;padding-left: 10px;">
                                <span><%= user2.getUserName()%></span>
                            </div>
                            <%
                                }
                            %>
                        </div>
                    </div>
                    <div class="w3ls_mobiles_grid_left_grid_sub">
                        <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                            <div class="panel panel-default">
                                <div class="panel-heading" role="tab" id="headingOne">
                                    <h4 class="panel-title asd">
                                        <a class="pa_italic collapsed" href="#">
                                            <span class="glyphicon glyphicon-minus" aria-hidden="true"></span>
                                            <i class="glyphicon glyphicon-plus" aria-hidden="true"></i>Tài khoản
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
                                        <a class="pa_italic" href="/WebLaptop/Purchase">
                                            <span class="glyphicon glyphicon-minus" aria-hidden="true"></span><i
                                                class="glyphicon glyphicon-plus" aria-hidden="true"></i>Đơn mua
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
                            <div class="panel panel-default">
                                <div class="panel-heading" role="tab" id="heading3">
                                    <h4 class="panel-title asd">
                                        <a class="pa_italic" href="/WebLaptop/Notification">
                                            <span class="glyphicon glyphicon-plus" aria-hidden="true"></span><i
                                                class="glyphicon glyphicon-plus" aria-hidden="true"></i>Thông báo
                                        </a>
                                    </h4>
                                </div>
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
                        <li class="active"><a data-toggle="tab" href="#profile">Hồ sơ</a></li>
                        <li><a data-toggle="tab" href="#bank">Ngân hàng</a></li>
                        <li><a data-toggle="tab" href="#address">Địa chỉ</a></li>
                        <li><a data-toggle="tab" href="#addpassword">Đổi mật khẩu</a></li>
                    </ul>
                    <!-- <div class="search-product search-order">
                        <form action="">
                            <label>
                                Tìm kiếm sản phẩm:
                                <input type="search" name="search" class="search-box"
                                    placeholder="Theo tên thương hiệu...">
                                <input type="submit" value="Tìm" class="search-btn">
                                <a href="addProduct.html" target="_blank" rel="noopener noreferrer"
                                    id="add-product">Thêm sản phẩm</a>
                            </label>
                        </form>
                    </div> -->
                    <!-- <div class="header-tab">
                        <ul class="col" style="list-style-type: none;">
                            <li class="col-md-3">Sản phẩm</li>
                            <li class="col-md-2">Phân loại</li>
                            <li class="col-md-3">Số lượng</li>
                            <li class="col-md-2">Giá</li>
                            <li class="col-md-2" style="text-align: right;">Thao tác</li>
                        </ul>
                    </div> -->
                    <div class="tab-content" id="content-order">
                        <%if (user2 != null) {%>
                        <div id="profile" class="tab-pane fade in active" style="position: absolute;">
                            <div class="header-profile"
                                 style="border-bottom: 1px solid gray;width:100%;height:20%; margin-left: 20px; ">
                                <h3>Hồ sơ của tôi</h3>
                                <h5 style="padding-bottom: 13px;">Quản lí hồ sơ để bảo mật tài khoản</h5>
                            </div>
                            <div class="body-profile" style="width: 100%;">
                                <div class="profile-body-content" style="width: 70%;float: left;">
                                    <div class="form-mau" style="width: 500px; height:400px; display: flex;">
                                        <div class="form-chu"
                                             style="width: 210px; height: 20px; text-align: right; margin-right: 0; ">
                                            <p style="margin-top: 60px ;margin-right: 0;">Tên đăng nhập: </p>
                                            <p style="margin-top: 30px ;">Tên: </p>
                                            <p style="margin-top: 30px ;">Email: </p>
                                            <p style="margin-top: 30px ;">Số điện thoại:</p>
                                            <p style="margin-top: 30px ;">Tên shop: </p>
                                            <p style="margin-top: 30px ;">Giới tính: </p>
                                            <p style="margin-top: 30px ;">Ngày sinh: </p>
                                        </div>
                                        <div class="form-dien"
                                             style="width:70% ;float: right;padding-left: 40px;height:20px;">
                                            <p style="margin-top: 60px;"><%= user2.getUserName()%>
                                            </p>
                                            <input style="margin-top: 25px ;" type="text">
                                            <p style="margin-top: 26px ;"><a href=""><%= user2.getEmail()%>/a></p>
                                            <p style="margin-top: 30px ;"><a href=""><%= user2.getPhone()%>
                                            </a></p>
                                            <input style="margin-top: 25px ;" type="text"
                                                   placeholder="<%= user2.getUserName()%>">
                                            <div class="checkbox-gioitinh" style="height: 20px;margin-top: 25px;">
                                                <form method="get">
                                                    <label class="radio-inline"><input type="radio" name="optradio"
                                                                                       value="Nam" checked>Nam</label>
                                                    <label class="radio-inline"><input type="radio"
                                                                                       name="optradio"
                                                                                       value="Nữ">Nữ</label>
                                                    <label class="radio-inline"><input type="radio"
                                                                                       name="optradio" value="Khác">Khác</label>
                                                </form>
                                            </div>
                                            <div class="datetimepicker"
                                                 style="height: 30px;margin-top: 21px;display: flex;">
                                                <input type="date" name="begin"
                                                       placeholder="dd-mm-yyyy" value=""
                                                       min="1990-01-01" max="2020-12-31">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="changeIMG"
                                     style="width: 30%; border-left: 1px solid gray;float: right; padding-left: 50px;padding-top: 30px;">
                                    <div>
                                        <div class="thumbnail"
                                             style="border-radius: 50%; max-width: 120px;max-height: 120px;margin-left: 50px;">
                                            <img style=" max-width: 120px;max-height: 120px;"
                                                 src="<%=user2.getImage()%>>"
                                                 alt="" id="img-upload">
                                        </div>
                                        <div class="form-group">
                                            <label for="imgProduct">
                                                Đổi ảnh:
                                                <input type="file" class="form-control" onchange="readURL(this)"
                                                       name="img" id="imgProduct">
                                            </label>
                                        </div>
                                    </div>
                                </div>
                                <button style="margin-left: 40%;" type="button" class="btn btn-success">Cập nhật
                                </button>
                            </div>
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
                            <!-- <div id="order-tab"> -->

                            <!-- start don hang -->
                            <!-- <div class="product-item">
                                <div class="header-product">
                                    <div id="product-id">
                                        <a href="#">
                                            <h5 class="card-title">ID Sản phẩm: 333XXX</h5>
                                        </a>
                                    </div>
                                </div>
                                <div class="body-product body-order">
                                    <a href="single.html">
                                        <div class="card mb-3" style="max-width: 540px;">
                                            <div class="col-md-2">
                                                <img src="images/laptopcucmanh01.jpg" alt="san-pham"
                                                    width="50px" height="50px">
                                            </div>
                                            <div class="col-md-4">
                                                <div class="card-body">
                                                    <h5 class="card-title">Macbook Air</h5>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                    <div class="col-md-2" id="supplier-product">
                                        <p>Dell</p>
                                    </div>
                                    <div class="col-md-2" id="quantity-product">
                                        <p>20</p>
                                    </div>
                                    <div class="col-md-2" id="price-product">
                                        <p>25.000.000vnđ</p>
                                    </div>
                                    <div class="col-md-2" style="float: right;">
                                        <a href="single.html">Xem sản phẩm</a>
                                    </div>
                                </div>
                            </div> -->
                            <!-- end don hang -->

                            <!-- </div> -->
                        </div>
                        <div id="bank" class="tab-pane fade">
                            <div class="container-bank" style="width: 1000px;height: 500px;">
                                <div class="header-connect-visa"
                                     style="width: 800px;height: 50px; text-align: left;margin: auto;display: flex;padding-bottom: 10px;border-bottom: 1px solid gray;">
                                    <h3>Thẻ tín dụng/ ghi nợ của tôi</h3>
                                    <button type="button" class="btn btn-danger btn-lg" data-toggle="modal"
                                            data-target="#myModal1" style="float: right;margin-left: 200px;">+ Thêm thẻ
                                        tín dụng mới
                                    </button>
                                    <div class="modal fade" id="myModal1" role="dialog">
                                        <div class="modal-dialog" style="width: 500px;height: 600px;">
                                            <!-- Modal content-->
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal">&times;
                                                    </button>
                                                    <h4 class="modal-title">Thêm thẻ tín dụng/ ghi nợ</h4>
                                                </div>
                                                <div class="modal-body">
                                                    <div>
                                                        <input type="text" class="form-control" id="usr7"
                                                               placeholder="Nhập tên chủ thẻ">
                                                        <div style="width: 100%;height: 300px;">
                                                            <input type="text" class="form-control" id="usr6"
                                                                   placeholder="Số thẻ tín dụng/ghi nợ"
                                                                   style="width: 50%;margin-top: 20px;">
                                                            <div style=" width: 100%;height: 15px;display: flex;margin-top: 10px;margin-bottom: 5px;">
                                                                <h5>Ngày hết hạn</h5>
                                                                <h5 style="margin-left: 170px;">CVV</h5>
                                                            </div>
                                                            <div style="margin-bottom: 60px;">
                                                                <input style="width: 47%;float: left;" type="text"
                                                                       class="form-control" id="usr4"
                                                                       placeholder="MM/YY">
                                                                <input style="width: 47%;float: right;" type="text"
                                                                       class="form-control" id="usr3" placeholder="000">
                                                            </div>
                                                            <input style="width: 100%;height:34px;" type="text"
                                                                   class="form-control" placeholder="Địa chỉ hóa đơn">
                                                            <div style="width: 100%;height:34px;padding-top: 35px;">
                                                                <p>Chúng tôi hợp tác với CyberSouce, công ty thuộc tổ
                                                                    chức thẻ VISA,
                                                                    nhằm đảm bảo thông tin thẻ Tín dụng/Ghi nợ của bạn
                                                                    luôn được bảo mật và an toàn.
                                                                    Laptop Store không có quyền truy cập vào bất cứ
                                                                    thông tin nào</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-default" data-dismiss="modal">
                                                        Trở lại
                                                    </button>
                                                    <button type="button" class="btn btn-danger" data-dismiss="modal">
                                                        Hoàn thành
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="body-connect-visa" style="width: 800px;height: 150px;margin: auto;">
                                    <h3 style="text-align: center;margin-top: 50px;"> Bạn chưa có thẻ tín dụng/ ghi
                                        nợ</h3>
                                </div>
                                <div class="header-bank-account"
                                     style="width: 800px;height: 50px; text-align: left;margin: auto;display: flex;padding-bottom: 10px;border-bottom: 1px solid gray;">
                                    <h3>Tài khoản ngân hàng của tôi</h3>
                                    <button type="button" class="btn btn-danger btn-lg" data-toggle="modal"
                                            data-target="#myModal2" style="float: right;margin-left: 200px;">+ Thêm tài
                                        khoản ngân hàng
                                    </button>
                                    <div class="modal fade" id="myModal2" role="dialog">
                                        <div class="modal-dialog" style="width: 500px;height: 600px;">
                                            <!-- Modal content-->
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal">&times;
                                                    </button>
                                                    <h4 class="modal-title">Thêm số điện thoại</h4>
                                                </div>
                                                <div class="modal-body">
                                                    <div style="width: 450px;height: 130px;">
                                                        <div style="float: left; width: 100%;display: flex;margin-bottom: 20px;">
                                                            <input style="width: 60%;" type="text" class="form-control"
                                                                   id="usr2" placeholder="Số điện thoại">
                                                            <input style="width: 40%;" type="text" disabled="disabled"
                                                                   placeholder="Gửi mã xác minh">
                                                        </div>
                                                        <div style="margin-top: 20px;">
                                                            <input type="text" class="form-control"
                                                                   placeholder="Nhập mã xác minh">
                                                        </div>

                                                    </div>
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-default" data-dismiss="modal">
                                                        Trở lại
                                                    </button>
                                                    <button type="button" class="btn btn-danger" data-dismiss="modal">
                                                        Hoàn thành
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="body-bank-account" style="width: 800px;height: 150px;margin: auto;">
                                    <h3 style="text-align: center;margin-top: 50px;"> Bạn chưa có tài khoản ngân
                                        hàng</h3>
                                </div>
                            </div>
                        </div>
                        <div id="address" class="tab-pane fade">
                            <div class="header-new-address"
                                 style="width: 800px;height: 50px; text-align: left;margin: auto;display: flex;padding-bottom: 10px;border-bottom: 1px solid gray;">
                                <h3>Địa chỉ của tôi</h3>
                                <button type="button" class="btn btn-danger btn-lg" data-toggle="modal"
                                        data-target="#myModal3" style="float:right;margin-left: 400px;">+ Thêm địa chỉ
                                    mới
                                </button>
                                <div class="modal fade" id="myModal3" role="dialog">
                                    <div class="modal-dialog" style="width: 500px;height: 600px;">
                                        <!-- Modal content-->
                                        <form action="addAddress" method="post" enctype="text/plain">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal">&times;
                                                    </button>
                                                    <h4 class="modal-title">Thêm địa chỉ mới</h4>
                                                </div>
                                                <div class="modal-body">
                                                    <div style="width: 450px; height: 380px;">
                                                        <input style="width: 100%;margin-top: 20px;" type="text"
                                                               name="Quocgia"
                                                               placeholder="Tên quốc gia">
                                                        <input style="width: 100%;margin-top: 20px;" type="text"
                                                               name="ThanhPho"
                                                               placeholder="Thành Phố">
                                                        <input style="width: 100%;margin-top: 20px;" type="text"
                                                               name="Huyen"
                                                               placeholder="Quận/Huyện">
                                                        <input style="width: 100%;margin-top: 20px;" type="text"
                                                               name="SoNha"
                                                               placeholder="Tòa nhà tên đường">
                                                    </div>
                                                </div>
                                                <div class="modal-footer">
                                                    <input type="text" name="id" value="<%= user2.getID()%>"
                                                           class="hidden">
                                                    <button type="button" class="btn btn-default" data-dismiss="modal">
                                                        Trở
                                                        lại
                                                    </button>
                                                    <button type="submit" class="btn btn-danger" data-dismiss="modal">
                                                        Cập nhật
                                                    </button>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <div class="body-connect-visa" style="width: 800px;height: 150px;margin: auto;">
                                <% if (user2.getAddress().equalsIgnoreCase("null")) {%>
                                <h3 style="text-align: center;margin-top: 50px;">Bạn chưa thêm địa chỉ</h3>
                                <%} else {%>
                                <h3 style="text-align: center;margin-top: 50px;">Địa chỉ: <%= user2.getAddress()%>
                                </h3>>
                                <% }%>
                            </div>
                        </div>
                        <div id="addpassword" class="tab-pane fade">
                            <div class="header-add-password"
                                 style="width: 800px;height: 60px; text-align: left;margin: auto;padding-bottom: 10px;border-bottom: 1px solid gray;">
                                <h3>Thêm mật khẩu</h3>
                                <P>Để bảo mật tài khoản, vui lòng không chia sẽ mật khẩu cho người khác.</P>
                            </div>
                            <div class="body-add-password" style="width: 800px;height: 300px;display: flex">
                                <div class="form-chu-pass" style="width: 40%; text-align: right;">
                                    <p style="margin-top: 40px;">Mật khẩu cũ</p>
                                    <p style="margin-top: 40px;">Mật khẩu mới</p>
                                    <p style="margin-top: 40px;">Nhập lại mật khẩu</p>
                                </div>

                                <div class="form-input" style="width: 40%; margin-left: 30px;">
                                    <form method="post" onsubmit="return matchpass()" name="form1">
                                        <input type="password" id="i1" name="password"
                                               onchange="myChangeFunction1(this)"
                                               style="margin-top: 30px;width: 100%;">
                                        <input type="password" id="i2" name="cpassword"
                                               onchange="myChangeFunction2(this)"
                                               style="margin-top: 30px;width: 100%;">
                                        <input type="password" id="i3" name="cpassword2"
                                               style="margin-top: 30px;width: 100%;">
                                    </form>
                                </div>
                            </div>
                            <input type="text" name="" value="<%= user2.getID()%>" class="hidden">
                            <button type="submit" class="btn btn-success" data-toggle="modal" style="margin-left: 400px"
                                    data-target="#MyModalupdatePass<%= user2.getID()%>">Cập nhật
                            </button>
                            <div class="modal fade" id="MyModalupdatePass<%= user2.getID()%>" role="dialog">
                                <div class="modal-dialog">

                                    <!-- Modal delete content-->
                                    <form method="get" action="ChangePassword">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal">
                                                    &times;
                                                </button>
                                                <h4 class="modal-title" style="color: #151313">Thông báo
                                                </h4>
                                            </div>
                                            <div class="modal-body">
                                                <p class="center">Bạn có muốn đổi mật khẩu của Người
                                                    dùng <%= user2.getUserName()%>
                                                    không!?</p>
                                            </div>
                                            <div class="modal-footer">

                                                <input type="text" name="password"
                                                       class="hidden" id="myi1">
                                                <input type="text" name="cpassword"
                                                       class="hidden" id="myi2">
                                                <input type="text" name="id" value="<%= user2.getID()%>"
                                                       class="hidden">
                                                <button type="submit" class="btn my-blue">Sửa</button>
                                                <button type="button" class="btn btn-default"
                                                        data-dismiss="modal">Đóng
                                                </button>

                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <% }%>

                        <!-- end all order -->
                    </div>
                </div>

                <!-- end content-admin -->
            </div>

        </div>

    </div>
    <!-- end body -->

    <%--  modal status	--%>

    <%--  end modal status	--%>

    <!-- Account body -->
    <!-- newsletter -->


    <%@include file="ifooter.jsp" %>
</div>
<script type="text/javascript">
    function matchpass() {
        var firstpassword = document.form1.cpassword.value;
        var secondpassword = document.form1.cpassword2.value;

        if (firstpassword == secondpassword) {
            return true;
        } else {
            document.getElementById("i3").innerHTML = "Mật khẩu mới giống với mật khẩu nhập lại.";
            return false;
        }
    }
</script>
<script type="text/javascript">
    function myChangeFunction1(input1) {
        var input2 = document.getElementById('myi1');
        input2.value = input1.value;
    }
</script>
<script type="text/javascript">
    function myChangeFunction2(input1) {
        var input2 = document.getElementById('myi2');
        input2.value = input1.value;
    }
</script>
</body>
</html>