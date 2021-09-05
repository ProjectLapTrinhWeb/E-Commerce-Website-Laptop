<%@ page import="vn.edu.nlu.Beans.User" %>
<%@ page import="vn.edu.nlu.Beans.Supplier" %>
<%@ page import="java.util.List" %>
<%@ page import="vn.edu.nlu.Entity.SupplierEntity" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
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
    <link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic'
          rel='stylesheet' type='text/css'>
    <!-- //web fonts -->
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
<!-- navigation -->
<div class="navigation">
    <div class="container">
        <nav class="navbar navbar-default">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header nav_2">
                <button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse"
                        data-target="#bs-megadropdown-tabs">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>
            <div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
                <ul class="nav navbar-nav">
                    <li><a href="/WebLaptop/Home" class="act">Trang chủ</a></li>
                    <!-- Mega Menu -->
                    <li class="dropdown">
                        <a href="products" class="dropdown-toggle" data-toggle="dropdown">Sản phẩm<b
                                class="caret"></b></a>
                        <ul class="dropdown-menu multi-column columns-3">
                            <div class="row">
                                <div class="col-sm-3">
                                    <ul class="multi-column-dropdown">
                                        <h6><a href="LoadProducts">Laptop</a></h6>
                                        <li><a href="LaptopGaming">Laptop Gaming</a></li>
                                        <li><a href="LaptopOffice">Laptop Văn Phòng</a></li>
                                        <li><a href="LaptopGraphic">Laptop Đồ Họa<span>New</span></a></li>
                                        <%--                                        <li><a href="products.html">Macbook<span>New</span></a></li>--%>
                                    </ul>
                                </div>
                                <div class="col-sm-3">
                                    <ul class="multi-column-dropdown">
                                        <h6><a href="products1.html">Phụ Kiện</a></h6>
                                        <li><a href="products1.html">Bàn phím</a></li>
                                        <li><a href="products1.html">Chuột</a></li>
                                        <li><a href="products1.html">Loa<span>New</span></a></li>
                                        <li><a href="products1.html">Tai nghe</a></li>
                                    </ul>
                                </div>
                                <div class="col-sm-3">
                                    <ul class="multi-column-dropdown">
                                        <h6>Thương Hiệu</h6>
                                        <%--                                        huynhaiquoc--%>
                                        <%
                                            List<Supplier> listSuppliers = SupplierEntity.getAllSupplier();
                                            for (Supplier s : listSuppliers
                                            ) {
                                        %>
                                        <li><a href="ThuongHieu?supplier=<%= s.getName()%>"><%= s.getName()%>
                                        </a></li>
                                        <%}%>
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
                    <li><a href="template/about.html">About Us</a></li>
                    <li><a href="template/faq.html" class="">FAQ's</a></li>
                    <li><a href="template/mail.html">Mail Us</a></li>

                    <li class="w3pages"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                                           aria-haspopup="true" aria-expanded="false">Account <span
                            class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <% User user1 = (User) session.getAttribute("User");
                                if (user1 != null) {%>
                            <li>
                                <button type="button" class="btn-default btn-user" disabled><%= user1.getUserName()%>
                                </button>
                            </li>
                            <li>
                                <form action="Info" method="post">
                                    <button type="submit" class="btn btn-outline-info btn-user"><span
                                            class="glyphicon glyphicon-user" aria-hidden="true"
                                            style="margin-right: 20px;"></span>Info
                                    </button>
                                </form>
                            </li>
                            <li>
                                <form action="Logout" method="post">
                                    <button type="submit" class="btn btn-outline-danger btn-user"><span
                                            class="glyphicon glyphicon-log-out" aria-hidden="true"
                                            style="margin-right: 20px;"></span>Logout
                                    </button>
                                </form>
                            </li>
                        </ul>
                            <%
                                }
                            %>
                </ul>
                </li>

                </ul>
            </div>
        </nav>
    </div>
</div>
<!-- //navigation -->
</body>
</html>