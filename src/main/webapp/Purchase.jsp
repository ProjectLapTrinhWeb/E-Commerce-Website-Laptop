<%@ page import="vn.edu.nlu.Beans.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Laptop Store | Your Account</title>
    <!-- for-mobile-apps -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Electronic Store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
	SmartPhone Compatible web template, free web designs for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
    function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- //for-mobile-apps -->
    <!-- Custom Theme files -->
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/fasthover.css" rel="stylesheet" type="text/css" media="all" />
    <!-- //Custom Theme files -->
    <!-- font-awesome icons -->
    <link href="css/font-awesome.css" rel="stylesheet">
    <!-- //font-awesome icons -->
    <!-- js -->
    <script src="js/jquery.min.js"></script>
    <!-- //js -->
    <!-- web fonts -->
    <link href='//fonts.googleapis.com/css?family=Glegoo:400,700' rel='stylesheet' type='text/css'>
    <link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
    <!-- //web fonts -->
    <!-- for bootstrap working -->
    <script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
    <!-- //for bootstrap working -->
    <!-- start-smooth-scrolling -->
    <script type="text/javascript">
        jQuery(document).ready(function($) {
            $(".scroll").click(function(event){
                event.preventDefault();
                $('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
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
        <h2>Ưu đãi tuyệt vời khi mua <span style="font-size: 55px; font-weight: bold;">Laptop</span> dành cho Sinh viên  <i>35% Discount</i></h2>
    </div>
</div>
<!-- breadcrumbs -->
<div class="breadcrumb_dress">
    <div class="container">
        <ul>
            <li><a href="index.html"><span class="glyphicon glyphicon-home" aria-hidden="true"></span> Home</a> <i>/</i></li>
            <li>Account <i>/</i> Đơn mua</li>

        </ul>
    </div>
</div>
<!-- //breadcrumbs -->
<!-- Purchase body -->
<div class="mobiles">
    <div class="container" style="margin: 0 !important;">
        <div class="w3ls_mobiles_grids">
            <div class="col-md-4 w3ls_mobiles_grid_left">
                <div class="w3ls_mobiles_grid_left_grid">
                    <h3>Tài khoản</h3>
                    <div class="w3ls_mobiles_grid_left_grid_sub">
                        <div class="account-header-content" style="width: 150px;height: 40px;display: flex;">
                            <% User user2 = (User) session.getAttribute("User");
                                if (user2 != null) {%>
                            <div class="img-contain-div" style="width: 30%;height: 100%;display: flex;" >
                                <img src="<%= user2.getImage()%>" style="border-radius: 50% ;width: 100%;height: 100%;border: 1px solid black;" alt="">
                            </div>
                            <div class="account-name-div" style="width: 70%;height: 100%;display:flex;float: right;padding-top: 15px;padding-left: 10px;">
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
                                        <a class="pa_italic " href="/WebLaptop/Info">
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
                                        <a class="pa_italic collapsed" href="#">
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
                        <li class="active"><a data-toggle="tab" href="#allPurchase">Tất cả</a></li>
                        <li><a data-toggle="tab" href="#waitingCheck">Chờ xác nhận</a></li>
                        <li><a data-toggle="tab" href="#waitingGet">Chờ lấy</a></li>
                        <li><a data-toggle="tab" href="#Sending">Đang gửi</a></li>
                        <li><a data-toggle="tab" href="#Sent">Đã gửi</a></li>
                        <li><a data-toggle="tab" href="#Canceled">Đã hủy</a></li>
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
                        <div id="allPurchase" class="tab-pane fade in active">
                            <div style="width: 100%; height: 500px; ">
                                <div style="width: 72%;height: 70px;background-color: rgb(222, 222, 222);position: absolute;">
                                    <div style="background-color: rgb(222, 222, 222);width: 100%;height: 26px;margin-top: 20px;">
                                        <input style="width: 80%;border: none;margin-left: 90px;" type="text" placeholder="Tìm kiếm theo id sản phẩm hoặc tên sản phẩm">
                                    </div>
                                </div>
                                <div style="width: 100%;height: 430px;display: block;">
                                    <img src="img/OIP.jpg" alt="" style="margin-left: 440px;width: 70px;margin-top: 250px;">
                                    <p style="text-align: center;">Chưa có đơn hàng</p>
                                </div>
                            </div>
                        </div>
                        <div id="waitingCheck" class="tab-pane fade">
                            <div style="width: 100%; height: 500px; ">
                                <div style="width: 100%;height: 100%;display: block;">
                                    <img src="img/OIP.jpg" alt="" style="margin-left: 440px;width: 70px;margin-top: 250px;">
                                    <p style="text-align: center;">Chưa có đơn hàng</p>
                                </div>
                            </div>
                        </div>
                        <div id="waitingGet" class="tab-pane fade">
                            <div style="width: 100%; height: 500px; ">
                                <div style="width: 100%;height: 100%;display: block;">
                                    <img src="img/OIP.jpg" alt="" style="margin-left: 440px;width: 70px;margin-top: 250px;">
                                    <p style="text-align: center;">Chưa có đơn hàng</p>
                                </div>
                            </div>
                        </div>
                        <div id="Sending" class="tab-pane fade">
                            <div style="width: 100%; height: 500px; ">
                                <div style="width: 100%;height: 100%;display: block;">
                                    <img src="img/OIP.jpg" alt="" style="margin-left: 440px;width: 70px;margin-top: 250px;">
                                    <p style="text-align: center;">Chưa có đơn hàng</p>
                                </div>
                            </div>
                        </div>
                        <div id="Sent" class="tab-pane fade">
                            <div style="width: 100%; height: 500px; ">
                                <div style="width: 100%;height: 100%;display: block;">
                                    <img src="img/OIP.jpg" alt="" style="margin-left: 440px;width: 70px;margin-top: 250px;">
                                    <p style="text-align: center;">Chưa có đơn hàng</p>
                                </div>
                            </div>
                        </div>
                        <div id="Canceled" class="tab-pane fade">
                            <div style="width: 100%; height: 500px; ">
                                <div style="width: 100%;height: 100%;display: block;">
                                    <img src="img/OIP.jpg" alt="" style="margin-left: 440px;width: 70px;margin-top: 250px;">
                                    <p style="text-align: center;">Chưa có đơn hàng</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- end all order -->
            </div>
        </div>

        <!-- end content-admin -->
    </div>

</div>

</div>
<!-- end body -->

<!-- Account body -->
<!-- newsletter -->
<div class="newsletter">
    <div class="container">
        <div class="col-md-6 w3agile_newsletter_left">
            <h3>Nhận thông báo</h3>
            <p>Về khuyến mãi và các ưu đãi sắp tới của chúng tôi....</p>
        </div>
        <div class="col-md-6 w3agile_newsletter_right">
            <form action="#" method="post">
                <input type="email" name="Email" placeholder="Email" required="">
                <input type="submit" value="" />
            </form>
        </div>
        <div class="clearfix"> </div>
    </div>
</div>
<!-- //newsletter -->
<!-- footer -->
<div class="footer">
    <div class="container">
        <div class="w3_footer_grids">
            <div class="col-md-3 w3_footer_grid">
                <h3>Liên hệ</h3>
                <ul class="address">
                    <li><i class="glyphicon glyphicon-map-marker" aria-hidden="true"></i>Trường Đại Học Nông Lâm <span>Kp6, P.Linh Trung, Q.Thủ Đức, TP. Hồ Chí Minh</span> </li>
                    <li><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i><a href="18130000@st.hcmuaf.edu.vn">18130000@st.hcmuaf.edu.vn</a></li>
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
            <div class="clearfix"> </div>
        </div>
    </div>
    <div class="footer-copy">
        <div class="footer-copy1">
            <div class="footer-copy-pos">
                <a href="#home1" class="scroll"><img src="images/arrow.png" alt=" " class="img-responsive" /></a>
            </div>
        </div>
        <div class="container">
            <p>&copy; 2020 Laptop Store. All rights reserved | Design by <a href="#">WE</a></p>
        </div>
    </div>
</div>
<!-- //footer -->
<!-- cart-js -->
<script src="js/minicart.js"></script>
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
</script>
<!-- //cart-js -->
</body>
</html>