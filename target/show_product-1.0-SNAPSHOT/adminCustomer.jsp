<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
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
<!-- for bootstrap working -->
<script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
<!-- //for bootstrap working -->
<!-- header modal -->
<%@include file="iheaderModal.jsp"%>
<!-- header modal -->
<!-- header -->
<%@include file="iheader.jsp"%>
<!-- //header -->
<!-- navigation -->
<%@include file="inavigation.jsp"%>
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
            <li><a href="index.html"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>Home</a>
                <i>/</i>
            </li>
            <li>Admin Control</li>
        </ul>
    </div>
</div>
<!-- //breadcrumbs -->
<!-- body -->
<!-- admin -->
<div class="mobiles">
    <div class="container" style="margin: 0 !important;">
        <div class="w3ls_mobiles_grids">
            <div class="col-md-4 w3ls_mobiles_grid_left">
                <%@include file="iMenuAdmin.jsp"%>
            </div>
        </div>

        <div class="content-admin collapse in" id="admin-product">
            <div class="all-product">
                <ul class="nav nav-tabs" id="myProductTab">
                    <li class="active"><a data-toggle="tab" href="#all-staff">Tất cả</a></li>
                    <li><a data-toggle="tab" href="#activeCustomer">Đang hoạt động</a></li>
                    <li><a data-toggle="tab" href="#unactiveCustomer">Ngưng hoạt động</a></li>
                </ul>
                <div class="search-product search-order">
                    <form action="" method="POST">
                        <label>
                            Tìm kiếm khách hàng:
                            <input type="search" name="search" class="search-box"
                                   placeholder="Theo mã khách hàng...">
                            <input type="submit" value="Tìm" class="search-btn">
                        </label>
                        <!-- <button type="button" data-toggle="modal" data-target="#add-more-staff"
                            rel="noopener noreferrer" id="add-staff">Thêm
                            nhân viên</button> -->
                    </form>
                </div>
                <div class="header-tab">
                    <ul class="col" style="list-style-type: none;">
                        <li class="col-md-1">ID</li>
                        <li class="col-md-3">Tên</li>
                        <li class="col-md-3">Mail</li>
                        <li class="col-md-2">SĐT</li>
                        <li class="col-md-1">TT</li>
                        <li class="col-md-2" style="text-align: right;">Thao tác</li>
                    </ul>
                </div>
                <div class="tab-content" id="content-order">
                    <div id="all-staff" class="tab-pane fade in active">

                        <c:set var="count" value="${count + 1}" scope="page"/>
                        <c:forEach items="${listCus}" var="l">

                            <!-- start khach hang -->
                            <div class="staff-info">
                                <p class="id-staff col-sm-1">${l.id}</p>
                                <p class="name-staff col-sm-3">${l.name}</p>
                                <p class="mail-staff col-sm-3">${l.mail}</p>
                                <p class="phone-staff col-sm-2">${l.phone}</p>
                                <p class="status-staff col-sm-1">${l.status}</p>
                                <div class="action-staff col-sm-2">
                                    <button type="button" class="btn my-blue btn-sm" data-toggle="modal"
                                            data-target="#user<c:set/>">
                                        <span class="glyphicon glyphicon-cog"></span>
                                    </button>
                                    <button type="button" class="btn my-blue btn-sm" data-toggle="modal"
                                            data-target="#delUser1">
                                        <span class="glyphicon glyphicon-trash"></span>
                                    </button>
                                </div>
                            </div>
                            <!-- end khach hang -->

                            <!-- Modal Modify-->
                            <div id="user<c:set/>" class="modal fade" role="dialog">
                                <div class="modal-dialog modal-lg">

                                    <!-- Modal content-->
                                    <div class="modal-content" class="config-staff-div">
                                        <form action="" name="form-add-staff" method="post">
                                            <div class="modal-header">
                                                <button type="button" class="close"
                                                        data-dismiss="modal">&times;
                                                </button>
                                                <h4 class="modal-title">Sửa thông tin khách hàng</h4>
                                            </div>
                                            <div class="modal-body">
                                                <label>
                                                    Tên:
                                                    <input type="text" name="name-staff"
                                                           value="${l.name}">
                                                    <div id="error-name-c" class="error-validation"></div>
                                                </label>
                                                <label>
                                                    Email:
                                                    <input type="text" name="mail-staff"
                                                           value="${l.mail}">
                                                    <div id="error-mail-c" class="error-validation"></div>
                                                </label>
                                                <label>
                                                    Sđt:
                                                    <input type="text" name="phone-staff"
                                                           value="${l.phone}">
                                                    <div id="error-phone-c" class="error-validation"></div>
                                                </label>
                                                <label for="status-staff-c">
                                                    Trạng thái:
                                                    <select name="status-staff" id="status-staff-c">
                                                        <option value="Active">Hoạt động</option>
                                                        <option value="Un-active">Ngưng hoạt động</option>
                                                    </select>
                                                </label>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="submit" class="btn my-blue"
                                                        onclick="return checkInfoConfig()">Sửa
                                                </button>
                                                <button type="button" class="btn btn-default"
                                                        data-dismiss="modal">Đóng
                                                </button>
                                            </div>
                                        </form>
                                    </div>
                                </div>

                            </div>
                            <!-- Modal Delete-->
                            <div id="delUser<c:set/>" class="modal fade" role="dialog">
                                <div class="modal-dialog modal-lg">

                                    <!-- Modal content-->
                                    <div class="modal-content" class="config-staff-div">
                                        <div class="modal-header">
                                            <button type="button" class="close"
                                                    data-dismiss="modal">&times;
                                            </button>
                                            <h4 class="modal-title">Xóa khách hàng</h4>
                                        </div>
                                        <div class="modal-body">
                                            <h5 class="center">Bạn sẽ xóa khách hàng ID là: ${l.id}</h5>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="submit" class="btn my-blue"
                                                    onclick="">Xóa
                                            </button>
                                            <button type="button" class="btn btn-default"
                                                    data-dismiss="modal">Đóng
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                    <div id="activeCustomer" class="tab-pane fade">
                        <c:set var="count1" value="${count1 + 1}" scope="page"/>
                        <c:forEach items="${listAc}" var="l">

                            <!-- start khach hang -->
                            <div class="staff-info">
                                <p class="id-staff col-sm-1">${l.id}</p>
                                <p class="name-staff col-sm-3">${l.name}</p>
                                <p class="mail-staff col-sm-3">${l.mail}</p>
                                <p class="phone-staff col-sm-2">${l.phone}</p>
                                <p class="status-staff col-sm-1">${l.status}</p>
                                <div class="action-staff col-sm-2">
                                    <button type="button" class="btn my-blue btn-sm" data-toggle="modal"
                                            data-target="#user<c:set/>">
                                        <span class="glyphicon glyphicon-cog"></span>
                                    </button>
                                    <button type="button" class="btn my-blue btn-sm" data-toggle="modal"
                                            data-target="#delUser1">
                                        <span class="glyphicon glyphicon-trash"></span>
                                    </button>
                                </div>
                            </div>
                            <!-- end khach hang -->

                            <!-- Modal Modify-->
                            <div id="user<c:set/>" class="modal fade" role="dialog">
                                <div class="modal-dialog modal-lg">

                                    <!-- Modal content-->
                                    <div class="modal-content" class="config-staff-div">
                                        <form action="" name="form-add-staff" method="post">
                                            <div class="modal-header">
                                                <button type="button" class="close"
                                                        data-dismiss="modal">&times;
                                                </button>
                                                <h4 class="modal-title">Sửa thông tin khách hàng</h4>
                                            </div>
                                            <div class="modal-body">
                                                <label>
                                                    Tên:
                                                    <input type="text" name="name-staff"
                                                           value="${l.name}">
<%--                                                    <div id="error-name-c" class="error-validation"></div>--%>
                                                </label>
                                                <label>
                                                    Email:
                                                    <input type="text" name="mail-staff"
                                                           value="${l.mail}">
<%--                                                    <div id="error-mail-c" class="error-validation"></div>--%>
                                                </label>
                                                <label>
                                                    Sđt:
                                                    <input type="text" name="phone-staff"
                                                           value="${l.phone}">
<%--                                                    <div id="error-phone-c" class="error-validation"></div>--%>
                                                </label>
                                                <label for="status-staff-c">
                                                    Trạng thái:
                                                    <select name="status-staff">
                                                        <option value="Active">Hoạt động</option>
                                                        <option value="Un-active">Ngưng hoạt động</option>
                                                    </select>
                                                </label>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="submit" class="btn my-blue"
                                                        onclick="return checkInfoConfig()">Sửa
                                                </button>
                                                <button type="button" class="btn btn-default"
                                                        data-dismiss="modal">Đóng
                                                </button>
                                            </div>
                                        </form>
                                    </div>
                                </div>

                            </div>
                            <!-- Modal Delete-->
                            <div id="delUser<c:set/>" class="modal fade" role="dialog">
                                <div class="modal-dialog modal-lg">

                                    <!-- Modal content-->
                                    <div class="modal-content" class="config-staff-div">
                                        <div class="modal-header">
                                            <button type="button" class="close"
                                                    data-dismiss="modal">&times;
                                            </button>
                                            <h4 class="modal-title">Xóa khách hàng</h4>
                                        </div>
                                        <div class="modal-body">
                                            <h5 class="center">Bạn sẽ xóa khách hàng ID là: ${l.id}</h5>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="submit" class="btn my-blue"
                                                    onclick="">Xóa
                                            </button>
                                            <button type="button" class="btn btn-default"
                                                    data-dismiss="modal">Đóng
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                    <div id="unactiveCustomer" class="tab-pane fade">
                        <h3>Un-active Customer</h3>
                        <p>Some content in menu 1.</p>
                    </div>
                </div>
            </div>
            <!-- end all order -->
        </div>
        <!-- end content-admin -->
    </div>

</div>

</div>
<!-- end body -->

<!-- div -->
<div style="background-color: #0064cf; width: 100%; height: 60px;"></div>
<!-- end div -->
<!-- footer -->
<%@include file="ifooter.jsp"%>
<!-- //footer -->
<script>
    function checkInfoConfig() {
        {
            var name = document.getElementById("name-staff-c").value;
            var mail = document.getElementById("mail-staff-c").value;
            var phone = document.getElementById("phone-staff-c").value;

            var check_mail1 = mail.indexOf("@");
            var check_mail2 = mail.lastIndexOf(".");
            var f_name = "", f_mail = "", f_phone = "";
            if (check_mail1 < 1 || check_mail2 < (check_mail1 + 2)
                || (check_mail2 + 2) >= x.length) {
                f_mail = "Mail không hợp lệ";
            }
            // if (phonenumber(phone)) {
            // 	f_phone = "Số điện thoại không hợp lệ";
            // }
            if (name == "") {
                f_name = "Vui lòng nhập dữ liệu";
            }
            if (mail == "") {
                f_mail = "Vui lòng nhập dữ liệu";
            }
            if (phone == "") {
                f_phone = "Vui lòng nhập dữ liệu";
            }

            if (f_name == "" && f_mail == "" && f_phone == "") {
                return true;
            } else {
                document.getElementById("error-name-c").innerHTML = f_name;
                document.getElementById("error-mail-c").innerHTML = f_mail;
                document.getElementById("error-phone-c").innerHTML = f_phone;
                return false;
            }
        }
    }
</script>
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
</body>

</html>