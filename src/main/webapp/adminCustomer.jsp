<%@ page import="vn.edu.nlu.Beans.Customer" %>
<%@ page import="java.util.List" %>

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
                <%@include file="iMenuAdmin.jsp" %>
            </div>
        </div>

        <div class="content-admin collapse in" id="admin-product">
            <div class="all-product">
                <ul class="nav nav-tabs" id="myProductTab">
                    <li class="active"><a data-toggle="tab" href="#all-Customer">Tất cả</a></li>
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
                    </form>
                </div>
                <div class="tab-content">
                    <div id="all-Customer" class="tab-pane fade in active">
                        <div class="order-tab">
                            <table class="table table-bordered header-tab">
                                <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Name</th>
                                    <th>Mail</th>
                                    <th>Phone</th>
                                    <th>Status</th>
                                    <th>Actions</th>
                                </tr>
                                </thead>
                                <tbody>
                                <% List<Customer> list = (List<Customer>) request.getAttribute("List");
                                    for (Customer s : list) {%>
                                <!-- start product-->
                                <tr>
                                    <td><%= s.getId()%>
                                    </td>
                                    <td><%= s.getName()%>
                                    </td>
                                    <td><%= s.getMail()%>
                                    </td>
                                    <td><%= s.getPhone()%>
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
                                                    <form action="UpdateCustomer" method="post">
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
                                                                <input type="text" name="id" class="form-control hidden"
                                                                       value="<%= s.getId()%>" readonly>
                                                            </label>
                                                            <label>
                                                                Tên:
                                                                <input type="text" name="name" class="form-control"
                                                                       value="<%= s.getName()%>" readonly>
                                                            </label>
                                                            <label>
                                                                Email:
                                                                <input type="text" name="mail" class="form-control"
                                                                       value="<%= s.getMail()%>" readonly>
                                                            </label>
                                                            <label>
                                                                Sđt:
                                                                <input type="text" name="phone" class="form-control"
                                                                       value="<%= s.getPhone()%>" readonly>
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
                                                        <form action="DeleteAdminCustomer" method="post">
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
                            <%--      <ul class="pagination" style="margin-left: 60px">
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
                                  </ul> --%>
                        </div>

                    </div>
                    <div id="activeCustomer" class="tab-pane fade">
                        <h3>Active Customer</h3>
                        <p>Some content in menu 1.</p>
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
<%@include file="ifooter.jsp" %>
<!-- //footer -->
</body>

</html>