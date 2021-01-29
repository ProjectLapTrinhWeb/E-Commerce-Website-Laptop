<%@ page import="vn.edu.nlu.Beans.Product" %>
<%@ page import="vn.edu.nlu.Beans.Comments" %>
<%@ page import="java.util.List" %>
<%@ page import="vn.edu.nlu.Beans.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
<%
    Product product = (Product) request.getAttribute("DetailProduct");
    if (product != null) {

%>

<body>
<!-- header modal -->
<div class="modal fade" id="myModal88" tabindex="-1" role="dialog" aria-labelledby="myModal88"
     aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h4 class="modal-title" id="myModalLabel">Don't Wait, Login now!</h4>
            </div>
            <div class="modal-body modal-body-sub">
                <div class="row">
                    <div class="col-md-8 modal_body_left modal_body_left1"
                         style="border-right: 1px dotted #C2C2C2;padding-right:3em;">
                        <div class="sap_tabs">
                            <div id="horizontalTab" style="display: block; width: 100%; margin: 0px;">
                                <ul>
                                    <li class="resp-tab-item" aria-controls="tab_item-0"><span>Sign in</span></li>
                                    <li class="resp-tab-item" aria-controls="tab_item-1"><span>Sign up</span></li>
                                </ul>
                                <div class="tab-1 resp-tab-content" aria-labelledby="tab_item-0">
                                    <div class="facts">
                                        <div class="register">
                                            <form action="#" method="post">
                                                <input name="Email" placeholder="Email Address" type="text" required="">
                                                <input name="Password" placeholder="Password" type="password"
                                                       required="">
                                                <div class="sign-up">
                                                    <input type="submit" value="Sign in"/>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-2 resp-tab-content" aria-labelledby="tab_item-1">
                                    <div class="facts">
                                        <div class="register">
                                            <form action="#" method="post">
                                                <input placeholder="Name" name="Name" type="text" required="">
                                                <input placeholder="Email Address" name="Email" type="email"
                                                       required="">
                                                <input placeholder="Password" name="Password" type="password"
                                                       required="">
                                                <input placeholder="Confirm Password" name="Password" type="password"
                                                       required="">
                                                <div class="sign-up">
                                                    <input type="submit" value="Create Account"/>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <script src="js/easyResponsiveTabs.js" type="text/javascript"></script>
                        <script type="text/javascript">
                            $(document).ready(function () {
                                $('#horizontalTab').easyResponsiveTabs({
                                    type: 'default', //Types: default, vertical, accordion
                                    width: 'auto', //auto or any width like 600px
                                    fit: true   // 100% fit in a container
                                });
                            });
                        </script>
                        <div id="OR" class="hidden-xs">OR</div>
                    </div>
                    <div class="col-md-4 modal_body_right modal_body_right1">
                        <div class="row text-center sign-with">
                            <div class="col-md-12">
                                <h3 class="other-nw">Sign in with</h3>
                            </div>
                            <div class="col-md-12">
                                <ul class="social">
                                    <li class="social_facebook"><a href="#" class="entypo-facebook"></a></li>
                                    <li class="social_dribbble"><a href="#" class="entypo-dribbble"></a></li>
                                    <li class="social_twitter"><a href="#" class="entypo-twitter"></a></li>
                                    <li class="social_behance"><a href="#" class="entypo-behance"></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- header modal -->
<!-- header -->
<div class="header" id="home1">
    <div class="container">
        <div class="w3l_login">
            <a href="#" data-toggle="modal" data-target="#myModal88"><span class="glyphicon glyphicon-user"
                                                                           aria-hidden="true"></span></a>
        </div>
        <div class="w3l_logo">
            <h1><a href="index.html">Laptop Store<span>Nong Lam University</span></a></h1>
        </div>
        <div class="search">
            <input class="search_box" type="checkbox" id="search_box">
            <label class="icon-search" for="search_box"><span class="glyphicon glyphicon-search"
                                                              aria-hidden="true"></span></label>
            <div class="search_form">
                <form action="#" method="post">
                    <input type="text" name="Search" placeholder="Search...">
                    <input type="submit" value="Send">
                </form>
            </div>
        </div>
        <div class="cart cart box_1">
            <form action="#" method="post" class="last">
                <input type="hidden" name="cmd" value="_cart"/>
                <input type="hidden" name="display" value="1"/>
                <button class="w3view-cart" type="submit" name="submit" value=""><i class="fa fa-cart-arrow-down"
                                                                                    aria-hidden="true"></i></button>
            </form>
        </div>
    </div>
</div>


<!-- //header -->
<!-- //header -->
<!-- navigation -->
<div class="navigation">
    <div class="container">
        <nav class="navbar navbar-default">
            <!-- Brand and toggle get grouped for better mobile display -->
            <!-- <div class="navbar-header nav_2">
                <button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse" data-target="#bs-megadropdown-tabs">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>  -->
            <div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
                <ul class="nav navbar-nav">
                    <li><a href="index.html" class="act">Trang chủ</a></li>
                    <!-- Mega Menu -->
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Sản phẩm<b class="caret"></b></a>
                        <ul class="dropdown-menu multi-column columns-3">
                            <div class="row">
                                <div class="col-sm-3">
                                    <ul class="multi-column-dropdown">
                                        <h6>Laptop</h6>
                                        <li><a href="products.html">Laptop Gaming</a></li>
                                        <li><a href="products.html">Macbook<span>New</span></a></li>
                                        <li><a href="products.html">Laptop Văn Phòng</a></li>
                                        <li><a href="products.html">Laptop Đồ Họa<span>New</span></a></li>
                                    </ul>
                                </div>
                                <div class="col-sm-3">
                                    <ul class="multi-column-dropdown">
                                        <h6>Phụ Kiện</h6>
                                        <li><a href="products1.html">Bàn phím</a></li>
                                        <li><a href="products1.html">Chuột</a></li>
                                        <li><a href="products1.html">Loa<span>New</span></a></li>
                                        <li><a href="products1.html">Tai nghe</a></li>
                                        <!-- <li><a href="products1.html"><i>Tai nghe</i></a></li> -->
                                    </ul>
                                </div>
                                <div class="col-sm-3">
                                    <ul class="multi-column-dropdown">
                                        <h6>Thương Hiệu</h6>
                                        <li><a href="products2.html">Asus</a></li>
                                        <li><a href="products2.html">Dell</a></li>
                                        <li><a href="products2.html">Macbook<span>New</span></a></li>
                                        <li><a href="products2.html">HP</a></li>
                                        <!-- <li><a href="products2.html">Acer</a></li> -->
                                        <!-- <li><a href="products2.html">Lenovo</a></li> -->
                                    </ul>
                                </div>
                                <div class="img-product">
                                    <img src="images/airpod.jpg" alt="air-pod"
                                         style="width: 270px; height: 180px; border-radius: 4px;">
                                </div>
                                <!-- <div class="col-sm-4">
                                    <div class="w3ls_products_pos">
                                        <h4>30%<i>Off/-</i></h4>
                                        <img src="images/1.jpg" alt=" " class="img-responsive" />
                                    </div>
                                </div> -->
                                <div class="clearfix"></div>
                            </div>
                        </ul>
                    </li>
                    <li><a href="about.html">About Us</a></li>
                    <li class="w3pages"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                                           aria-haspopup="true" aria-expanded="false">Pages <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="icons.html">Web Icons</a></li>
                            <li><a href="codes.html">Short Codes</a></li>
                        </ul>
                    </li>
                    <li><a href="faq.html" class="">FAQ's</a></li>
                    <li><a href="mail.html">Mail Us</a></li>
                </ul>
            </div>
        </nav>
    </div>
</div>
<!-- //navigation -->
<!-- banner -->
<div class="banner banner10">
    <div class="container">
        <h3>Laptop Store <span>Giá ưu đãi</span></h3>
    </div>
</div>
<!-- //banner -->
<!-- breadcrumbs -->
<div class="breadcrumb_dress">
    <div class="container">
        <ul>
            <li><a href="index.html"><span class="glyphicon glyphicon-home" aria-hidden="true"></span> Trang chủ</a> <i>/</i>
            </li>
            <li>Thông tin sản phẩm</li>
        </ul>
    </div>
</div>
<!-- //breadcrumbs -->
<!-- single -->
<div class="single">
    <div class="container">
        <div class="col-md-4 single-left">
            <div class="flexslider">
                <ul class="slides">
                    <li data-thumb="<%= product.getImg()%>">
                        <div class="thumb-image"><img src="<%= product.getImg()%>" data-imagezoom="true"
                                                      class="img-responsive" alt=""></div>
                    </li>
                    <li data-thumb="<%= product.getImg()%>">
                        <div class="thumb-image"><img src="<%= product.getImg()%>" data-imagezoom="true"
                                                      class="img-responsive" alt=""></div>
                    </li>
                    <li data-thumb="<%= product.getImg()%>">
                        <div class="thumb-image"><img src="<%= product.getImg()%>" data-imagezoom="true"
                                                      class="img-responsive" alt=""></div>
                    </li>
                </ul>
            </div>
            <!-- flexslider -->
            <script defer src="js/jquery.flexslider.js"></script>
            <link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen"/>
            <script>
                // Can also be used with $(document).ready()
                $(window).load(function () {
                    $('.flexslider').flexslider({
                        animation: "slide",
                        controlNav: "thumbnails"
                    });
                });
            </script>
            <!-- flexslider -->
            <!-- zooming-effect -->
            <script src="js/imagezoom.js"></script>
            <!-- //zooming-effect -->
        </div>
        <div class="col-md-8 single-right">


                <div class="rating1"><%= product.getName()%>
                </div>
                <span class="starRating">
						<input id="rating5" type="radio" name="rating" value="5">
						<label for="rating5">5</label>
						<input id="rating4" type="radio" name="rating" value="4">
						<label for="rating4">4</label>
						<input id="rating3" type="radio" name="rating" value="3" checked>
						<label for="rating3">3</label>
						<input id="rating2" type="radio" name="rating" value="2">
						<label for="rating2">2</label>
						<input id="rating1" type="radio" name="rating" value="1">
						<label for="rating1">1</label>
					</span>

            </div>
            <div class="description">

            </div>
            <div class="color-quality">
                <div class="color-quality-right-1">
                    <h5>Số lượng :</h5>
                    <div class="quantity">
                        <div class="quantity-select">
                            <div class="entry value-minus1">&nbsp;</div>
                            <div class="entry value1"><span>1</span></div>
                            <div class="entry value-plus1 active">&nbsp;</div>
                        </div>
                    </div>
                    <!--quantity-->
                    <script>
                        $('.value-plus1').on('click', function () {
                            var divUpd = $(this).parent().find('.value1'), newVal = parseInt(divUpd.text(), 10) + 1;
                            divUpd.text(newVal);
                        });

                        $('.value-minus1').on('click', function () {
                            var divUpd = $(this).parent().find('.value1'), newVal = parseInt(divUpd.text(), 10) - 1;
                            if (newVal >= 1) divUpd.text(newVal);
                        });
                    </script>
                    <!--quantity-->
                    <style>
                        .color-quality-left h5, .color-quality-right-1 h5, .occasional h5 {
                            text-transform: uppercase;
                            font-size: 1em;
                            color: #0064cf;
                        }
                    </style>

                </div>
                <div class="clearfix">
                    <div class="simpleCart_shelfItem">
                        <p class="discount"> Giảm giá: <%= product.getDiscount()%>% </p>
                        <p class="item_price"> Thành tiền: <%= product.getPrice()%> VNĐ</p>
                        <form action="#" method="post">
                            <input type="hidden" name="cmd" value="_cart">
                            <input type="hidden" name="add" value="1">
                            <input type="hidden" name="link" value="DetailProduct?id=<%= product.getId()%>"/>
                            <input type="hidden" name="id" value="<%= product.getId()%>">
                            <input type="hidden" name="w3ls_item" value="<%= product.getName()%>>">
                            <input type="hidden" name="amount" value="<%= product.getPrice()%>>">
                            <button type="submit" class="w3ls-cart">Thêm vào giỏ hàng</button>
                        </form>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>
<div class="KM-Info">
    <div class="Block2KQ-UD">
        <div class="KM-QT">
            <h3><i>Khuyến mãi và quà tặng</i></h3>
            <p>♦ Ba lô Gaming ASUS ROG 15.</p>
            <p>♦ Chuột Gaming ASUS ROG Impact.</p>
            <p>♦ Mousepad Gaming size XXL.</p>
            <p>♦ Túi chống sock.</p>
            <p>♦ Bộ vệ sinh 4 món.</p>
            <p>♦ Miễn phí vệ sinh laptop trong 2 năm.</p>
            <p>♦ Giảm giá 10% khi mua Gaming Gear.</p>
        </div>
        <div class="UudaiTG">
            <h3><i>Ưu đãi trả góp</i></h3>
            <p>♦ Trả trước chỉ từ 10% giá trị máy.</p>
            <p>♦ Lãi suất thấp nhất thi trường.</p>
            <p>♦ Kì hạn 9-24 tháng.</p>
            <p>Đăng kí ngay để nhận tư vấn từ chuyên viên.</p>
            <button class="buttonTG">Trả góp 0%<br>Đăng kí thủ tục đơn giản</button>
        </div>
    </div>
    <div class="NH-DV">
        <h3><i>Bảo hành và dịch vụ</i></h3>
        <p>♦ Bảo hành chính hãng 24 tháng tại các TTBH Asus trên toàn quốc. </p>
        <p>♦ Vệ sinh laptop miễn phí 2 năm.</p>
        <p>♦ Miễn phí vệ sinh laptop trong 2 năm.</p>
        <p>♦ Giảm giá 10% khi mua Gaming Gear.</p>
        <p>♦ Đổi mới lên đến 14 ngày nếu bị lỗi từ nhà sản xuất.</p>
        <p>♦ Miễn phí quẹt thẻ ATM, Visa, Master.</p>
        <p>♦ Trả góp 0% bằng thẻ tín dụng qua M-Pos. <a href="">Chi tiết</a>.</p>
        <p>♦ Chính sách đảm bảo hài lòng. <a href="">Chi tiết</a>.</p>
        <p>♦ Linh kiện nâng cấp bảo hành theo tiêu chuẩn nhà sản xuất.</p>
        <p>♦ Hỗ trợ cài đặt hệ điều hành và phần mềm.</p>
    </div>
</div>


<div class="additional_info">
    <div class="container">
        <div class="sap_tabs">
            <div id="horizontalTab1" style="display: block; width: 100%; margin: 0px;">
                <ul>
                    <li class="resp-tab-item" aria-controls="tab_item-0" role="tab"><span>Thông tin sản phẩm</span></li>
                    <div class="tab-content">
                        <div role="tabpanel" class="tab-pane fade active in" id="tabDescription" style="height: auto;">
                            <div class="content">
                                <h2><span
                                        style="font-size: 12pt; color: #000000;"><strong>Thông số <%= product.getName()%></strong></span>
                                </h2>
                                <table class="table table-bordered mce-item-table" id="tblGeneralAttribute"
                                       style="box-sizing: border-box; border-collapse: collapse; border-spacing: 0px; width: 100%; min-width: 500px; max-width: 100%; margin-bottom: 20px; border: 1px solid #eeeeee; color: #333333; font-family: Roboto, sans-serif; font-size: 13px; line-height: 20px; background-color: #ffffff;">
                                    <tbody style="box-sizing: border-box;">
                                    <tr class="row-info-1" style="box-sizing: border-box;">
                                        <td class="td-class-1">
                                            <span style="color: #000000;">Mô tả sản phẩm</span>
                                        </td>
                                        <td class="td-class-2">
                                            <span style="color: #000000;"><%= product.getDescription()%></span>
                                        </td>
                                    </tr>


                                    <%--                                    <tr class="row-info-2" style="box-sizing: border-box;">--%>
                                    <%--                                        <td class="td-class-1">--%>
                                    <%--                                            <span style="color: #000000;">RAM</span>--%>
                                    <%--                                        </td>--%>
                                    <%--                                        <td class="td-class-2">--%>
                                    <%--                                            <span style="color: #000000;">8GB DDR4 2933MHz (2x SO-DIMM socket, up to 32GB SDRAM)</span>--%>
                                    <%--                                        </td>--%>
                                    <%--                                    </tr>--%>


                                    <%--                                    <tr class="row-info-3" style="box-sizing: border-box;">--%>
                                    <%--                                        <td class="td-class-1">--%>
                                    <%--                                            <span style="color: #000000;">Ổ cứng</span>--%>
                                    <%--                                        </td>--%>
                                    <%--                                        <td class="td-class-2">--%>
                                    <%--                                            <span style="color: #000000;">512GB SSD M.2 PCIE&nbsp;(Còn trống 1 khe SSD M.2 PCIE và 1 khe&nbsp;2.5" SATA)</span>--%>
                                    <%--                                        </td>--%>
                                    <%--                                    </tr>--%>


                                    <%--                                    <tr class="row-info-4" style="box-sizing: border-box;">--%>
                                    <%--                                        <td class="td-class-1">--%>
                                    <%--                                            <span style="color: #000000;">Card đồ họa</span>--%>
                                    <%--                                        </td>--%>
                                    <%--                                        <td class="td-class-2">--%>
                                    <%--                                            <span style="color: #000000;">NVIDIA GeForce GTX 1650Ti 4GB GDDR6 + Intel UHD Graphics</span>--%>
                                    <%--                                        </td>--%>
                                    <%--                                    </tr>--%>


                                    <%--                                    <tr class="row-info-5" style="box-sizing: border-box;">--%>
                                    <%--                                        <td class="td-class-1">--%>
                                    <%--                                            <span style="color: #000000;">Màn hình</span>--%>
                                    <%--                                        </td>--%>
                                    <%--                                        <td class="td-class-2">--%>
                                    <%--                                            <span style="color: #000000;">15.6" FHD (1920 x 1080) IPS, 144Hz, Anti-Glare</span>--%>
                                    <%--                                        </td>--%>
                                    <%--                                    </tr>--%>


                                    <%--                                    <tr class="row-info-6" style="box-sizing: border-box;">--%>
                                    <%--                                        <td class="td-class-1">--%>
                                    <%--                                            <span style="color: #000000;">Cổng giao tiếp</span>--%>
                                    <%--                                        </td>--%>
                                    <%--                                        <td class="td-class-2">--%>
                                    <%--                                            <span style="color: rgb(0, 0, 0);">1x USB 3.2 Gen 2</span>--%>
                                    <%--                                            <br><span style="color: rgb(0, 0, 0);">2x USB 3.2 Gen 1</span>--%>
                                    <%--                                            <br><span style="color: rgb(0, 0, 0);">1x USB Type C</span>--%>
                                    <%--                                            <br><span style="color: rgb(0, 0, 0);">1x HDMI</span>--%>
                                    <%--                                            <br><span style="color: rgb(0, 0, 0);">1x RJ45</span>--%>
                                    <%--                                        </td>--%>
                                    <%--                                    </tr>--%>


                                    <%--                                    <tr class="row-info-7" style="box-sizing: border-box;"></tr>--%>
                                    <%--                                    <td class="td-class-1">--%>
                                    <%--                                        <span style="color: #000000;">Ổ quang</span>--%>
                                    <%--                                    </td>--%>
                                    <%--                                    <td class="td-class-2">--%>
                                    <%--                                        <span style="color: #000000;">None</span>--%>
                                    <%--                                    </td>--%>
                                    <%--                                    </tr>--%>


                                    <%--                                    <tr class="row-info-8" style="box-sizing: border-box;">--%>
                                    <%--                                        <td class="td-class-1">--%>
                                    <%--                                            <span style="color: #000000;">Audio</span>--%>
                                    <%--                                        </td>--%>
                                    <%--                                        <td class="td-class-2">--%>
                                    <%--                                            <span style="color: #000000;">Waves MaxxAudio®, Acer TrueHarmony™</span>--%>
                                    <%--                                        </td>--%>
                                    <%--                                    </tr>--%>


                                    <%--                                    <tr class="row-info-9" style="box-sizing: border-box;">--%>
                                    <%--                                        <td class="td-class-1">--%>
                                    <%--                                            <span style="color: #000000;">Đọc thẻ nhớ</span>--%>
                                    <%--                                        </td>--%>
                                    <%--                                        <td class="td-class-2">--%>
                                    <%--                                            <span style="color: #000000;">None</span>--%>
                                    <%--                                        </td>--%>
                                    <%--                                    </tr>--%>


                                    <%--                                    <tr class="row-info-10" style="box-sizing: border-box;">--%>
                                    <%--                                        <td class="td-class-1">--%>
                                    <%--                                            <span style="color: #000000;">Chuẩn LAN</span>--%>
                                    <%--                                        </td>--%>
                                    <%--                                        <td class="td-class-2">--%>
                                    <%--                                            <span style="color: #000000;">10/100/1000/Gigabits Base T</span>--%>
                                    <%--                                        </td>--%>
                                    <%--                                    </tr>--%>


                                    <%--                                    <tr class="row-info-11" style="box-sizing: border-box;">--%>
                                    <%--                                        <td class="td-class-1">--%>
                                    <%--                                            <span style="color: #000000;">Chuẩn WIFI</span>--%>
                                    <%--                                        </td>--%>
                                    <%--                                        <td class="td-class-2">--%>
                                    <%--                                            <span style="color: #000000;">802.11AX (2x2)</span>--%>
                                    <%--                                        </td>--%>
                                    <%--                                    </tr>--%>


                                    <%--                                    <tr class="row-info-12" style="box-sizing: border-box;">--%>
                                    <%--                                        <td class="td-class-1">--%>
                                    <%--                                            <span style="color: #000000;">Bluetooth</span>--%>
                                    <%--                                        </td>--%>
                                    <%--                                        <td class="td-class-2">--%>
                                    <%--                                            <span style="color: #000000;">v5.0</span>--%>
                                    <%--                                        </td>--%>
                                    <%--                                    </tr>--%>


                                    <%--                                    <tr class="row-info-13" style="box-sizing: border-box;">--%>
                                    <%--                                        <td class="td-class-1">--%>
                                    <%--                                            <span style="color: #000000;">Webcam</span>--%>
                                    <%--                                        </td>--%>
                                    <%--                                        <td class="td-class-2">--%>
                                    <%--                                            <span style="color: #000000;">HD Webcam</span>--%>
                                    <%--                                        </td>--%>
                                    <%--                                    </tr>--%>


                                    <%--                                    <tr class="row-info-14" style="box-sizing: border-box;">--%>
                                    <%--                                        <td  class="td-class-1">--%>
                                    <%--                                            <span style="color: #000000;">Hệ điều hành</span>--%>
                                    <%--                                        </td>--%>
                                    <%--                                        <td class="td-class-2">--%>
                                    <%--                                            <span style="color: #000000;"><span>Windows 10 Home</span></span></td>--%>
                                    <%--                                    </tr>--%>


                                    <%--                                    <tr class="row-info-15" style="box-sizing: border-box;">--%>
                                    <%--                                        <td class="td-class-1">--%>
                                    <%--                                            <span style="color: #000000;">Pin</span>--%>
                                    <%--                                        </td>--%>
                                    <%--                                        <td class="td-class-2">--%>
                                    <%--                                            <span style="color: #000000;">4 Cell 57.5WHr</span>--%>
                                    <%--                                        </td>--%>
                                    <%--                                    </tr>--%>


                                    <%--                                    <tr class="row-inf-16" style="box-sizing: border-box;">--%>
                                    <%--                                        <td class="td-class-1">--%>
                                    <%--                                            <span style="color: #000000;">Trọng lượng</span>--%>
                                    <%--                                        </td>--%>
                                    <%--                                        <td class="td-class-2">--%>
                                    <%--                                            <span style="color: #000000;">2.30 kg</span>--%>
                                    <%--                                        </td>--%>
                                    <%--                                    </tr>--%>


                                    <%--                                    <tr class="row-info-18" style="box-sizing: border-box;">--%>
                                    <%--                                        <td class="td-class-1" >--%>
                                    <%--                                            <span style="color: #000000;">Kích thước</span>--%>
                                    <%--                                        </td>--%>
                                    <%--                                        <td class="td-classs-2" >--%>
                                    <%--                                            <span style="color: #000000;">363.4 x 255 x 23.9 mm</span>--%>
                                    <%--                                        </td>--%>
                                    <%--                                    </tr>--%>

                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <style>
                        .td-class-2 {
                            box-sizing: border-box;
                            padding: 8px;
                            vertical-align: top;
                            border: 1px solid #eeeeee;
                            width: 78.4791%;
                        }

                        .td-class-1 {
                            box-sizing: border-box;
                            padding: 8px;
                            vertical-align: top;
                            border: 1px solid #eeeeee;
                            width: 18.5209%;
                            background-color: #f7f7f7 !important;
                        }

                    </style>
                    <li class="resp-tab-item" aria-controls="tab_item-1" role="tab"><span>Nhận xét</span></li>
                </ul>

                <div class="tab-2 additional_info_grid" aria-labelledby="tab_item-1">
                    <h4> Nhận xét</h4><%
                    List<Comments> comments = (List<Comments>) request.getAttribute("Comments");
                %>
                    <% for (Comments c : comments) {%>
                    <div class="additional_info_sub_grids">

                        <%--            Bắt đầu 1 comment--%>
                        <div class="col-xs-2 additional_info_sub_grid_left">
                            <img src="images/t1.png" alt=" " class="img-responsive"/>
                        </div>
                        <div class="col-xs-10 additional_info_sub_grid_right">
                            <div class="additional_info_sub_grid_rightl">
                                <a href="single.html"><%= c.getUserName()%>
                                </a>
                                <h5>Ngày 06 Tháng 10 Năm 2016.</h5>
                                <p><%= c.getContent()%>
                                </p>
                            </div>
                            <div class="additional_info_sub_grid_rightr">
                                <div class="rating">
                                    <div class="rating-left">
                                        <img src="images/star-.png" alt=" " class="img-responsive">
                                    </div>
                                    <div class="rating-left">
                                        <img src="images/star-.png" alt=" " class="img-responsive">
                                    </div>
                                    <div class="rating-left">
                                        <img src="images/star-.png" alt=" " class="img-responsive">
                                    </div>
                                    <div class="rating-left">
                                        <img src="images/star.png" alt=" " class="img-responsive">
                                    </div>
                                    <div class="rating-left">
                                        <img src="images/star.png" alt=" " class="img-responsive">
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <%--            Kết thúc 1 comment--%>
                        <%}%>

                        <div class="review_grids">
                            <h5></h5>
                            <form action="AddComment" method="get" enctype="text/plain">
                                <input type="text" name="id" class="hidden" value="<%= product.getId()%>">
                                <textarea name="Review" value="" placeholder="Thêm nhận xét của bạn vào" required></textarea>
                                <input type="submit" value="Bình luận">
                            </form>
                        </div>

                        <div class="clearfix"></div>
                    </div>

                </div>
            </div>
        </div>
        <script src="js/easyResponsiveTabs.js" type="text/javascript"></script>
        <script type="text/javascript">
            $(document).ready(function () {
                $('#horizontalTab1').easyResponsiveTabs({
                    type: 'default', //Types: default, vertical, accordion
                    width: 'auto', //auto or any width like 600px
                    fit: true   // 100% fit in a container
                });
            });
        </script>
    </div>
</div>
<!-- Related Products -->
<div class="w3l_related_products">
    <div class="container">
        <h3>Sản phẩm liên quan</h3>
        <ul id="flexiselDemo2">
            <li>
                <div class="w3l_related_products_grid">
                    <div class="agile_ecommerce_tab_left mobiles_grid">
                        <div class="hs-wrapper hs-wrapper3">
                            <img src="images/34.jpg" alt=" " class="img-responsive"/>
                            <img src="images/35.jpg" alt=" " class="img-responsive"/>
                            <img src="images/27.jpg" alt=" " class="img-responsive"/>
                            <img src="images/28.jpg" alt=" " class="img-responsive"/>
                            <img src="images/37.jpg" alt=" " class="img-responsive"/>
                            <div class="w3_hs_bottom">
                                <div class="flex_ecommerce">
                                    <a href="#" data-toggle="modal" data-target="#myModal6"><span
                                            class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
                                </div>
                            </div>
                        </div>
                        <h5><a href="single.html">Đồ chơi trẻ em</a></h5>
                        <div class="simpleCart_shelfItem">
                            <p class="flexisel_ecommerce_cart"><span>$150</span> <i class="item_price">$100</i></p>
                            <form action="#" method="post">
                                <input type="hidden" name="cmd" value="_cart">
                                <input type="hidden" name="add" value="1">
                                <input type="hidden" name="w3ls_item" value="Kid's Toy">
                                <input type="hidden" name="amount" value="100.00">
                                <button type="submit" class="w3ls-cart">Thêm vào giỏ hàng</button>
                            </form>
                        </div>
                    </div>
                </div>
            </li>

            <li>
                <div class="w3l_related_products_grid">
                    <div class="agile_ecommerce_tab_left mobiles_grid">
                        <div class="hs-wrapper hs-wrapper3">
                            <img src="images/36.jpg" alt=" " class="img-responsive"/>
                            <img src="images/32.jpg" alt=" " class="img-responsive"/>
                            <img src="images/33.jpg" alt=" " class="img-responsive"/>
                            <img src="images/32.jpg" alt=" " class="img-responsive"/>
                            <img src="images/36.jpg" alt=" " class="img-responsive"/>
                            <div class="w3_hs_bottom">
                                <div class="flex_ecommerce">
                                    <a href="#" data-toggle="modal" data-target="#myModal5"><span
                                            class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
                                </div>
                            </div>
                        </div>
                        <h5><a href="single.html">Máy hút bụi</a></h5>
                        <div class="simpleCart_shelfItem">
                            <p class="flexisel_ecommerce_cart"><span>$960</span> <i class="item_price">$920</i></p>
                            <form action="#" method="post">
                                <input type="hidden" name="cmd" value="_cart"/>
                                <input type="hidden" name="add" value="1"/>
                                <input type="hidden" name="w3ls_item" value="Vacuum Cleaner"/>
                                <input type="hidden" name="amount" value="920.00"/>
                                <button type="submit" class="w3ls-cart">Thêm vào giỏ hàng</button>
                            </form>
                        </div>
                    </div>
                </div>
            </li>
            <li>
                <div class="w3l_related_products_grid">
                    <div class="agile_ecommerce_tab_left mobiles_grid">
                        <div class="hs-wrapper hs-wrapper3">
                            <img src="images/38.jpg" alt=" " class="img-responsive"/>
                            <img src="images/37.jpg" alt=" " class="img-responsive"/>
                            <img src="images/27.jpg" alt=" " class="img-responsive"/>
                            <img src="images/28.jpg" alt=" " class="img-responsive"/>
                            <img src="images/37.jpg" alt=" " class="img-responsive"/>
                            <div class="w3_hs_bottom">
                                <div class="flex_ecommerce">
                                    <a href="#" data-toggle="modal" data-target="#myModal3"><span
                                            class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
                                </div>
                            </div>
                        </div>
                        <h5><a href="single.html">Lò vi sóng</a></h5>
                        <div class="simpleCart_shelfItem">
                            <p class="flexisel_ecommerce_cart"><span>$650</span> <i class="item_price">$645</i></p>
                            <form action="#" method="post">
                                <input type="hidden" name="cmd" value="_cart"/>
                                <input type="hidden" name="add" value="1"/>
                                <input type="hidden" name="w3ls_item" value="Microwave Oven"/>
                                <input type="hidden" name="amount" value="645.00"/>
                                <button type="submit" class="w3ls-cart">Thêm vào giỏ hàng</button>
                            </form>
                        </div>
                    </div>
                </div>
            </li>
            <li>
                <div class="w3l_related_products_grid">
                    <div class="agile_ecommerce_tab_left mobiles_grid">
                        <div class="hs-wrapper hs-wrapper3">
                            <img src="images/p3.jpg" alt=" " class="img-responsive"/>
                            <img src="images/p5.jpg" alt=" " class="img-responsive"/>
                            <img src="images/p4.jpg" alt=" " class="img-responsive"/>
                            <img src="images/p2.jpg" alt=" " class="img-responsive"/>
                            <img src="images/p1.jpg" alt=" " class="img-responsive"/>
                            <div class="w3_hs_bottom">
                                <div class="flex_ecommerce">
                                    <a href="#" data-toggle="modal" data-target="#myModal4"><span
                                            class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
                                </div>
                            </div>
                        </div>
                        <h5><a href="single.html">Máy nghe nhạc MP3</a></h5>
                        <div class="simpleCart_shelfItem">
                            <p><span>$60</span> <i class="item_price">$58</i></p>
                            <form action="#" method="post">
                                <input type="hidden" name="cmd" value="_cart"/>
                                <input type="hidden" name="add" value="1"/>
                                <input type="hidden" name="w3ls_item" value="Ultra MP3 Player"/>
                                <input type="hidden" name="amount" value="58.00"/>
                                <button type="submit" class="w3ls-cart">Thêm vào giỏ hàng</button>
                            </form>
                        </div>
                        <div class="mobiles_grid_pos">
                            <h6>New</h6>
                        </div>
                    </div>
                </div>
            </li>
        </ul>

        <script type="text/javascript">
            $(window).load(function () {
                $("#flexiselDemo2").flexisel({
                    visibleItems: 4,
                    animationSpeed: 1000,
                    autoPlay: true,
                    autoPlaySpeed: 3000,
                    pauseOnHover: true,
                    enableResponsiveBreakpoints: true,
                    responsiveBreakpoints: {
                        portrait: {
                            changePoint: 480,
                            visibleItems: 1
                        },
                        landscape: {
                            changePoint: 640,
                            visibleItems: 2
                        },
                        tablet: {
                            changePoint: 768,
                            visibleItems: 3
                        }
                    }
                });

            });
        </script>
        <script type="text/javascript" src="js/jquery.flexisel.js"></script>
    </div>
</div>
<!-- //Related Products -->
<div class="modal video-modal fade" id="myModal6" tabindex="-1" role="dialog" aria-labelledby="myModal6">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
                </button>
            </div>
            <section>
                <div class="modal-body">
                    <div class="col-md-5 modal_body_left">
                        <img src="images/34.jpg" alt=" " class="img-responsive"/>
                    </div>
                    <div class="col-md-7 modal_body_right">
                        <h4>Musical Kids Toy</h4>
                        <p>Ut enim ad minim veniam, quis nostrud
                            exercitation ullamco laboris nisi ut aliquip ex ea
                            commodo consequat.Duis aute irure dolor in
                            reprehenderit in voluptate velit esse cillum dolore
                            eu fugiat nulla pariatur. Excepteur sint occaecat
                            cupidatat non proident, sunt in culpa qui officia
                            deserunt mollit anim id est laborum.</p>
                        <div class="rating">
                            <div class="rating-left">
                                <img src="images/star-.png" alt=" " class="img-responsive"/>
                            </div>
                            <div class="rating-left">
                                <img src="images/star-.png" alt=" " class="img-responsive"/>
                            </div>
                            <div class="rating-left">
                                <img src="images/star-.png" alt=" " class="img-responsive"/>
                            </div>
                            <div class="rating-left">
                                <img src="images/star.png" alt=" " class="img-responsive"/>
                            </div>
                            <div class="rating-left">
                                <img src="images/star.png" alt=" " class="img-responsive"/>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="modal_body_right_cart simpleCart_shelfItem">
                            <p><span>$150</span> <i class="item_price">$100</i></p>
                            <form action="#" method="post">
                                <input type="hidden" name="cmd" value="_cart">
                                <input type="hidden" name="add" value="1">
                                <input type="hidden" name="w3ls_item" value="Kids Toy">
                                <input type="hidden" name="amount" value="100.00">
                                <button type="submit" class="w3ls-cart">Add to cart</button>
                            </form>
                        </div>
                        <h5>Color</h5>
                        <div class="color-quality">
                            <ul>
                                <li><a href="#"><span></span></a></li>
                                <li><a href="#" class="brown"><span></span></a></li>
                                <li><a href="#" class="purple"><span></span></a></li>
                                <li><a href="#" class="gray"><span></span></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </section>
        </div>
    </div>
</div>
<div class="modal video-modal fade" id="myModal5" tabindex="-1" role="dialog" aria-labelledby="myModal5">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                        aria-hidden="true">×</span></button>
            </div>
            <section>
                <div class="modal-body">
                    <div class="col-md-5 modal_body_left">
                        <img src="images/36.jpg" alt=" " class="img-responsive">
                    </div>
                    <div class="col-md-7 modal_body_right">
                        <h4>Dry Vacuum Cleaner</h4>
                        <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
                            commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum
                            dolore eu fugiat nulla pariatur. Excepteur sint occaecat
                            cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                        <div class="rating">
                            <div class="rating-left">
                                <img src="images/star-.png" alt=" " class="img-responsive">
                            </div>
                            <div class="rating-left">
                                <img src="images/star-.png" alt=" " class="img-responsive">
                            </div>
                            <div class="rating-left">
                                <img src="images/star-.png" alt=" " class="img-responsive">
                            </div>
                            <div class="rating-left">
                                <img src="images/star.png" alt=" " class="img-responsive">
                            </div>
                            <div class="rating-left">
                                <img src="images/star.png" alt=" " class="img-responsive">
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="modal_body_right_cart simpleCart_shelfItem">
                            <p><span>$960</span> <i class="item_price">$920</i></p>
                            <form action="#" method="post">
                                <input type="hidden" name="cmd" value="_cart">
                                <input type="hidden" name="add" value="1">
                                <input type="hidden" name="w3ls_item" value="Vacuum Cleaner">
                                <input type="hidden" name="amount" value="920.00">
                                <button type="submit" class="w3ls-cart">Add to cart</button>
                            </form>
                        </div>
                        <h5>Color</h5>
                        <div class="color-quality">
                            <ul>
                                <li><a href="#"><span></span></a></li>
                                <li><a href="#" class="brown"><span></span></a></li>
                                <li><a href="#" class="purple"><span></span></a></li>
                                <li><a href="#" class="gray"><span></span></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </section>
        </div>
    </div>
</div>
<div class="modal video-modal fade" id="myModal4" tabindex="-1" role="dialog" aria-labelledby="myModal4">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
                </button>
            </div>
            <section>
                <div class="modal-body">
                    <div class="col-md-5 modal_body_left">
                        <img src="images/p3.jpg" alt=" " class="img-responsive"/>
                    </div>
                    <div class="col-md-7 modal_body_right">
                        <h4>Music MP3 Player </h4>
                        <p>Ut enim ad minim veniam, quis nostrud
                            exercitation ullamco laboris nisi ut aliquip ex ea
                            commodo consequat.Duis aute irure dolor in
                            reprehenderit in voluptate velit esse cillum dolore
                            eu fugiat nulla pariatur. Excepteur sint occaecat
                            cupidatat non proident, sunt in culpa qui officia
                            deserunt mollit anim id est laborum.</p>
                        <div class="rating">
                            <div class="rating-left">
                                <img src="images/star-.png" alt=" " class="img-responsive"/>
                            </div>
                            <div class="rating-left">
                                <img src="images/star-.png" alt=" " class="img-responsive"/>
                            </div>
                            <div class="rating-left">
                                <img src="images/star-.png" alt=" " class="img-responsive"/>
                            </div>
                            <div class="rating-left">
                                <img src="images/star-.png" alt=" " class="img-responsive"/>
                            </div>
                            <div class="rating-left">
                                <img src="images/star.png" alt=" " class="img-responsive"/>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="modal_body_right_cart simpleCart_shelfItem">
                            <p><span>$60</span> <i class="item_price">$58</i></p>
                            <form action="#" method="post">
                                <input type="hidden" name="cmd" value="_cart"/>
                                <input type="hidden" name="add" value="1"/>
                                <input type="hidden" name="w3ls_item" value="MP3 Player"/>
                                <input type="hidden" name="amount" value=" $58.00"/>
                                <button type="submit" class="w3ls-cart">Add to cart</button>
                            </form>
                        </div>
                        <h5>Color</h5>
                        <div class="color-quality">
                            <ul>
                                <li><a href="#"><span></span></a></li>
                                <li><a href="#" class="brown"><span></span></a></li>
                                <li><a href="#" class="purple"><span></span></a></li>
                                <li><a href="#" class="gray"><span></span></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </section>
        </div>
    </div>
</div>
<div class="modal video-modal fade" id="myModal3" tabindex="-1" role="dialog" aria-labelledby="myModal3">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                        aria-hidden="true">×</span></button>
            </div>
            <section>
                <div class="modal-body">
                    <div class="col-md-5 modal_body_left">
                        <img src="images/38.jpg" alt=" " class="img-responsive">
                    </div>
                    <div class="col-md-7 modal_body_right">
                        <h4>Kitchen &amp; Dining Accessories</h4>
                        <p>Ut enim ad minim veniam, quis nostrud
                            exercitation ullamco laboris nisi ut aliquip ex ea
                            commodo consequat.Duis aute irure dolor in
                            reprehenderit in voluptate velit esse cillum dolore
                            eu fugiat nulla pariatur. Excepteur sint occaecat
                            cupidatat non proident, sunt in culpa qui officia
                            deserunt mollit anim id est laborum.</p>
                        <div class="rating">
                            <div class="rating-left">
                                <img src="images/star-.png" alt=" " class="img-responsive">
                            </div>
                            <div class="rating-left">
                                <img src="images/star-.png" alt=" " class="img-responsive">
                            </div>
                            <div class="rating-left">
                                <img src="images/star-.png" alt=" " class="img-responsive">
                            </div>
                            <div class="rating-left">
                                <img src="images/star-.png" alt=" " class="img-responsive">
                            </div>
                            <div class="rating-left">
                                <img src="images/star.png" alt=" " class="img-responsive">
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="modal_body_right_cart simpleCart_shelfItem">
                            <p><span>$650</span> <i class="item_price">$645</i></p>
                            <form action="#" method="post">
                                <input type="hidden" name="cmd" value="_cart">
                                <input type="hidden" name="add" value="1">
                                <input type="hidden" name="w3ls_item" value="Microwave Oven">
                                <input type="hidden" name="amount" value="645.00">
                                <button type="submit" class="w3ls-cart">Add to cart</button>
                            </form>
                        </div>
                        <h5>Color</h5>
                        <div class="color-quality">
                            <ul>
                                <li><a href="#"><span></span></a></li>
                                <li><a href="#" class="brown"><span></span></a></li>
                                <li><a href="#" class="purple"><span></span></a></li>
                                <li><a href="#" class="gray"><span></span></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </section>
        </div>
    </div>
</div>
<!-- //single -->
<!-- newsletter -->
<div class="newsletter">
    <div class="container">
        <div class="col-md-6 w3agile_newsletter_left">
            <h3>Nhận thông báo</h3>
            <p>Về khuyến mãi và các ưu đãi sắp tới của chúng tôi.</p>
        </div>
        <div class="col-md-6 w3agile_newsletter_right">
            <form action="#" method="post">
                <input type="email" name="Email" placeholder="Email" required="">
                <input type="submit" value=""/>
            </form>
        </div>
        <div class="clearfix"></div>
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
                    <li><i class="glyphicon glyphicon-map-marker" aria-hidden="true"></i>Trường Đại Học Nông Lâm <span>Kp6, P.Linh Trung, Q.Thủ Đức, TP. Hồ Chí Minh</span>
                    </li>
                    <li><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i><a
                            href="mailto:info@example.com">18130000@st.hcmuaf.edu.vn</a></li>
                    <li><i class="glyphicon glyphicon-earphone" aria-hidden="true"></i>+89 999 999 999</li>
                </ul>
            </div>
            <div class="col-md-3 w3_footer_grid">
                <h3>Thông tin</h3>
                <ul class="info">
                    <li><a href="about.html">Về chúng tôi</a></li>
                    <li><a href="mail.html">Liên hệ chúng tôi</a></li>
                    <li><a href="codes.html">Mã khuyến mãi</a></li>
                    <li><a href="faq.html">FAQ's</a></li>
                    <li><a href="products.html">Sản phẩm đăc biệt</a></li>
                </ul>
            </div>
            <div class="col-md-3 w3_footer_grid">
                <h3>Danh mục</h3>
                <ul class="info">
                    <li><a href="products.html">Tablets</a></li>
                    <li><a href="products1.html">Laptops Gaming</a></li>
                    <li><a href="products.html">Laptops Office</a></li>
                    <li><a href="products1.html">Laptops Studying</a></li>
                </ul>
            </div>
            <div class="col-md-3 w3_footer_grid">
                <h3>Profile</h3>
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
            <p>&copy; 2020 Laptop Store. All rights reserved | Design by <a href="http://w3layouts.com/">We</a></p>
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
<%
    }%>
</html>
