<%@ page import="vn.edu.nlu.Beans.Staff" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Admin Staff | Laptop Store</title>
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
<%@include file="iheaderModal.jsp" %>
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
<%-- status add--%>
<% String status = (String) request.getAttribute("StatusAdd");
    if (status != null || !status.equals("")) {
%>
<h1><%= status%>
</h1>
<%
    }
%>
<%-- status add--%>
<!-- admin -->
<div class="mobiles">
    <div class="container" style="margin: 0 !important;">
        <div class="w3ls_mobiles_grids">
            <div class="col-md-4 w3ls_mobiles_grid_left">
                <%@include file="iMenuAdmin.jsp" %>
            </div>
        </div>

        <div class="content-admin collapse in" id="admin-product">
            <div class="all-product">
                <ul class="nav nav-tabs" id="myProductTab">
                    <li class="active"><a data-toggle="tab" href="#all-staff">Tất cả</a></li>
                    <li><a data-toggle="tab" href="#activeStaff">Đang hoạt động</a></li>
                    <li><a data-toggle="tab" href="#unactiveStaff">Ngưng hoạt động</a></li>
                </ul>
                <div class="search-product search-order">
                    <form action="SearchAdminStaff" method="POST">
                        <label>
                            Tìm kiếm nhân viên:
                            <input type="search" name="search" class="search-box"
                                   placeholder="Theo tên nhân viên...">
                            <input type="submit" value="Tìm" class="search-btn">
                        </label>
                    </form>
                    <button type="button" data-toggle="modal" data-target="#add-more-staff"
                            rel="noopener noreferrer" id="add-staff">Thêm
                        nhân viên
                    </button>
                    <!-- modal -->
                    <div id="add-more-staff" class="modal fade" role="dialog">
                        <div class="modal-dialog">

                            <!-- Modal content-->
                            <div class="modal-content" id="add-staff-div">
                                <div class="modal-header">
                                    <button type="button" class="close"
                                            data-dismiss="modal">&times;
                                    </button>
                                    <h4 class="modal-title">Thêm nhân viên</h4>
                                </div>
                                <form method="get" action="AddStaff">
                                    <div class="modal-body">
                                        <label>
                                            Họ tên:
                                            <input type="text" name="name"
                                                   placeholder="Tên nhân viên..." required>
                                        </label>

                                        <label>
                                            Tên tài khoản:
                                            <input type="text" name="userName"
                                                   placeholder="Tên tài khoản..." minlength="6" required>
                                        </label>

                                        <label>
                                            Mật khẩu:
                                            <input type="text" name="password" minlength="6" id="password-field"
                                                   placeholder="Mật khẩu..." required>
                                        </label>

                                        <label>
                                            Email:
                                            <input type="mail" name="mail"
                                                   placeholder="Email..." minlength="11" required>
                                        </label>

                                        <label>
                                            Sđt:
                                            <input type="phone" name="phone" id="phone"
                                                   placeholder="Số điện thoại..." minlength="10" maxlength="13"
                                                   required>
                                        </label>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="submit" class="btn my-blue">Thêm nhân viên
                                        </button>
                                        <button type="button" class="btn btn-default"
                                                data-dismiss="modal">Đóng
                                        </button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    </form>
                </div>
                <div class="tab-content">
                    <div id="all-staff" class="tab-pane fade in active">
                        <div class="order-tab">
                            <table class="table table-bordered header-tab">
                                <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>User Name</th>
                                    <th>Name</th>
                                    <th>Image</th>
                                    <th>Mail</th>
                                    <th>Phone</th>
                                    <th>Role</th>
                                    <th>Status</th>
                                    <th>Actions</th>
                                </tr>
                                </thead>
                                <tbody>
                                <% List<Staff> list = (List<Staff>) request.getAttribute("List");
                                    for (Staff s : list) {%>
                                <!-- start product-->
                                <tr>
                                    <td><%= s.getId()%>
                                    </td>
                                    <td><%= s.getUserName()%>
                                    </td>
                                    <td><%= s.getName()%>
                                    </td>
                                    <td><img src="<%= s.getImg()%>" style="max-width: 50px; max-height: 50px;"
                                             alt="img-staff"></td>
                                    <td><%= s.getMail()%>
                                    </td>
                                    <td><%= s.getPhone()%>
                                    </td>
                                    <td><%= s.getRole()%>
                                    </td>
                                    <td><%= s.getStatus()%>
                                    </td>
                                    <td>
                                        <button type="button" class="btn my-blue btn-sm" data-toggle="modal"
                                                data-target="#user<%= s.getId()%>">
                                            <i class="fa fa-wrench" style="font-size:12px;color:black"></i>
                                        </button>
                                        <button type="button" class="btn btn-default center"
                                                style="margin-top: 10px" data-toggle="modal"
                                                data-target="#myModalDelete<%= s.getId()%>">
                                            <i class="fa fa-remove" style="font-size:12px;color:red"></i>
                                        </button>
                                        <%-- modal config--%>
                                        <div id="user<%= s.getId()%>" class="modal fade" role="dialog">
                                            <div class="modal-dialog modal-lg">

                                                <!-- Modal config content-->
                                                <div class="modal-content">
                                                    <form action="UpdateStaff" method="post">
                                                        <div class="modal-header">
                                                            <button type="button" class="close"
                                                                    data-dismiss="modal">&times;
                                                            </button>
                                                            <h4 class="modal-title">Sửa thông tin nhân viên
                                                                id: <%= s.getId()%>
                                                            </h4>
                                                        </div>
                                                        <div class="modal-body mid-col">
                                                            <label>
                                                                Tên đăng nhập: <%= s.getUserName()%>
                                                            </label>
                                                            <label>
                                                                Mật khẩu hiện tại: <%= s.getPassword()%>
                                                            </label>
                                                            <label>
                                                                <input type="text" name="id" class="form-control hidden"
                                                                       value="<%= s.getId()%>">
                                                            </label>
                                                            <label>
                                                                Tên:
                                                                <input type="text" name="name" class="form-control"
                                                                       value="<%= s.getName()%>">
                                                            </label>
                                                            <label>
                                                                Email:
                                                                <input type="text" name="mail" class="form-control"
                                                                       value="<%= s.getMail()%>">
                                                            </label>
                                                            <label>
                                                                Sđt:
                                                                <input type="text" name="phone" class="form-control"
                                                                       value="<%= s.getPhone()%>">
                                                            </label>
                                                            <label>
                                                                Vai trò:
                                                                <select name="role" class="form-control"
                                                                        style="width: 185px;">
                                                                    <%
                                                                        switch (s.getRole()) {
                                                                            case "Admin": %>
                                                                    <option value="1">Admin</option>
                                                                    <option value="3">Staff</option>
                                                                    <% break;
                                                                        case "Staff": %>
                                                                    <option value="1">Staff</option>
                                                                    <option value="3">Admin</option>
                                                                    <% break;
                                                                        default:
                                                                    %>
                                                                    <option value="null">N/A</option>
                                                                    <option value="1">Staff</option>
                                                                    <option value="3">Admin</option>
                                                                    <% break;
                                                                    }
                                                                    %>
                                                                </select>
                                                            </label>
                                                            <label>
                                                                Trạng thái:
                                                                <select name="status" class="form-control"
                                                                        style="width: 185px;">
                                                                    <%
                                                                        switch (s.getStatus()) {
                                                                            case "Active": %>
                                                                    <option value="Active">Hoạt động</option>
                                                                    <option value="UnActive">Ngưng hoạt động</option>
                                                                    <% break;
                                                                        case "UnActive": %>
                                                                    <option value="UnActive">Ngưng hoạt động</option>
                                                                    <option value="Active">Hoạt động</option>
                                                                    <% break;
                                                                        default:
                                                                    %>
                                                                    <option value="null">N/A</option>
                                                                    <option value="Active">Hoạt động</option>
                                                                    <option value="UnActive">Ngưng hoạt động</option>
                                                                    <% break;
                                                                    }
                                                                    %>
                                                                </select>
                                                            </label>
                                                        </div>
                                                        <div class="modal-footer">
                                                            <button type="submit" class="btn my-blue">
                                                                <strong>Sửa</strong></button>
                                                            <button type="button" class="btn btn-default"
                                                                    data-dismiss="modal">Đóng
                                                            </button>
                                                        </div>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                        <%-- modal config--%>
                                        <!-- Modal delete -->
                                        <div class="modal fade" id="myModalDelete<%= s.getId()%>" role="dialog">
                                            <div class="modal-dialog">

                                                <!-- Modal delete content-->
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <button type="button" class="close" data-dismiss="modal">
                                                            &times;
                                                        </button>
                                                        <h4 class="modal-title">Xóa nhân viên</h4>
                                                    </div>
                                                    <div class="modal-body">
                                                        <p class="center">Bạn có muốn <strong>XÓA</strong> nhân viên
                                                            <strong><%= s.getName()%>
                                                            </strong> này
                                                            không!?</p>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <form action="DeleteAdminStaff" method="post">
                                                            <input type="text" name="id" value="<%= s.getId()%>"
                                                                   class="hidden">
                                                            <button type="submit" class="btn btn-warning right"><strong>Xóa</strong>
                                                            </button>
                                                        </form>
                                                        <button type="button" style="margin-right: 30px"
                                                                class="btn btn-default" data-dismiss="modal">Đóng
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- end Modal delete-->
                                    </td>
                                </tr>
                                <!-- end product-->
                                <%}%>
                                </tbody>
                            </table>
                            <ul class="pagination" style="margin-left: 60px">
                                <% int sumPage = (int) request.getAttribute("SumPage");
                                    for (int i = 1; i <= sumPage; i++) {
                                        if (request.getAttribute("SearchKey") != null) {
                                            if (((int) request.getAttribute("CurrentPage")) == i) {
                                %>
                                <li class="my-pagination">
                                    <form action="SearchAdminProduct" method="get">
                                        <input type="text" name="search" class="hidden"
                                               value="<%= request.getAttribute("SearchKey")%>">
                                        <input type="text" name="page" value="<%= i%>" class="hidden">
                                        <button type="submit" class="btn btn-sm btn-default disabled"><%= i%>
                                        </button>
                                    </form>
                                </li>
                                <%
                                } else {%>
                                <li class="my-pagination">
                                    <form action="SearchAdminProduct" method="get">
                                        <input type="text" name="search" class="hidden"
                                               value="<%= request.getAttribute("SearchKey")%>">
                                        <input type="text" name="page" value="<%= i%>" class="hidden">
                                        <button type="submit" class="btn btn-sm btn-info"><%= i%>
                                        </button>
                                    </form>
                                </li>
                                <%
                                    }
                                %>
                                <%
                                } else {
                                    if (((int) request.getAttribute("CurrentPage")) == i) {%>
                                <li class="my-pagination">
                                    <form action="AdminProduct" method="get">
                                        <input type="text" name="page" value="<%= i%>" class="hidden">
                                        <button type="submit" class="btn btn-sm btn-default disabled"><%= i%>
                                        </button>
                                    </form>
                                </li>
                                <%
                                } else {
                                %>
                                <li class="my-pagination">
                                    <form action="AdminProduct" method="get">
                                        <input type="text" name="page" value="<%= i%>" class="hidden">
                                        <button type="submit" class="btn btn-sm btn-info"><%= i%>
                                        </button>
                                    </form>
                                </li>
                                <%
                                            }
                                        }
                                    }
                                %>
                            </ul>
                        </div>

                    </div>
                    <div id="activeStaff" class="tab-pane fade">
                        <h3>Active Staff</h3>
                        <p>Some content in menu 1.</p>
                    </div>
                    <div id="unactiveStaff" class="tab-pane fade">
                        <h3>Un-active Staff</h3>
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
<%
    String statusUpdate = (String) request.getAttribute("StatusUpdate");
%>
<%--  modal status	--%>
<div class="modal fade" id="myModalStatus" role="dialog" aria-hidden="true">
    <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;
                </button>
                <h4 class="modal-title">Thông báo</h4>
            </div>
            <div class="modal-body">
                <p style="text-align: center;"><%= statusUpdate %>
                </p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">
                    Close
                </button>
            </div>
        </div>

    </div>
</div>
<%--  end modal status	--%>
<%
    if (statusUpdate != null) {
%>
<%-- show modal status--%>
<script>
    $('#myModalStatus').modal('show');
</script>
<%
    }%>
<!-- div -->
<div style="background-color: #0064cf; width: 100%; height: 60px;"></div>
<!-- end div -->
<!-- footer -->
<%@include file="ifooter.jsp" %>
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
</body>

</html>