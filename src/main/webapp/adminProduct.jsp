<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Admin Product | Laptop Store</title>
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
            <div class="content-admin collapse in" id="admin-product">
                <div class="all-product">
                    <ul class="nav nav-tabs" id="myProductTab">
                        <li class="active"><a data-toggle="tab" href="#all-product">Tất cả</a></li>
                        <li><a data-toggle="tab" href="#onStock">Đang bán</a></li>
                        <li><a data-toggle="tab" href="#outStock">Đã hết hàng</a></li>
                        <li><a data-toggle="tab" href="#stopTrading">Đã tạm ngưng</a></li>
                        <li><a data-toggle="tab" href="#comingSoon">Sắp ra mắt</a></li>
                    </ul>
                    <div class="search-product search-order">
                        <form action="/WebLaptop/SearchAdminProduct" method="get">
                            <label>
                                Tìm kiếm sản phẩm:
                                <input type="search" name="search" value="<% String searchKey;
                                if((searchKey = (String) request.getAttribute("SearchKey"))!=null){%><%= searchKey%><%}%>"
                                       class="search-box"
                                       placeholder="Theo tên...">
                                <input type="submit" value="Tìm" class="search-btn">
                                <a href="addProduct.jsp" target="_blank" rel="noopener noreferrer"
                                   id="add-product">Thêm sản phẩm</a>
                            </label>
                        </form>
                    </div>
                    <div class="tab-content" id="content-product">
                        <div id="all-product" class="tab-pane fade in active">
                            <table class="table table-bordered header-tab">
                                <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Name</th>
                                    <th>Image</th>
                                    <th>Price</th>
                                    <th>Quantity</th>
                                    <th>Supplier</th>
                                    <th>Category</th>
                                    <th>Status</th>
                                    <th>Actions</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${List}" var="p">
                                    <!-- start product-->
                                    <tr>
                                        <td>${p.id}</td>
                                        <td>${p.name}</td>
                                        <td><img src="${p.img}" style="max-width: 40px; max-height: 40px;"
                                                 alt="img-product"></td>
                                        <td>${p.price}</td>
                                        <td>${p.quantity}</td>
                                        <td>${p.supplierId}</td>
                                        <td>${p.categoryId}</td>
                                        <td>${p.status}</td>
                                        <td>
                                            <form action="/WebLaptop/UpdateProduct" class="center" method="post">
                                                <input type="text" name="id" value="${p.id}" class="hidden">
                                                </button>
                                                <button type="submit" class="btn btn-warning left">
                                                    <i class="fa fa-wrench" style="font-size:12px;color:black"></i>
                                                </button>
                                            </form>
                                            <button type="button" class="btn btn-default center"
                                                    style="margin-top: 10px" data-toggle="modal"
                                                    data-target="#myModalDelete${p.id}">
                                                <i class="fa fa-remove" style="font-size:12px;color:red"></i>
                                            </button>
                                            <!-- Modal delete -->
                                            <div class="modal fade" id="myModalDelete${p.id}" role="dialog">
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
                                                                <strong>${p.name}</strong> này
                                                                không!?</p>
                                                        </div>
                                                        <div class="modal-footer">
                                                            <form action="/WebLaptop/DeleteAdminProduct" method="post">
                                                                <input type="text" name="id" value="${p.id}"
                                                                       class="hidden">
                                                                <button type="submit" class="btn btn-warning right">Xóa
                                                                    sản phẩm
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
                                    <form action="/WebLaptop/SearchAdminProduct" method="get">
                                        <input type="text" name="search" class="hidden"
                                               value="<%= request.getAttribute("SearchKey")%>">
                                        <input type="text" name="page" value="<%= i%>" class="hidden">
                                        <button type="submit" class="btn btn-sm btn-default"><%= i%>
                                        </button>
                                    </form>
                                </li>
                                <%
                                } else {%>
                                <li class="my-pagination">
                                    <form action="/WebLaptop/SearchAdminProduct" method="get">
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
                                    <form action="/WebLaptop/AdminProduct" method="get">
                                        <input type="text" name="page" value="<%= i%>" class="hidden">
                                        <button type="submit" class="btn btn-sm btn-default"><%= i%>
                                        </button>
                                    </form>
                                </li>
                                <%
                                } else {
                                %>
                                <li class="my-pagination">
                                    <form action="/WebLaptop/AdminProduct" method="get">
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
                        <div id="onStock" class="tab-pane fade">
                            <table class="table table-bordered header-tab">
                                <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Name</th>
                                    <th>Image</th>
                                    <th>Price</th>
                                    <th>Quantity</th>
                                    <th>Supplier</th>
                                    <th>Category</th>
                                    <th>Status</th>
                                    <th>Actions</th>
                                </tr>
                                </thead>
                                <tbody>
                                <!-- start product -->
                                <tr>
                                    <td>1</td>
                                    <td>Laptop</td>
                                    <td><img src="img/1.jpg" style="max-width: 40px; max-height: 40px;"
                                             alt="img-product"></td>
                                    <td>1000000</td>
                                    <td>10</td>
                                    <td>Dell</td>
                                    <td>Laptop Gaming</td>
                                    <td>Active</td>
                                    <td>
                                        <form action="" method="post">
                                            <input type="text" name="id" value="" class="hidden">
                                            </button>
                                            <button type="submit" class="btn btn-warning left">
                                                <i class="fa fa-wrench" style="font-size:12px;color:black"></i>
                                            </button>
                                        </form>
                                        <button type="button" class="btn btn-default right" data-toggle="modal"
                                                data-target="#myModalDelete1">
                                            <i class="fa fa-remove" style="font-size:12px;color:red"></i>

                                        </button>
                                        <!-- Modal delete -->
                                        <div class="modal fade" id="myModalDelete1" role="dialog">
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
                                                        <p class="center">Bạn có muốn xóa sản phẩm này không!?</p>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <form action="" method="post">
                                                            <input type="text" name="id" value="" class="hidden">
                                                            <button type="submit" class="btn btn-warning right">Xóa
                                                                sản phẩm
                                                            </button>
                                                        </form>
                                                        <button type="button" style="margin-right: 30px"
                                                                class="btn btn-default" data-dismiss="modal">Đóng
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- end Modal delete--></td>
                                </tr>
                                <!--                        end product-->
                                </tbody>
                            </table>
                        </div>
                        <div id="outStock" class="tab-pane fade">
                            <table class="table table-bordered header-tab">
                                <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Name</th>
                                    <th>Image</th>
                                    <th>Price</th>
                                    <th>Quantity</th>
                                    <th>Supplier</th>
                                    <th>Category</th>
                                    <th>Status</th>
                                    <th>Actions</th>
                                </tr>
                                </thead>
                                <tbody>
                                <!--                        start product-->
                                <tr>
                                    <td>1</td>
                                    <td>Laptop</td>
                                    <td><img src="img/1.jpg" style="max-width: 40px; max-height: 40px;"
                                             alt="img-product"></td>
                                    <td>1000000</td>
                                    <td>10</td>
                                    <td>Dell</td>
                                    <td>Laptop Gaming</td>
                                    <td>Active</td>
                                    <td>
                                        <form action="" method="post">
                                            <input type="text" name="id" value="" class="hidden">
                                            </button>
                                            <button type="submit" class="btn btn-warning left">
                                                <i class="fa fa-wrench" style="font-size:12px;color:black"></i>
                                            </button>
                                        </form>
                                        <button type="button" class="btn btn-default right" data-toggle="modal"
                                                data-target="#myModalDelete2">
                                            <i class="fa fa-remove" style="font-size:12px;color:red"></i>

                                        </button>
                                        <!-- Modal delete -->
                                        <div class="modal fade" id="myModalDelete2" role="dialog">
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
                                                        <p class="center">Bạn có muốn xóa sản phẩm này không!?</p>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <form action="" method="post">
                                                            <input type="text" name="id" value="" class="hidden">
                                                            <button type="submit" class="btn btn-warning right">Xóa
                                                                sản phẩm
                                                            </button>
                                                        </form>
                                                        <button type="button" style="margin-right: 30px"
                                                                class="btn btn-default" data-dismiss="modal">Đóng
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- end Modal delete--></td>
                                </tr>
                                <!-- end product-->
                                </tbody>
                            </table>
                        </div>
                        <div id="stopTrading" class="tab-pane fade">
                            <table class="table table-bordered header-tab">
                                <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Name</th>
                                    <th>Image</th>
                                    <th>Price</th>
                                    <th>Quantity</th>
                                    <th>Supplier</th>
                                    <th>Category</th>
                                    <th>Status</th>
                                    <th>Actions</th>
                                </tr>
                                </thead>
                                <tbody>
                                <!--                        start product-->
                                <tr>
                                    <td>1</td>
                                    <td>Laptop</td>
                                    <td><img src="img/1.jpg" style="max-width: 40px; max-height: 40px;"
                                             alt="img-product"></td>
                                    <td>1000000</td>
                                    <td>10</td>
                                    <td>Dell</td>
                                    <td>Laptop Gaming</td>
                                    <td>Active</td>
                                    <td>
                                        <form action="" method="post">
                                            <input type="text" name="id" value="" class="hidden">
                                            </button>
                                            <button type="submit" class="btn btn-warning left">
                                                <i class="fa fa-wrench" style="font-size:12px;color:black"></i>
                                            </button>
                                        </form>
                                        <button type="button" class="btn btn-default right" data-toggle="modal"
                                                data-target="#myModalDelete3">
                                            <i class="fa fa-remove" style="font-size:12px;color:red"></i>

                                        </button>
                                        <!-- Modal delete -->
                                        <div class="modal fade" id="myModalDelete3" role="dialog">
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
                                                        <p class="center">Bạn có muốn xóa sản phẩm này không!?</p>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <form action="" method="post">
                                                            <input type="text" name="id" value="" class="hidden">
                                                            <button type="submit" class="btn btn-warning right">Xóa
                                                                sản phẩm
                                                            </button>
                                                        </form>
                                                        <button type="button" style="margin-right: 30px"
                                                                class="btn btn-default" data-dismiss="modal">Đóng
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- end Modal delete--></td>
                                </tr>
                                <!--                        end product-->
                                </tbody>
                            </table>
                        </div>
                        <div id="comingSoon" class="tab-pane fade">
                            <table class="table table-bordered header-tab">
                                <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Name</th>
                                    <th>Image</th>
                                    <th>Price</th>
                                    <th>Quantity</th>
                                    <th>Supplier</th>
                                    <th>Category</th>
                                    <th>Status</th>
                                    <th>Actions</th>
                                </tr>
                                </thead>
                                <tbody>
                                <!--                        start product-->
                                <tr>
                                    <td>1</td>
                                    <td>Laptop</td>
                                    <td><img src="img/1.jpg" style="max-width: 40px; max-height: 40px;"
                                             alt="img-product"></td>
                                    <td>1000000</td>
                                    <td>10</td>
                                    <td>Dell</td>
                                    <td>Laptop Gaming</td>
                                    <td>Active</td>
                                    <td>
                                        <form action="" method="post">
                                            <input type="text" name="id" value="" class="hidden">
                                            </button>
                                            <button type="submit" class="btn btn-warning left">
                                                <i class="fa fa-wrench" style="font-size:12px;color:black"></i>
                                            </button>
                                        </form>
                                        <button type="button" class="btn btn-default right" data-toggle="modal"
                                                data-target="#myModalDelete4">
                                            <i class="fa fa-remove" style="font-size:12px;color:red"></i>

                                        </button>
                                        <!-- Modal delete -->
                                        <div class="modal fade" id="myModalDelete4" role="dialog">
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
                                                        <p class="center">Bạn có muốn xóa sản phẩm này không!?</p>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <form action="" method="post">
                                                            <input type="text" name="id" value="" class="hidden">
                                                            <button type="submit" class="btn btn-warning right">Xóa
                                                                sản phẩm
                                                            </button>
                                                        </form>
                                                        <button type="button" style="margin-right: 30px"
                                                                class="btn btn-default" data-dismiss="modal">Đóng
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- end Modal delete--></td>
                                </tr>
                                <!--                        end product-->
                                </tbody>
                            </table>
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