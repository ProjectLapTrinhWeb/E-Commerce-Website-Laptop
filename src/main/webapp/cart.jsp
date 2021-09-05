<%@ page import="vn.edu.nlu.Beans.Cart" %>
<%@ page import="vn.edu.nlu.Beans.Item" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Collection" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title> Giỏ hàng của bạn | Laptop Store</title>
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
<!-- header modal -->
<!-- header -->
<%@include file="iheader.jsp" %>
<!-- //header -->
<!-- navigation -->
<%@include file="inavigation.jsp" %>
<!-- //navigation -->
<!-- banner -->
<div class="banner banner10">
    <div class="container">
        <h2>Giỏ hàng của bạn</h2>
    </div>
</div>
<!-- //banner -->
<!-- breadcrumbs -->
<div class="breadcrumb_dress">
    <div class="container">
        <ul>
            <li><a href="index.html"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>Trang chủ</a>
                <i>/</i></li>
            <li>Giỏ hàng của bạn</li>
        </ul>
    </div>
</div>
<!-- //breadcrumbs -->
<!-- cart -->
<div id="cart">
    <div class="container">
        <%--       start cart --%>
        <% Cart cart = (Cart) session.getAttribute("Cart");
            Collection<Item> listItem = cart.getItems().values();
            if (listItem.size() == 0) {%><%
    %>
        <h1 style="text-align: center; min-height: 500px;"> Không có sản phẩm trong giỏ hàng của bạn</h1>
        <% } else { %>
        <table class="table table-bordered header-tab">
            <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Image</th>
                <th>Price</th>
                <th>Quantity</th>
                <th>Status</th>
                <th>Actions</th>
            </tr>
            </thead>
            <tbody>
            <%
                }
                for (Item s : listItem) {
            %>
            <!-- start product item -->
            <tr>
                <td><%= s.getProduct().getId()%>
                </td>
                <td><%= s.getProduct().getName()%>
                </td>
                <td><img src="<%= s.getProduct().getImg()%>" style="max-width: 50px; max-height: 50px;"
                         alt="img-product"></td>
                <td><%= s.getPrice()%>
                </td>
                <td><input type="number" min="1" onchange="changeQuantity<%= s.getProduct().getId()%>(this)"
                           id="qtt<%= s.getProduct().getId()%>"
                           value="<%= s.getQuantity()%>"/>
                </td>
                <script type="text/javascript">
                    function changeQuantity<%= s.getProduct().getId()%>(input1) {
                        var input2 = document.getElementById('quantityChange<%= s.getProduct().getId()%>');
                        input2.value = input1.value;
                    }
                </script>
                <td><%= s.getProduct().getStatus()%>
                </td>
                <td>
                    <form action="UpdateCart" class="center" method="post">
                        <input type="text" name="id" value="<%= s.getProduct().getId()%>"
                               class="hidden">
                        <input type="number" min="1" id="quantityChange<%= s.getProduct().getId()%>"
                               name="quantity" value="<%= s.getQuantity()%>" class="hidden">
                        <button type="submit" class="btn btn-warning left">
                            <i class="fa fa-wrench" style="font-size:12px;color:black"></i>
                        </button>
                    </form>
                    <button type="button" class="btn btn-default center"
                            style="margin-top: 10px" data-toggle="modal"
                            data-target="#myModalDelete<%= s.getProduct().getId()%>">
                        <i class="fa fa-remove" style="font-size:12px;color:red"></i>
                    </button>
                    <!-- Modal delete -->
                    <div class="modal fade" id="myModalDelete<%= s.getProduct().getId()%>" role="dialog">
                        <div class="modal-dialog">

                            <!-- Modal delete content-->
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">
                                        &times;
                                    </button>
                                    <h4 class="modal-title">Xóa sản phẩm</h4>
                                </div>
                                <div class="modal-body">
                                    <p class="center">Bạn có muốn <strong>XÓA</strong> sản phẩm
                                        <strong><%= s.getProduct().getName()%>
                                        </strong> này trong giỏ hàng
                                        không!?</p>
                                </div>
                                <div class="modal-footer">
                                    <form action="DeleteItemInCart" method="post">
                                        <input type="text" name="id" value="<%= s.getProduct().getId()%>"
                                               class="hidden">
                                        <button type="submit" class="btn btn-warning right">Xóa
                                            khỏi giỏ hàng
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

        <%--       end cart --%>
        <% if (listItem.size() > 0) {%>
        <!-- footer cart -->
        <div class="footer-cart">
            <div class="cart-sales">
                <div class="cart-checkbox center">
                    <input class="check-KM" type="checkbox">
                    <h3>Mã khuyến mãi</h3>
                </div>
                <input class="nhapmaKM" type="text" placeholder="Nhập mã khuyến mãi">
                <table class="table-cart">
                    <tr>
                        <th>Tạm tính:</th>
                        <td><%= cart.totalPrice()%> VNĐ</td>
                    </tr>
                    <tr>
                        <th>Khuyến mãi:</th>
                        <td>0 VNĐ</td>
                    </tr>
                    <tr>
                        <th>Tổng tiền:</th>
                        <td><%= cart.priceAfterSale(0)%> VNĐ</td>
                    </tr>
                    <tr>
                        <th colspan="2" style="text-align: center;">
                            <button class="btn btn-lg btn-warning"><a href="payment.html">Xác nhận thanh toán</a></button>
                        </th>
                    </tr>
                </table>
            </div>
        </div>
        <!-- end footer cart -->
        <%
            }
        %>

    </div>
</div>
<!-- //mail -->
<!-- newsletter -->
<%@include file="inewletter.jsp" %>
<!-- //newsletter -->
<!-- footer -->
<%@include file="ifooter.jsp" %>
<!-- //footer -->
</body>
</html>