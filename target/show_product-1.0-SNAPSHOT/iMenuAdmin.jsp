<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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

<% String namePage = (String) request.getAttribute("NamePage");%>
<!-- menu admin -->
<div class="w3ls_mobiles_grid_left_grid">
    <h3>Quản lý</h3>
    <div class="w3ls_mobiles_grid_left_grid_sub">
        <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
            <div class="panel panel-default">
                <div class="panel-heading" role="tab" id="headingOne">
                    <h4 class="panel-title asd">
                        <a class="pa_italic" href="AdminOrder">
                            <% if (namePage.equalsIgnoreCase("orderAdmin")) {%>
                            <span class="glyphicon glyphicon-minus" aria-hidden="true"></span><i
                                class="glyphicon glyphicon-minus" aria-hidden="true">
                        </i><%} else {%>
                            <span class="glyphicon glyphicon-plus" aria-hidden="true"></span><i
                                class="glyphicon glyphicon-plus" aria-hidden="true"></i>
                            <%}%>
                            Đơn hàng
                        </a>
                    </h4>
                </div>
            </div>
            <div class="panel panel-default">
                <div class="panel-heading" role="tab" id="headingTwo">
                    <h4 class="panel-title asd">
                        <a class="pa_italic collapsed" href="AdminProduct">
                            <% if (namePage.equalsIgnoreCase("productAdmin")) {%>
                            <span class="glyphicon glyphicon-minus" aria-hidden="true"></span><i
                                class="glyphicon glyphicon-minus" aria-hidden="true">
                        </i><%} else {%>
                            <span class="glyphicon glyphicon-plus" aria-hidden="true"></span><i
                                class="glyphicon glyphicon-plus" aria-hidden="true"></i>
                            <%}%>Sản phẩm
                        </a>
                    </h4>
                </div>
            </div>
            <div class="panel panel-default">
                <div class="panel-heading" role="tab" id="heading3">
                    <h4 class="panel-title asd">
                        <a class="pa_italic" href="AdminStaff">
                            <% if (namePage.equalsIgnoreCase("staffAdmin")) {%>
                            <span class="glyphicon glyphicon-minus" aria-hidden="true"></span><i
                                class="glyphicon glyphicon-minus" aria-hidden="true">
                        </i><%} else {%>
                            <span class="glyphicon glyphicon-plus" aria-hidden="true"></span><i
                                class="glyphicon glyphicon-plus" aria-hidden="true"></i>
                            <%}%>Nhân viên
                        </a>
                    </h4>
                </div>
            </div>
            <div class="panel panel-default">
                <div class="panel-heading" role="tab" id="heading4">
                    <h4 class="panel-title asd">
                        <a class="pa_italic" href="AdminCustomer">
                            <% if (namePage.equalsIgnoreCase("customerAdmin")) {%>
                            <span class="glyphicon glyphicon-minus" aria-hidden="true"></span><i
                                class="glyphicon glyphicon-minus" aria-hidden="true">
                        </i><%} else {%>
                            <span class="glyphicon glyphicon-plus" aria-hidden="true"></span><i
                                class="glyphicon glyphicon-plus" aria-hidden="true"></i>
                            <%}%>Khách hàng
                        </a>
                    </h4>
                </div>
            </div>
            <div class="panel panel-default">
                <div class="panel-heading" role="tab" id="heading5">
                    <h4 class="panel-title asd">
                        <a class="pa_italic" href="AdminContact">
                            <% if (namePage.equalsIgnoreCase("contactAdmin")) {%>
                            <span class="glyphicon glyphicon-minus" aria-hidden="true"></span><i
                                class="glyphicon glyphicon-minus" aria-hidden="true">
                        </i><%} else {%>
                            <span class="glyphicon glyphicon-plus" aria-hidden="true"></span><i
                                class="glyphicon glyphicon-plus" aria-hidden="true"></i>
                            <%}%>Liên hệ
                        </a>
                    </h4>
                </div>
            </div>
            <div class="panel panel-default">
                <div class="panel-heading" role="tab" id="heading6">
                    <h4 class="panel-title asd">
                        <a class="pa_italic" href="AdminSupplier">
                            <% if (namePage.equalsIgnoreCase("supplierAdmin")) {%>
                            <span class="glyphicon glyphicon-minus" aria-hidden="true"></span><i
                                class="glyphicon glyphicon-minus" aria-hidden="true">
                        </i><%} else {%>
                            <span class="glyphicon glyphicon-plus" aria-hidden="true"></span><i
                                class="glyphicon glyphicon-plus" aria-hidden="true"></i>
                            <%}%>Nhà sản xuất
                        </a>
                    </h4>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- //menu admin -->
</body>
