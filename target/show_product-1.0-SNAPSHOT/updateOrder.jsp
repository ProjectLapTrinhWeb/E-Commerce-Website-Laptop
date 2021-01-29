<%@ page import="vn.edu.nlu.Beans.Product" %>
<%@ page import="vn.edu.nlu.Entity.ProductEntity" %>
<%@ page import="vn.edu.nlu.Beans.Order" %>
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
        <h2>Update Order</h2>
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
<%
    Order order = (Order) request.getAttribute("order");
//    Test:
//    Product product = ProductEntity.getId(171);
%>
<!-- body -->
<div class="container" id="form-add">
    <div class="header-card">
        <h2 style="border-bottom: 2px solid #0064cf;">Cập nhật đơn hàng</h2>
    </div>
    <div class="body-card">
        <form id="form-add-product" enctype="multipart/form-data" class="form-horizontal"
              action="/WebLaptop/UpdatedOrder"
              method="get">
            <div class="form-group">
                <label for="customerNameOrder">
                    Tên khách hàng:
                    <input type="text" value="<%= order.getCustomerName()%>" class="form-control" name="name"
                           id="customerNameOrder"
                           placeholder="Nhập tên sản phẩm..." required>
                </label>
            </div>
            <div class="form-group">
                <label for="phoneOrder">
                    Số điện thoại:
                    <input type="phone" width="500px" value="<%= order.getPhone()%>" class="form-control" name="phone"
                           id="phoneOrder"
                           placeholder="Nhập số điện thoại" required>
                </label>
            </div>
            <div class="form-group">
                <label for="addressOrder">
                    Địa chỉ nhận hàng:
                    <input type="text" width="500px" value="<%= order.getAddress()%>" class="form-control" name="address"
                           id="addressOrder"
                           placeholder="Nhập địa chỉ nhận hàng" required>
                </label>
            </div>
            <div class="form-group">
                <label for="totalPriceOrder">
                    Giá trị đơn hàng:
                    <input type="text" width="500px" value="<%= order.getTotalPrice()%>" class="form-control" name="totalPrice"
                           id="totalPriceOrder"
                           placeholder="Nhập giá trị đơn hàng" required>
                </label>
            </div>
            <div class="form-group">
                <label for="statusOrder">
                    Tình trạng:
                    <select id="statusOrder" class="form-control" name="status" required>
                        <%
                            switch (order.getStatus()) {
                                case "Đang giao": %>
                        <option value="Đang giao">Đang giao</option>
                        <option value="Đã giao">Đã giao</option>
                        <option value="Đã xác nhận">Đã xác nhận</option>
                        <option value="Shop hủy đơn">Shop hủy đơn</option>
                        <option value="Khách đã hủy">Khách đã hủy</option>
                        <% break;
                            case "Đã giao": %>
                        <option value="Đã giao">Đã giao</option>
                        <option value="Đang giao">Đang giao</option>
                        <option value="Đã xác nhận">Đã xác nhận</option>
                        <option value="Shop hủy đơn">Shop hủy đơn</option>
                        <option value="Khách đã hủy">Khách đã hủy</option>
                        <% break;
                            case "Đã xác nhận": %>
                        <option value="Đã xác nhận">Đã xác nhận</option>
                        <option value="Shop hủy đơn">Shop hủy đơn</option>
                        <option value="Khách đã hủy">Khách đã hủy</option>
                        <option value="Đã giao">Đã giao</option>
                        <option value="Đang giao">Đang giao</option>
                        <% break;
                            case "Shop hủy đơn": %>
                        <option value="Shop hủy đơn">Shop hủy đơn</option>
                        <option value="Khách đã hủy">Khách đã hủy</option>
                        <option value="Đã giao">Đã giao</option>
                        <option value="Đang giao">Đang giao</option>
                        <option value="Đã xác nhận">Đã xác nhận</option>
                        <% break;
                            case "Khách đã hủy": %>
                        <option value="Khách đã hủy">Khách đã hủy</option>
                        <option value="Đã giao">Đã giao</option>
                        <option value="Đang giao">Đang giao</option>
                        <option value="Đã xác nhận">Đã xác nhận</option>
                        <option value="Shop hủy đơn">Shop hủy đơn</option>
                        <% break;
                            default:
                        %>
                        <option>N/A</option>
                        <option value="Đang giao">Đang giao</option>
                        <option value="Đã giao">Đã giao</option>
                        <option value="Đã xác nhận">Đã xác nhận</option>
                        <option value="Shop hủy đơn">Shop hủy đơn</option>
                        <option value="Khách đã hủy">Khách đã hủy</option>
                        <% break;
                        }
                        %>
                    </select>
                </label>
            </div>
            <div class="form-group">
                <input type="text" name="id" class="hidden" value="<%= order.getId()%>">
            </div>
            <div class="form-group">
                <input type="submit" value="Sửa sản phẩm" class="btn btn-lg">
            </div>
        </form>
    </div>
</div>
<script>
    function readURL(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();
            reader.onload = function (e) {
                $('#img-upload')
                    .attr('src', e.target.result);
                $('#img-upload').attr('style', "max-width: 450px; max-height:300px;");
            };
            reader.readAsDataURL(input.files[0]);
        }
    }
</script>
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
<%-- end modal status--%>
<!-- div -->
<div style="background-color: #0064cf; width: 100%; height: 60px;"></div>
<!-- end div -->
<!-- footer -->
<%@include file="ifooter.jsp"%>
<!-- //footer -->
</body>

</html>