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
        <h2>Add Product</h2>
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
<div class="container" id="form-add">
    <div class="header-card">
        <h2 style="border-bottom: 2px solid #0064cf;">Thêm một sản phẩm mới</h2>
    </div>
    <div class="body-card">
        <form id="form-add-product" enctype="multipart/form-data" class="form-horizontal" action="/WebLaptop/AddProduct"
              method="post">
            <div class="form-group">
                <label for="nameProduct">
                    Tên sản phẩm:
                    <input type="text" value="" class="form-control" name="name" id="nameProduct"
                           placeholder="Nhập tên sản phẩm..." required>
                </label>
            </div>
            <div class="form-group">
                <label for="priceProduct">
                    Giá:
                    <input type="text" width="500px" class="form-control" name="price" id="priceProduct"
                           placeholder="Đơn vị VNĐ" required>
                </label>
            </div>
            <div class="un-form-group">
                <div class="left">
                    <div class="form-group">
                        <label for="supplierProduct">
                            Nhà sản xuất:
                            <select id="supplierProduct" class="form-control " name="supplier" required>
                                <option value="1">Asus</option>
                                <option value="2">Acer</option>
                                <option value="3">Dell</option>
                                <option value="4">Apple</option>
                                <option value="5">HP</option>
                                <option value="6">MSI</option>
                                <option value="7">Lenovo</option>
                            </select>
                        </label>
                    </div>
                    <div class="form-group">
                        <label for="statusProduct">
                            Trạng thái:
                            <select id="statusProduct" class="form-control" name="status">
                                <option value="Active">Bán ngay</option>
                                <option value="UnActive">Chưa bán</option>
                            </select>
                        </label>
                    </div>

                    <div class="form-group">
                        <label for="categoryProduct">
                            Phân loại:
                            <select id="categoryProduct" class="form-control" name="category" required>
                                <option value="1">Laptop Gaming</option>
                                <option value="2">Laptop Văn phòng</option>
                                <option value="3">Laptop Đồ họa</option>
                            </select>
                        </label>
                    </div>
                </div>
                <div class="right">
                    <div class="form-group">
                        <label for="quantityProduct">
                            Số lượng:
                            <input type="number" min="1" value="1" class="form-control " name="quantity"
                                   id="quantityProduct" placeholder="%" required>
                        </label>
                    </div>
                    <div class="form-group">
                        <label for="discountProduct">
                            Khuyến mãi:
                            <input type="number" max="99" min="10" value="Tối thiểu 10%" class="form-control "
                                   name="discount"
                                   id="discountProduct" placeholder="%" required>
                        </label>
                    </div>
                    <div class="form-group">
                        <label for="imgProduct">
                            Ảnh:
                            <input type="file" style="max-width: 450px; max-height: 300px" class="form-control"
                                   onchange="readURL(this)" name="img" id="imgProduct" required>
                        </label>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <input type="submit" value="Thêm sản phẩm" class="btn btn-lg">
            </div>
        </form>
        <div class="thumbnail">
            <img src="images/image.png" alt="hinh-anh-san-pham" id="img-upload">
        </div>
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
    String statusAdd = (String) request.getAttribute("StatusAdd");
%>
<%--  modal status	--%>
<div class="modal fade" id="myModalStatus" role="dialog" aria-hidden="true">
    <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Thông báo</h4>
            </div>
            <div class="modal-body">
                <p style="text-align: center;"><%= statusAdd %>
                </p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
        </div>

    </div>
</div>
<%--  end modal status	--%>
<%
    if (statusAdd != null) {
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
<div class="footer">
    <div class="container">
        <div class="w3_footer_grids">
            <div class="col-md-3 w3_footer_grid">
                <h3>Liên hệ</h3>
                <ul class="address">
                    <li><i class="glyphicon glyphicon-map-marker" aria-hidden="true"></i>Trường Đại Học Nông Lâm
                        <span>Kp6, P.Linh Trung, Q.Thủ Đức, TP. Hồ Chí Minh</span>
                    </li>
                    <li><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i><a
                            href="18130000@st.hcmuaf.edu.vn">18130000@st.hcmuaf.edu.vn</a></li>
                    <li><i class="glyphicon glyphicon-earphone" aria-hidden="true"></i>+84 999 999 999</li>
                </ul>
            </div>
            <div class="col-md-3 w3_footer_grid">
                <h3>Thông tin</h3>
                <ul class="info">
                    <li><a href="about.html">Về chúng tôi</a></li>
                    <li><a href="mail.html">Liên hệ chúng tôi</a></li>
                    <li><a href="codes.html">Mã khuyến mãi</a></li>
                    <li><a href="products.html">Sản phẩm đặc biệt</a></li>
                    <li><a href="faq.html">FAQ's</a></li>
                </ul>
            </div>
            <div class="col-md-3 w3_footer_grid">
                <h3>Danh mục</h3>
                <ul class="info">
                    <li><a href="products.html">Tablets</a></li>
                    <li><a href="products1.html">Laptops Gaming</a></li>
                    <li><a href="products.html">Laptops Office</a></li>
                    <li><a href="products2.html">Laptops Studying</a></li>
                </ul>
            </div>
            <div class="col-md-3 w3_footer_grid">
                <h3>Hồ sơ</h3>
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
            <p>&copy; 2020 Laptop Store. All rights reserved | Design by <a href="#">WE</a></p>
        </div>
    </div>
</div>
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