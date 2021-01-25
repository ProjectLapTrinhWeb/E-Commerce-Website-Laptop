<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Admin Order | Laptop Store</title>
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
<!-- admin -->
<div class="mobiles">
    <div class="container" style="margin: 0 !important;">
        <div class="w3ls_mobiles_grids">
            <div class="col-md-4 w3ls_mobiles_grid_left">
                <%-- menu admin  --%>
                <%@include file="iMenuAdmin.jsp" %>
                <%-- // menu admin  --%>
            </div>
        </div>
        <div class="tab-content">
            <div class="content-admin collapse in" id="admin-order">
                <div class="all-order">
                    <ul class="nav nav-tabs" id="myOrderTab">
                        <li class="active"><a data-toggle="tab" href="#all">Tất cả</a></li>
                        <li><a data-toggle="tab" href="#cancel">Đơn đã hủy</a></li>
                        <li><a data-toggle="tab" href="#shipping">Đơn đang giao</a></li>
                        <li><a data-toggle="tab" href="#delivered">Đơn đã giao</a></li>
                        <li><a data-toggle="tab" href="#refund">Trả hàng</a></li>
                    </ul>
                    <div class="search-order">
                        <form action="SearchAdminOrder" method="get">
                            <label for="search-order">
                                Tìm kiếm đơn hàng:
                                <input type="search" name="search" id="search-order" class="search-box"
                                       value="<% String searchKey;
                                if((searchKey = (String) request.getAttribute("SearchKey"))!=null){%><%= searchKey%><%}%>"
                                       placeholder="Theo id khách hàng...">
                                <input type="submit" value="Tìm" class="search-btn">
                            </label>
                        </form>
                    </div>
                    <div class="tab-content">
                        <div id="all" class="tab-pane fade in active">
                            <div class="order-tab">
                                <table class="table table-bordered header-tab">
                                    <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>CustomerID</th>
                                        <th>PaymentID</th>
                                        <th>Customer Name</th>
                                        <th>Phone</th>
                                        <th>Address</th>
                                        <th>Note</th>
                                        <th>Total Price</th>
                                        <th>Status</th>
                                        <th>Actions</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${List}" var="o">
                                        <!-- start don hang -->
                                        <tr>
                                            <td>${o.id}</td>
                                            <td>${o.userId}</td>
                                            <td>${o.paymentId}</td>
                                            <td>${o.customerName}</td>
                                            <td>${o.phone}</td>
                                            <td>${o.address}</td>
                                            <td>${o.note}</td>
                                            <td>${o.totalPrice}</td>
                                            <td>${o.status}</td>
                                            <td>
                                                <form action="/WebLaptop/UpdateOrder" class="center" method="post">
                                                    <input type="text" name="id" value="${o.id}" class="hidden">
                                                    </button>
                                                    <button type="submit" class="btn btn-warning left">
                                                        <i class="fa fa-wrench" style="font-size:12px;color:black"></i>
                                                    </button>
                                                </form>
                                                <button type="button" class="btn btn-default center"
                                                        style="margin-top: 10px" data-toggle="modal"
                                                        data-target="#myModalCancel${o.id}">
                                                    <i class="fa fa-remove" style="font-size:12px;color:red"></i>
                                                </button>
                                                <!-- Modal cancel -->
                                                <div class="modal fade" id="myModalCancel${o.id}" role="dialog">
                                                    <div class="modal-dialog">

                                                        <!-- Modal cancel content-->
                                                        <div class="modal-content">
                                                            <div class="modal-header">
                                                                <button type="button" class="close"
                                                                        data-dismiss="modal">
                                                                    &times;
                                                                </button>
                                                                <h4 class="modal-title">Hủy nhận đơn hàng</h4>
                                                            </div>
                                                            <div class="modal-body">
                                                                <p class="center">Bạn muốn từ chối đơn hàng với id:
                                                                    <strong>${o.id}</strong>
                                                                    này!?</p>
                                                            </div>
                                                            <div class="modal-footer">
                                                                <form action="/WebLaptop/CancelAdminOrder"
                                                                      method="post">
                                                                    <input type="text" name="id" value="${o.id}"
                                                                           class="hidden">
                                                                    <button type="submit" class="btn btn-warning right">
                                                                        Xóa
                                                                        sản phẩm
                                                                    </button>
                                                                </form>
                                                                <button type="button" style="margin-right: 30px"
                                                                        class="btn btn-default" data-dismiss="modal">
                                                                    Đóng
                                                                </button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- end Modal cancel-->
                                            </td>
                                        </tr>
                                        <!-- end don hang -->
                                    </c:forEach>
                                    </tbody>
                                </table>
                                <ul class="pagination" style="margin-left: 60px">
                                    <% int sumPage = (int) request.getAttribute("SumPage");
                                        for (int i = 1; i <= sumPage; i++) {
                                            if (request.getAttribute("SearchKey") != null) {
                                                if (((int) request.getAttribute("CurrentPage")) == i) {
                                    %>
                                    <li class="my-pagination">
                                        <form action="/WebLaptop/SearchAdminOrder" method="get">
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
                                        <form action="/WebLaptop/SearchAdminOrder" method="get">
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
                                        <form action="/WebLaptop/AdminOrder" method="get">
                                            <input type="text" name="page" value="<%= i%>" class="hidden">
                                            <button type="submit" class="btn btn-sm btn-default disabled"><%= i%>
                                            </button>
                                        </form>
                                    </li>
                                    <%
                                    } else {
                                    %>
                                    <li class="my-pagination">
                                        <form action="/WebLaptop/AdminOrder" method="get">
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
                    </div>
                    <div id="cancel" class="tab-pane fade">
                        <div class="order-tab">

                        </div>
                    </div>
                    <div id="shipping" class="tab-pane fade">
                        <div class="order-tab">

                        </div>
                    </div>
                    <div id="delivered" class="tab-pane fade">
                        <div class="order-tab">

                        </div>
                    </div>
                    <div id="refund" class="tab-pane fade">

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