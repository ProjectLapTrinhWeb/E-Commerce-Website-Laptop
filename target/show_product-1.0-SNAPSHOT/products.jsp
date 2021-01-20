<%--
  Created by IntelliJ IDEA.
  User: LaptopUSAPro
  Date: 22/11/2020
  Time: 11:43 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!doctype html>
<html lang="en">
<head>
    <title>Product | Laptop Store</title>
    <!-- for-mobile-apps -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Electronic Store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
	SmartPhone Compatible web template, free web designs for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
    function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- //for-mobile-apps -->
    <!-- Custom Theme files -->
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/fasthover.css" rel="stylesheet" type="text/css" media="all" />
    <!-- //Custom Theme files -->
    <!-- font-awesome icons -->
    <link href="css/font-awesome.css" rel="stylesheet">
    <!-- //font-awesome icons -->
    <!-- js -->
    <script src="js/jquery.min.js"></script>
    <!-- //js -->
    <!-- web fonts -->
    <link href='//fonts.googleapis.com/css?family=Glegoo:400,700' rel='stylesheet' type='text/css'>
    <link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
    <!-- //web fonts -->
    <!-- for bootstrap working -->
    <script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
    <!-- //for bootstrap working -->
    <!-- start-smooth-scrolling -->
    <script type="text/javascript">
        jQuery(document).ready(function($) {
            $(".scroll").click(function(event){
                event.preventDefault();
                $('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
            });
        });
    </script>
    <!-- //end-smooth-scrolling -->
</head>
<body>
<!-- header modal -->
<div class="modal fade" id="myModal88" tabindex="-1" role="dialog" aria-labelledby="myModal88"
     aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;</button>
                <h4 class="modal-title" id="myModalLabel">Chần chờ gì nữa, đăng nhập ngay để mua sắm nào!!!</h4>
            </div>
            <div class="modal-body modal-body-sub">
                <div class="row">
                    <div class="col-md-8 modal_body_left modal_body_left1" style="border-right: 1px dotted #C2C2C2;padding-right:3em;">
                        <div class="sap_tabs">
                            <div id="horizontalTab" style="display: block; width: 100%; margin: 0;">
                                <ul>
                                    <li class="resp-tab-item" aria-controls="tab_item-0"><span>Đăng nhập</span></li>
                                    <li class="resp-tab-item" aria-controls="tab_item-1"><span>Đăng ký</span></li>
                                </ul>
                                <div class="tab-1 resp-tab-content" aria-labelledby="tab_item-0">
                                    <div class="facts">
                                        <div class="register">
                                            <form action="#" method="post">
                                                <input name="Email" placeholder="Email" type="text" required="">
                                                <input name="Password" placeholder="Mật khẩu" type="password" required="">
                                                <div class="sign-up">
                                                    <input type="submit" value="Đăng nhập"/>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-2 resp-tab-content" aria-labelledby="tab_item-1">
                                    <div class="facts">
                                        <div class="register">
                                            <form action="#" method="post">
                                                <input placeholder="Tên" name="Name" type="text" required="">
                                                <input placeholder="Email" name="Email" type="email" required="">
                                                <input placeholder="Mật khẩu" name="Password" type="password" required="">
                                                <input placeholder="Xác nhận mật khẩu" name="Password" type="password" required="">
                                                <div class="sign-up">
                                                    <input type="submit" value="Tạo tài khoản"/>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <script src="js/easyResponsiveTabs.js" type="text/javascript"></script>
                        <script type="text/javascript">
                            $(document).ready(function () {
                                $('#horizontalTab').easyResponsiveTabs({
                                    type: 'default', //Types: default, vertical, accordion
                                    width: 'auto', //auto or any width like 600px
                                    fit: true   // 100% fit in a container
                                });
                            });
                        </script>
                        <div id="OR" class="hidden-xs">Hoặc</div>
                    </div>
                    <div class="col-md-4 modal_body_right modal_body_right1">
                        <div class="row text-center sign-with">
                            <div class="col-md-12">
                                <h3 class="other-nw">Đăng ký bằng</h3>
                            </div>
                            <div class="col-md-12">
                                <ul class="social">
                                    <li class="social_facebook"><a href="#" class="entypo-facebook"></a></li>
                                    <li class="social_dribbble"><a href="#" class="entypo-dribbble"></a></li>
                                    <li class="social_twitter"><a href="#" class="entypo-twitter"></a></li>
                                    <li class="social_behance"><a href="#" class="entypo-behance"></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- <script>
    $('#myModal88').modal('show');
</script>   -->
<!-- header modal -->
<!-- header -->
<div class="header" id="home1">
    <div class="container">
        <div class="w3l_login">
            <a href="#" data-toggle="modal" data-target="#myModal88"><span class="glyphicon glyphicon-user" aria-hidden="true"></span></a>
        </div>
        <div class="w3l_logo">
            <h1><a href="index.html">Laptop Store<span>Nonglam University</span></a></h1>
        </div>
        <div class="search">
            <input class="search_box" type="checkbox" id="search_box">
            <label class="icon-search" for="search_box"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></label>
            <div class="search_form">
                <form action="#" method="post">
                    <input type="text" name="Search" placeholder="Search...">
                    <input type="submit" value="Send">
                </form>
            </div>
        </div>
        <div class="cart cart box_1">
            <form action="#" method="post" class="last">
                <input type="hidden" name="cmd" value="_cart" />
                <input type="hidden" name="display" value="1" />
                <button class="w3view-cart" type="submit" name="submit" value=""><i class="fa fa-cart-arrow-down" aria-hidden="true"></i></button>
            </form>
        </div>
    </div>
</div>
<!-- //header -->
<!-- navigation -->
<div class="navigation">
    <div class="container">
        <nav class="navbar navbar-default">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header nav_2">
                <button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse" data-target="#bs-megadropdown-tabs">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>
            <div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
                <ul class="nav navbar-nav">
                    <li><a href="index.html" class="act">Trang chủ</a></li>
                    <!-- Mega Menu -->
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Sản phẩm<b class="caret"></b></a>
                        <ul class="dropdown-menu multi-column columns-3">
                            <div class="row">
                                <div class="col-sm-3">
                                    <ul class="multi-column-dropdown">
                                        <h6>Laptop</h6>
                                        <li><a href="LaptopGaming.html">Laptop Gaming</a></li>
                                        <li><a href="products.html">Macbook<span>New</span></a></li>
                                        <li><a href="products.html">Laptop Văn Phòng</a></li>
                                        <li><a href="products.html">Laptop Đồ Họa<span>New</span></a></li>
                                    </ul>
                                </div>
                                <div class="col-sm-3">
                                    <ul class="multi-column-dropdown">
                                        <h6>Phụ Kiện</h6>
                                        <li><a href="products1.html">Bàn phím</a></li>
                                        <li><a href="products1.html">Chuột</a></li>
                                        <li><a href="products1.html">Loa<span>New</span></a></li>
                                        <li><a href="products1.html">Tai nghe</a></li>
                                        <!-- <li><a href="products1.html"><i>Tai nghe</i></a></li> -->
                                    </ul>
                                </div>
                                <div class="col-sm-3">
                                    <ul class="multi-column-dropdown">
                                        <h6>Thương Hiệu</h6>
                                        <li><a href="products2.html">Asus</a></li>
                                        <li><a href="products2.html">Dell</a></li>
                                        <li><a href="products2.html">Macbook<span>New</span></a></li>
                                        <li><a href="products2.html">HP</a></li>
                                        <!-- <li><a href="products2.html">Acer</a></li> -->
                                        <!-- <li><a href="products2.html">Lenovo</a></li> -->
                                    </ul>
                                </div>
                                <div class="img-product">
                                    <img src="images/airpod.jpg" alt="air-pod" style="width: 270px; height: 180px; border-radius: 4px;">
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
                    <li><a href="about.html">About Us</a></li>
                    <li class="w3pages"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Pages <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="icons.html">Web Icons</a></li>
                            <li><a href="codes.html">Short Codes</a></li>
                        </ul>
                    </li>
                    <li><a href="faq.html" class="">FAQ's</a></li>
                    <li><a href="mail.html">Mail Us</a></li>
                </ul>
            </div>
        </nav>
    </div>
</div>
<!-- //navigation -->
<!-- banner -->
<div class="banner banner1">
    <div class="container">
        <h2>Ưu đãi tuyệt vời khi mua <span style="font-size: 55px; font-weight: bold;">Laptop</span> dành cho Sinh viên  <i>35% Discount</i></h2>
    </div>
</div>
<!-- breadcrumbs -->
<div class="breadcrumb_dress">
    <div class="container">
        <ul>
            <li><a href="index.html"><span class="glyphicon glyphicon-home" aria-hidden="true"></span> Home</a> <i>/</i></li>
            <li>Products</li>
        </ul>
    </div>
</div>
<!-- //breadcrumbs -->
<!-- mobiles -->
<div class="mobiles">
    <div class="container">
        <div class="w3ls_mobiles_grids">
            <div class="col-md-4 w3ls_mobiles_grid_left">
                <div class="w3ls_mobiles_grid_left_grid">
                    <h3>Danh mục</h3>
                    <div class="w3ls_mobiles_grid_left_grid_sub">
                        <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                            <div class="panel panel-default">
                                <div class="panel-heading" role="tab" id="headingOne">
                                    <h4 class="panel-title asd">
                                        <a class="pa_italic" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                            <span class="glyphicon glyphicon-plus" aria-hidden="true"></span><i class="glyphicon glyphicon-minus" aria-hidden="true"></i>Mới ra mắt
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                                    <div class="panel-body panel_text">
                                        <ul>
                                            <li><a href="products.html">Laptop Gaming</a></li>
                                            <li><a href="products1.html">Laptop Office</a></li>
                                            <li><a href="products2.html">Tablet</a></li>
                                            <li><a href="products.html">Laptop Studying</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading" role="tab" id="headingTwo">
                                    <h4 class="panel-title asd">
                                        <a class="pa_italic collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                            <span class="glyphicon glyphicon-plus" aria-hidden="true"></span><i class="glyphicon glyphicon-minus" aria-hidden="true"></i>Phụ kiện
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                                    <div class="panel-body panel_text">
                                        <ul>
                                            <li><a href="products2.html">Chuột gaming</a></li>
                                            <li><a href="products2.html">Chuột văn phòng</a></li>
                                            <li><a href="products2.html">Lót chuột</a></li>
                                            <li><a href="products2.html">Bàn phím gaming</a></li>
                                            <li><a href="products2.html">Bàn phím văn phòng</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <ul class="panel_bottom">
                            <li><a href="products.html">Khuyến mãi mùa hè</a></li>
                            <li><a href="products.html">Nhãn hiệu nổi tiếng</a></li>
                            <li><a href="products.html">Ưu đãi hôm nay</a></li>
                            <!-- <li><a href="products.html">Latest Watches</a></li> -->
                        </ul>
                    </div>
                </div>
                <div class="w3ls_mobiles_grid_left_grid">
                    <h3>Color</h3>
                    <div class="w3ls_mobiles_grid_left_grid_sub">
                        <div class="ecommerce_color">
                            <ul>
                                <li><a href="#"><i></i> Red(5)</a></li>
                                <li><a href="#"><i></i> Brown(2)</a></li>
                                <li><a href="#"><i></i> Yellow(3)</a></li>
                                <li><a href="#"><i></i> Violet(6)</a></li>
                                <li><a href="#"><i></i> Orange(2)</a></li>
                                <li><a href="#"><i></i> Blue(1)</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="w3ls_mobiles_grid_left_grid">
                    <h3>Price</h3>
                    <div class="w3ls_mobiles_grid_left_grid_sub">
                        <div class="ecommerce_color ecommerce_size">
                            <ul>
                                <li><a href="#">Below $ 100</a></li>
                                <li><a href="#">$ 100-500</a></li>
                                <li><a href="#">$ 1k-10k</a></li>
                                <li><a href="#">$ 10k-20k</a></li>
                                <li><a href="#">$ Above 20k</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-8 w3ls_mobiles_grid_right">
                <div class="col-md-6 w3ls_mobiles_grid_right_left">
                    <div class="w3ls_mobiles_grid_right_grid1">
                        <img src="images/46.jpg" alt=" " class="img-responsive" />
                        <div class="w3ls_mobiles_grid_right_grid1_pos1">
                            <h3>Laptop<span>Sale Up To</span> 99% Discount</h3>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 w3ls_mobiles_grid_right_left">
                    <div class="w3ls_mobiles_grid_right_grid1">
                        <img src="images/47.jpg" alt=" " class="img-responsive" />
                        <div class="w3ls_mobiles_grid_right_grid1_pos">
                            <h3>Top 10 Best Seller<span>Laptop Gaming</span>& Accessories</h3>
                        </div>
                    </div>
                </div>
                <div class="clearfix"> </div>

                <div class="w3ls_mobiles_grid_right_grid2">
                    <div class="w3ls_mobiles_grid_right_grid2_left">
                        <h3>Hiển thị kết quả: 0-1</h3>
                    </div>
                    <div class="w3ls_mobiles_grid_right_grid2_right">
                        <select name="select_item" class="select_item">
                            <option selected="selected">Sắp xếp mặc định</option>
                            <option>Xếp theo độ phổ biến</option>
                            <option>Xếp theo tỉ lệ đánh giá</option>
                            <option>Xếp theo sản phẩm mới nhất</option>
                            <option>Xếp theo giá: Thấp đến cao</option>
                            <option>Xếp theo giá: Cao đến thấp</option>
                        </select>
                    </div>
                    <div class="clearfix"> </div>
                </div>
                <div class="w3ls_mobiles_grid_right_grid3">
                    <!-- sản phẩm hiển thị 2 -->
                    <c:forEach items="${List}" var="d">
                        <div class="col-md-4 agile_ecommerce_tab_left">
                        <div class="hs-wrapper">
                            <img src="${d.img}" alt=" " class="img-responsive" />
                            <img src="${d.img}" alt=" " class="img-responsive" />
                            <img src="${d.img}" alt=" " class="img-responsive" />
                            <img src="${d.img}" alt=" " class="img-responsive" />
                            <img src="${d.img}" alt=" " class="img-responsive" />
                            <img src="${d.img}" alt=" " class="img-responsive" />
                            <img src="${d.img}" alt=" " class="img-responsive" />

                            <div class="w3_hs_bottom">
                                <ul>
                                    <li>
                                        <a href="#" data-toggle="modal" data-target="#myModal9"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <h5><a href="single.html">${d.name}</a></h5>
                        <div class="simpleCart_shelfItem">
                            <p><span>${d.price}VNĐ</span> <i class="item_price">${d.priceSale}VNĐ</i></p>
                            <form action="#" method="post">
                                <input type="hidden" name="cmd" value="_cart" />
                                <input type="hidden" name="add" value="1" />
                                <input type="hidden" name="w3ls_item" value="Laptop công sở" />
                                <input type="hidden" name="amount" value="5.999.999" />
                                <button type="submit" class="w3ls-cart">Thêm vào giỏ hàng</button>
                            </form>
                        </div>
                    </div>
                    </c:forEach>
                    <!-- end sản phẩm hiển thị 2 -->
                </div>
                <div class="clearfix"> </div>
            </div>
        </div>
    </div>
</div>
<div class="modal video-modal fade" id="myModal9" tabindex="-1" role="dialog" aria-labelledby="myModal9">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            </div>
            <section>
                <div class="modal-body">
                    <div class="col-md-5 modal_body_left">
                        <img src="images/27.jpg" alt=" " class="img-responsive" />
                    </div>

                    <div class="col-md-7 modal_body_right">
                        <h4>Latest Smart Phone </h4>
                        <p>Ut enim ad minim veniam, quis nostrud
                            exercitation ullamco laboris nisi ut aliquip ex ea
                            commodo consequat.Duis aute irure dolor in
                            reprehenderit in voluptate velit esse cillum dolore
                            eu fugiat nulla pariatur. Excepteur sint occaecat
                            cupidatat non proident, sunt in culpa qui officia
                            deserunt mollit anim id est laborum.</p>
                        <div class="rating">
                            <div class="rating-left">
                                <img src="images/star-.png" alt=" " class="img-responsive" />
                            </div>
                            <div class="rating-left">
                                <img src="images/star-.png" alt=" " class="img-responsive" />
                            </div>
                            <div class="rating-left">
                                <img src="images/star-.png" alt=" " class="img-responsive" />
                            </div>
                            <div class="rating-left">
                                <img src="images/star.png" alt=" " class="img-responsive" />
                            </div>
                            <div class="rating-left">
                                <img src="images/star.png" alt=" " class="img-responsive" />
                            </div>
                            <div class="clearfix"> </div>
                        </div>
                        <div class="modal_body_right_cart simpleCart_shelfItem">
                            <p><span>$250</span> <i class="item_price">$245</i></p>
                            <form action="#" method="post">
                                <input type="hidden" name="cmd" value="_cart" />
                                <input type="hidden" name="add" value="1" />
                                <input type="hidden" name="w3ls_item" value="Smart Phone" />
                                <input type="hidden" name="amount" value="245.00"/>
                                <button type="submit" class="w3ls-cart">Add to cart</button>
                            </form>
                        </div>
                        <h5>Color</h5>
                        <div class="color-quality">
                            <ul>
                                <li><a href="#"><span></span></a></li>
                                <li><a href="#" class="brown"><span></span></a></li>
                                <li><a href="#" class="purple"><span></span></a></li>
                                <li><a href="#" class="gray"><span></span></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="clearfix"> </div>
                </div>
            </section>
        </div>
    </div>
</div>
<div class="modal video-modal fade" id="myModal6" tabindex="-1" role="dialog" aria-labelledby="myModal6">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            </div>
            <section>
                <div class="modal-body">
                    <div class="col-md-5 modal_body_left">
                        <img src="images/34.jpg" alt=" " class="img-responsive" />
                    </div>
                    <div class="col-md-7 modal_body_right">
                        <h4>Musical Kids Toy</h4>
                        <p>Ut enim ad minim veniam, quis nostrud
                            exercitation ullamco laboris nisi ut aliquip ex ea
                            commodo consequat.Duis aute irure dolor in
                            reprehenderit in voluptate velit esse cillum dolore
                            eu fugiat nulla pariatur. Excepteur sint occaecat
                            cupidatat non proident, sunt in culpa qui officia
                            deserunt mollit anim id est laborum.</p>
                        <div class="rating">
                            <div class="rating-left">
                                <img src="images/star-.png" alt=" " class="img-responsive" />
                            </div>
                            <div class="rating-left">
                                <img src="images/star-.png" alt=" " class="img-responsive" />
                            </div>
                            <div class="rating-left">
                                <img src="images/star-.png" alt=" " class="img-responsive" />
                            </div>
                            <div class="rating-left">
                                <img src="images/star.png" alt=" " class="img-responsive" />
                            </div>
                            <div class="rating-left">
                                <img src="images/star.png" alt=" " class="img-responsive" />
                            </div>
                            <div class="clearfix"> </div>
                        </div>
                        <div class="modal_body_right_cart simpleCart_shelfItem">
                            <p><span>$150</span> <i class="item_price">$100</i></p>
                            <form action="#" method="post">
                                <input type="hidden" name="cmd" value="_cart">
                                <input type="hidden" name="add" value="1">
                                <input type="hidden" name="w3ls_item" value="Kids Toy">
                                <input type="hidden" name="amount" value="100.00">
                                <button type="submit" class="w3ls-cart">Add to cart</button>
                            </form>
                        </div>
                        <h5>Color</h5>
                        <div class="color-quality">
                            <ul>
                                <li><a href="#"><span></span></a></li>
                                <li><a href="#" class="brown"><span></span></a></li>
                                <li><a href="#" class="purple"><span></span></a></li>
                                <li><a href="#" class="gray"><span></span></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="clearfix"> </div>
                </div>
            </section>
        </div>
    </div>
</div>
<div class="modal video-modal fade" id="myModal5" tabindex="-1" role="dialog" aria-labelledby="myModal5">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
            </div>
            <section>
                <div class="modal-body">
                    <div class="col-md-5 modal_body_left">
                        <img src="images/36.jpg" alt=" " class="img-responsive">
                    </div>
                    <div class="col-md-7 modal_body_right">
                        <h4>Dry Vacuum Cleaner</h4>
                        <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
                            commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat
                            cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                        <div class="rating">
                            <div class="rating-left">
                                <img src="images/star-.png" alt=" " class="img-responsive">
                            </div>
                            <div class="rating-left">
                                <img src="images/star-.png" alt=" " class="img-responsive">
                            </div>
                            <div class="rating-left">
                                <img src="images/star-.png" alt=" " class="img-responsive">
                            </div>
                            <div class="rating-left">
                                <img src="images/star.png" alt=" " class="img-responsive">
                            </div>
                            <div class="rating-left">
                                <img src="images/star.png" alt=" " class="img-responsive">
                            </div>
                            <div class="clearfix"> </div>
                        </div>
                        <div class="modal_body_right_cart simpleCart_shelfItem">
                            <p><span>$960</span> <i class="item_price">$920</i></p>
                            <form action="#" method="post">
                                <input type="hidden" name="cmd" value="_cart">
                                <input type="hidden" name="add" value="1">
                                <input type="hidden" name="w3ls_item" value="Vacuum Cleaner">
                                <input type="hidden" name="amount" value="920.00">
                                <button type="submit" class="w3ls-cart">Add to cart</button>
                            </form>
                        </div>
                        <h5>Color</h5>
                        <div class="color-quality">
                            <ul>
                                <li><a href="#"><span></span></a></li>
                                <li><a href="#" class="brown"><span></span></a></li>
                                <li><a href="#" class="purple"><span></span></a></li>
                                <li><a href="#" class="gray"><span></span></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="clearfix"> </div>
                </div>
            </section>
        </div>
    </div>
</div>
<div class="modal video-modal fade" id="myModal4" tabindex="-1" role="dialog" aria-labelledby="myModal4">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            </div>
            <section>
                <div class="modal-body">
                    <div class="col-md-5 modal_body_left">
                        <img src="images/p3.jpg" alt=" " class="img-responsive" />
                    </div>
                    <div class="col-md-7 modal_body_right">
                        <h4>Music MP3 Player </h4>
                        <p>Ut enim ad minim veniam, quis nostrud
                            exercitation ullamco laboris nisi ut aliquip ex ea
                            commodo consequat.Duis aute irure dolor in
                            reprehenderit in voluptate velit esse cillum dolore
                            eu fugiat nulla pariatur. Excepteur sint occaecat
                            cupidatat non proident, sunt in culpa qui officia
                            deserunt mollit anim id est laborum.</p>
                        <div class="rating">
                            <div class="rating-left">
                                <img src="images/star-.png" alt=" " class="img-responsive" />
                            </div>
                            <div class="rating-left">
                                <img src="images/star-.png" alt=" " class="img-responsive" />
                            </div>
                            <div class="rating-left">
                                <img src="images/star-.png" alt=" " class="img-responsive" />
                            </div>
                            <div class="rating-left">
                                <img src="images/star-.png" alt=" " class="img-responsive" />
                            </div>
                            <div class="rating-left">
                                <img src="images/star.png" alt=" " class="img-responsive" />
                            </div>
                            <div class="clearfix"> </div>
                        </div>
                        <div class="modal_body_right_cart simpleCart_shelfItem">
                            <p><span>$60</span> <i class="item_price">$58</i></p>
                            <form action="#" method="post">
                                <input type="hidden" name="cmd" value="_cart" />
                                <input type="hidden" name="add" value="1" />
                                <input type="hidden" name="w3ls_item" value="MP3 Player" />
                                <input type="hidden" name="amount" value="58.00"/>
                                <button type="submit" class="w3ls-cart">Add to cart</button>
                            </form>
                        </div>
                        <h5>Color</h5>
                        <div class="color-quality">
                            <ul>
                                <li><a href="#"><span></span></a></li>
                                <li><a href="#" class="brown"><span></span></a></li>
                                <li><a href="#" class="purple"><span></span></a></li>
                                <li><a href="#" class="gray"><span></span></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="clearfix"> </div>
                </div>
            </section>
        </div>
    </div>
</div>
<div class="modal video-modal fade" id="myModal3" tabindex="-1" role="dialog" aria-labelledby="myModal3">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
            </div>
            <section>
                <div class="modal-body">
                    <div class="col-md-5 modal_body_left">
                        <img src="images/38.jpg" alt=" " class="img-responsive">
                    </div>
                    <div class="col-md-7 modal_body_right">
                        <h4>Kitchen &amp; Dining Accessories</h4>
                        <p>Ut enim ad minim veniam, quis nostrud
                            exercitation ullamco laboris nisi ut aliquip ex ea
                            commodo consequat.Duis aute irure dolor in
                            reprehenderit in voluptate velit esse cillum dolore
                            eu fugiat nulla pariatur. Excepteur sint occaecat
                            cupidatat non proident, sunt in culpa qui officia
                            deserunt mollit anim id est laborum.</p>
                        <div class="rating">
                            <div class="rating-left">
                                <img src="images/star-.png" alt=" " class="img-responsive">
                            </div>
                            <div class="rating-left">
                                <img src="images/star-.png" alt=" " class="img-responsive">
                            </div>
                            <div class="rating-left">
                                <img src="images/star-.png" alt=" " class="img-responsive">
                            </div>
                            <div class="rating-left">
                                <img src="images/star-.png" alt=" " class="img-responsive">
                            </div>
                            <div class="rating-left">
                                <img src="images/star.png" alt=" " class="img-responsive">
                            </div>
                            <div class="clearfix"> </div>
                        </div>
                        <div class="modal_body_right_cart simpleCart_shelfItem">
                            <p><span>$650</span> <i class="item_price">$645</i></p>
                            <form action="#" method="post">
                                <input type="hidden" name="cmd" value="_cart">
                                <input type="hidden" name="add" value="1">
                                <input type="hidden" name="w3ls_item" value="Microwave Oven">
                                <input type="hidden" name="amount" value="645.00">
                                <button type="submit" class="w3ls-cart">Add to cart</button>
                            </form>
                        </div>
                        <h5>Color</h5>
                        <div class="color-quality">
                            <ul>
                                <li><a href="#"><span></span></a></li>
                                <li><a href="#" class="brown"><span></span></a></li>
                                <li><a href="#" class="purple"><span></span></a></li>
                                <li><a href="#" class="gray"><span></span></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="clearfix"> </div>
                </div>
            </section>
        </div>
    </div>
</div>
<div class="modal video-modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModal2">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            </div>
            <section>
                <div class="modal-body">
                    <div class="col-md-5 modal_body_left">
                        <img src="images/p6.jpg" alt=" " class="img-responsive" />
                    </div>
                    <div class="col-md-7 modal_body_right">
                        <h4>Latest Asus ZenPad Tablet</h4>
                        <p>Ut enim ad minim veniam, quis nostrud
                            exercitation ullamco laboris nisi ut aliquip ex ea
                            commodo consequat.Duis aute irure dolor in
                            reprehenderit in voluptate velit esse cillum dolore
                            eu fugiat nulla pariatur. Excepteur sint occaecat
                            cupidatat non proident, sunt in culpa qui officia
                            deserunt mollit anim id est laborum.</p>
                        <div class="rating">
                            <div class="rating-left">
                                <img src="images/star-.png" alt=" " class="img-responsive" />
                            </div>
                            <div class="rating-left">
                                <img src="images/star-.png" alt=" " class="img-responsive" />
                            </div>
                            <div class="rating-left">
                                <img src="images/star-.png" alt=" " class="img-responsive" />
                            </div>
                            <div class="rating-left">
                                <img src="images/star.png" alt=" " class="img-responsive" />
                            </div>
                            <div class="rating-left">
                                <img src="images/star.png" alt=" " class="img-responsive" />
                            </div>
                            <div class="clearfix"> </div>
                        </div>
                        <div class="modal_body_right_cart  simpleCart_shelfItem">
                            <p><span>$45</span> <i class="item_price">$425</i></p>
                            <form action="#" method="post">
                                <input type="hidden" name="cmd" value="_cart" />
                                <input type="hidden" name="add" value="1" />
                                <input type="hidden" name="w3ls_item" value="Latest Tablet" />
                                <input type="hidden" name="amount" value="425.00" />
                                <button type="submit" class="w3ls-cart">Add to cart</button>
                            </form>
                        </div>
                        <h5>Color</h5>
                        <div class="color-quality">
                            <ul>
                                <li><a href="#"><span></span></a></li>
                                <li><a href="#" class="brown"><span></span></a></li>
                                <li><a href="#" class="purple"><span></span></a></li>
                                <li><a href="#" class="gray"><span></span></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="clearfix"> </div>
                </div>
            </section>
        </div>
    </div>
</div>
<!-- Related Products -->
<div class="w3l_related_products">
    <div class="container">
        <h3>Related Products</h3>
        <ul id="flexiselDemo2">
            <li>
                <div class="w3l_related_products_grid">
                    <div class="agile_ecommerce_tab_left mobiles_grid">
                        <div class="hs-wrapper hs-wrapper3">
                            <img src="images/34.jpg" alt=" " class="img-responsive" />
                            <img src="images/35.jpg" alt=" " class="img-responsive" />
                            <img src="images/27.jpg" alt=" " class="img-responsive" />
                            <img src="images/28.jpg" alt=" " class="img-responsive" />
                            <img src="images/37.jpg" alt=" " class="img-responsive" />
                            <div class="w3_hs_bottom">
                                <div class="flex_ecommerce">
                                    <a href="#" data-toggle="modal" data-target="#myModal6"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
                                </div>
                            </div>
                        </div>
                        <h5><a href="single.html">Kid's Toy</a></h5>
                        <div class="simpleCart_shelfItem">
                            <p class="flexisel_ecommerce_cart"><span>$150</span> <i class="item_price">$100</i></p>
                            <form action="#" method="post">
                                <input type="hidden" name="cmd" value="_cart">
                                <input type="hidden" name="add" value="1">
                                <input type="hidden" name="w3ls_item" value="Kid's Toy">
                                <input type="hidden" name="amount" value="100.00">
                                <button type="submit" class="w3ls-cart">Add to cart</button>
                            </form>
                        </div>
                    </div>
                </div>
            </li>
            <li>
                <div class="w3l_related_products_grid">
                    <div class="agile_ecommerce_tab_left mobiles_grid">
                        <div class="hs-wrapper hs-wrapper3">
                            <img src="images/36.jpg" alt=" " class="img-responsive" />
                            <img src="images/32.jpg" alt=" " class="img-responsive" />
                            <img src="images/33.jpg" alt=" " class="img-responsive" />
                            <img src="images/32.jpg" alt=" " class="img-responsive" />
                            <img src="images/36.jpg" alt=" " class="img-responsive" />
                            <div class="w3_hs_bottom">
                                <div class="flex_ecommerce">
                                    <a href="#" data-toggle="modal" data-target="#myModal5"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
                                </div>
                            </div>
                        </div>
                        <h5><a href="single.html">Vacuum Cleaner</a></h5>
                        <div class="simpleCart_shelfItem">
                            <p class="flexisel_ecommerce_cart"><span>$960</span> <i class="item_price">$920</i></p>
                            <form action="#" method="post">
                                <input type="hidden" name="cmd" value="_cart" />
                                <input type="hidden" name="add" value="1" />
                                <input type="hidden" name="w3ls_item" value="Vacuum Cleaner" />
                                <input type="hidden" name="amount" value="920.00"/>
                                <button type="submit" class="w3ls-cart">Add to cart</button>
                            </form>
                        </div>
                    </div>
                </div>
            </li>
            <li>
                <div class="w3l_related_products_grid">
                    <div class="agile_ecommerce_tab_left mobiles_grid">
                        <div class="hs-wrapper hs-wrapper3">
                            <img src="images/38.jpg" alt=" " class="img-responsive" />
                            <img src="images/37.jpg" alt=" " class="img-responsive" />
                            <img src="images/27.jpg" alt=" " class="img-responsive" />
                            <img src="images/28.jpg" alt=" " class="img-responsive" />
                            <img src="images/37.jpg" alt=" " class="img-responsive" />
                            <div class="w3_hs_bottom">
                                <div class="flex_ecommerce">
                                    <a href="#" data-toggle="modal" data-target="#myModal3"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
                                </div>
                            </div>
                        </div>
                        <h5><a href="single.html">Microwave Oven</a></h5>
                        <div class="simpleCart_shelfItem">
                            <p class="flexisel_ecommerce_cart"><span>$650</span> <i class="item_price">$645</i></p>
                            <form action="#" method="post">
                                <input type="hidden" name="cmd" value="_cart" />
                                <input type="hidden" name="add" value="1" />
                                <input type="hidden" name="w3ls_item" value="Microwave Oven" />
                                <input type="hidden" name="amount" value="645.00"/>
                                <button type="submit" class="w3ls-cart">Add to cart</button>
                            </form>
                        </div>
                    </div>
                </div>
            </li>
            <li>
                <div class="w3l_related_products_grid">
                    <div class="agile_ecommerce_tab_left mobiles_grid">
                        <div class="hs-wrapper hs-wrapper3">
                            <img src="images/p3.jpg" alt=" " class="img-responsive" />
                            <img src="images/p5.jpg" alt=" " class="img-responsive" />
                            <img src="images/p4.jpg" alt=" " class="img-responsive" />
                            <img src="images/p2.jpg" alt=" " class="img-responsive" />
                            <img src="images/p1.jpg" alt=" " class="img-responsive" />
                            <div class="w3_hs_bottom">
                                <div class="flex_ecommerce">
                                    <a href="#" data-toggle="modal" data-target="#myModal4"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
                                </div>
                            </div>
                        </div>
                        <h5><a href="single.html">Music MP3 Player</a></h5>
                        <div class="simpleCart_shelfItem">
                            <p><span>$60</span> <i class="item_price">$58</i></p>
                            <form action="#" method="post">
                                <input type="hidden" name="cmd" value="_cart" />
                                <input type="hidden" name="add" value="1" />
                                <input type="hidden" name="w3ls_item" value="Ultra MP3 Player" />
                                <input type="hidden" name="amount" value="58.00"/>
                                <button type="submit" class="w3ls-cart">Add to cart</button>
                            </form>
                        </div>
                        <div class="mobiles_grid_pos">
                            <h6>New</h6>
                        </div>
                    </div>
                </div>
            </li>
        </ul>


    </div>
</div>
<!-- //Related Products -->
<!-- newsletter -->
<div class="newsletter">
    <div class="container">
        <div class="col-md-6 w3agile_newsletter_left">
            <h3>Nhận thông báo</h3>
            <p>Về khuyến mãi và các ưu đãi sắp tới của chúng tôi....</p>
        </div>
        <div class="col-md-6 w3agile_newsletter_right">
            <form action="#" method="post">
                <input type="email" name="Email" placeholder="Email" required="">
                <input type="submit" value="" />
            </form>
        </div>
        <div class="clearfix"> </div>
    </div>
</div>
<!-- //newsletter -->
<!-- footer -->
<div class="footer">
    <div class="container">
        <div class="w3_footer_grids">
            <div class="col-md-3 w3_footer_grid">
                <h3>Liên hệ</h3>
                <ul class="address">
                    <li><i class="glyphicon glyphicon-map-marker" aria-hidden="true"></i>Trường Đại Học Nông Lâm <span>Kp6, P.Linh Trung, Q.Thủ Đức, TP. Hồ Chí Minh</span> </li>
                    <li><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i><a href="18130000@st.hcmuaf.edu.vn">18130000@st.hcmuaf.edu.vn</a></li>
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
                    <li><a href="LaptopGaming.html">Laptops Gaming</a></li>
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
            <div class="clearfix"> </div>
        </div>
    </div>
    <div class="footer-copy">
        <div class="footer-copy1">
            <div class="footer-copy-pos">
                <a href="#home1" class="scroll"><img src="images/arrow.png" alt=" " class="img-responsive" /></a>
            </div>
        </div>
        <div class="container">
            <p>&copy; 2020 Laptop Store. All rights reserved | Design by <a href="#">WE</a></p>
        </div>
    </div>
</div>
<!-- //footer -->
<script type="text/javascript">
    $(window).load(function() {
        $("#flexiselDemo2").flexisel({
            visibleItems:4,
            animationSpeed: 1000,
            autoPlay: true,
            autoPlaySpeed: 3000,
            pauseOnHover: true,
            enableResponsiveBreakpoints: true,
            responsiveBreakpoints: {
                portrait: {
                    changePoint:568,
                    visibleItems: 1
                },
                landscape: {
                    changePoint:667,
                    visibleItems:2
                },
                tablet: {
                    changePoint:768,
                    visibleItems: 3
                }
            }
        });

    });
</script>
<script type="text/javascript" src="js/jquery.flexisel.js"></script>
<!-- cart-js -->
<script src="js/minicart.js"></script>
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
</script>
<!-- //cart-js -->
</body>
</html>
