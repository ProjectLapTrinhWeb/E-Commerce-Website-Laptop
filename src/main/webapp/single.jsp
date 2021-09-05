<%@ page import="vn.edu.nlu.Beans.Product" %>
<%@ page import="vn.edu.nlu.Beans.Comments" %>
<%@ page import="java.util.List" %>
<%@ page import="vn.edu.nlu.Beans.User" %>
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
<%
    Product product = (Product) request.getAttribute("DetailProduct");
%>

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
<div class="banner banner10" style="max-height: 20px">
</div>
<!-- //banner -->
<!-- breadcrumbs -->
<div class="breadcrumb_dress">
    <div class="container">
        <ul>
            <li><a href="index.html"><span class="glyphicon glyphicon-home" aria-hidden="true"></span> Trang chủ</a> <i>/</i>
            </li>
            <li>Thông tin sản phẩm</li>
        </ul>
    </div>
</div>
<!-- //breadcrumbs -->
<!-- single -->
<div class="single">
    <div class="container">
        <div class="col-md-4 single-left">
            <div class="flexslider">
                <ul class="slides">
                    <li data-thumb="<%= product.getImg()%>">
                        <div class="thumb-image"><img src="<%= product.getImg()%>" data-imagezoom="true"
                                                      class="img-responsive" alt=""></div>
                    </li>
                    <li data-thumb="<%= product.getImg()%>">
                        <div class="thumb-image"><img src="<%= product.getImg()%>" data-imagezoom="true"
                                                      class="img-responsive" alt=""></div>
                    </li>
                    <li data-thumb="<%= product.getImg()%>">
                        <div class="thumb-image"><img src="<%= product.getImg()%>" data-imagezoom="true"
                                                      class="img-responsive" alt=""></div>
                    </li>
                </ul>
            </div>
            <!-- flexslider -->
            <script defer src="js/jquery.flexslider.js"></script>
            <link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen"/>
            <script>
                // Can also be used with $(document).ready()
                $(window).load(function () {
                    $('.flexslider').flexslider({
                        animation: "slide",
                        controlNav: "thumbnails"
                    });
                });
            </script>
            <!-- flexslider -->
            <!-- zooming-effect -->
            <script src="js/imagezoom.js"></script>
            <!-- //zooming-effect -->
        </div>
        <div class="col-md-8 single-right">
            <div class="rating1"><a href="DetailProduct?id=<%= product.getId()%>" style="font-size: 36px"><%= product.getName()%>
            </a>
            </div>
            <span class="starRating">
						<input id="rating5" type="radio" name="rating" value="5">
						<label for="rating5">5</label>
						<input id="rating4" type="radio" name="rating" value="4">
						<label for="rating4">4</label>
						<input id="rating3" type="radio" name="rating" value="3" checked>
						<label for="rating3">3</label>
						<input id="rating2" type="radio" name="rating" value="2">
						<label for="rating2">2</label>
						<input id="rating1" type="radio" name="rating" value="1">
						<label for="rating1">1</label>
					</span>

        </div>
        <div class="color-quality">
            <div class="color-quality-right-1">
                <h5>Số lượng :</h5>
                <br>
                <div class="quantity">
                    <div class="quantity-select">
                        <div class="entry value-minus1">&nbsp;</div>
                        <div class="entry value1"><span>1</span></div>
                        <div class="entry value-plus1 active">&nbsp;</div>
                    </div>
                </div>
                <!--quantity-->
                <script>
                    $('.value-plus1').on('click', function () {
                        var divUpd = $(this).parent().find('.value1'), newVal = parseInt(divUpd.text(), 10) + 1;
                        divUpd.text(newVal);
                    });

                    $('.value-minus1').on('click', function () {
                        var divUpd = $(this).parent().find('.value1'), newVal = parseInt(divUpd.text(), 10) - 1;
                        if (newVal >= 1) divUpd.text(newVal);
                    });
                </script>
                <!--quantity-->
                <style>
                    .color-quality-left h5, .color-quality-right-1 h5, .occasional h5 {
                        text-transform: uppercase;
                        font-size: 1em;
                        color: #0064cf;
                    }
                </style>
            </div>
            <div class="clearfix">
                <div class="simpleCart_shelfItem">
                    <p class="discount">  Giá gốc: <del><%= product.getVNDPrice()%></del>
                    </p>
                    <p class="discount"> Giảm giá: <ins style="background: #f50; color: white"><%= product.getDiscount()%>%</ins>
                    </p>
                    <p class="item_price"> Thành tiền: <strong style="color: #0064cf"><%= product.getCurrentPrice()%> VNĐ</strong></p>
                    <form action="#" method="post" style="float: left;">
                        <input type="hidden" name="cmd" value="_cart">
                        <input type="hidden" name="add" value="1">
                        <input type="hidden" name="link" value="DetailProduct?id=<%= product.getId()%>"/>
                        <input type="hidden" name="id" value="<%= product.getId()%>">
                        <input type="hidden" name="w3ls_item" value="<%= product.getName()%>">
                        <input type="hidden" name="amount" value="<%= product.getCurrentPrice()%>">
                        <button type="submit" class="w3ls-cart btn-add-to-cart">Thêm vào giỏ hàng</button>
                    </form>
                </div>
            </div>
        </div>

    </div>
</div>
</div>
<div class="KM-Info">
    <div class="Block2KQ-UD">
        <div class="KM-QT">
            <h3><i>Khuyến mãi và quà tặng</i></h3>
            <p>♦ Ba lô Gaming ASUS ROG 15.</p>
            <p>♦ Chuột Gaming ASUS ROG Impact.</p>
            <p>♦ Mousepad Gaming size XXL.</p>
            <p>♦ Túi chống sock.</p>
            <p>♦ Bộ vệ sinh 4 món.</p>
            <p>♦ Miễn phí vệ sinh laptop trong 2 năm.</p>
            <p>♦ Giảm giá 10% khi mua Gaming Gear.</p>
        </div>
        <div class="UudaiTG">
            <h3><i>Ưu đãi trả góp</i></h3>
            <p>♦ Trả trước chỉ từ 10% giá trị máy.</p>
            <p>♦ Lãi suất thấp nhất thi trường.</p>
            <p>♦ Kì hạn 9-24 tháng.</p>
            <p>Đăng kí ngay để nhận tư vấn từ chuyên viên.</p>
            <button class="buttonTG">Trả góp 0%<br>Đăng kí thủ tục đơn giản</button>
        </div>
    </div>
    <div class="NH-DV">
        <h3><i>Bảo hành và dịch vụ</i></h3>
        <p>♦ Bảo hành chính hãng 24 tháng tại các TTBH Asus trên toàn quốc. </p>
        <p>♦ Vệ sinh laptop miễn phí 2 năm.</p>
        <p>♦ Miễn phí vệ sinh laptop trong 2 năm.</p>
        <p>♦ Giảm giá 10% khi mua Gaming Gear.</p>
        <p>♦ Đổi mới lên đến 14 ngày nếu bị lỗi từ nhà sản xuất.</p>
        <p>♦ Miễn phí quẹt thẻ ATM, Visa, Master.</p>
        <p>♦ Trả góp 0% bằng thẻ tín dụng qua M-Pos. <a href="">Chi tiết</a>.</p>
        <p>♦ Chính sách đảm bảo hài lòng. <a href="">Chi tiết</a>.</p>
        <p>♦ Linh kiện nâng cấp bảo hành theo tiêu chuẩn nhà sản xuất.</p>
        <p>♦ Hỗ trợ cài đặt hệ điều hành và phần mềm.</p>
    </div>
</div>


<div class="additional_info">
    <div class="container">
        <div class="sap_tabs">
            <div id="horizontalTab1" style="display: block; width: 100%; margin: 0px;">
                <ul>
                    <li class="resp-tab-item" aria-controls="tab_item-0" role="tab"><span>Thông tin sản phẩm</span></li>
                    <div class="tab-content">
                        <div role="tabpanel" class="tab-pane fade active in" id="tabDescription" style="height: auto;">
                            <div class="content">
                                <h2><span
                                        style="font-size: 12pt; color: #000000;"><strong>Thông số <%= product.getName()%></strong></span>
                                </h2>
                                <table class="table table-bordered mce-item-table" id="tblGeneralAttribute"
                                       style="box-sizing: border-box; border-collapse: collapse; border-spacing: 0px; width: 100%; min-width: 500px; max-width: 100%; margin-bottom: 20px; border: 1px solid #eeeeee; color: #333333; font-family: Roboto, sans-serif; font-size: 13px; line-height: 20px; background-color: #ffffff;">
                                    <tbody style="box-sizing: border-box;">
                                    <tr class="row-info-1" style="box-sizing: border-box;">
                                        <td class="td-class-1">
                                            <span style="color: #000000;">Mô tả sản phẩm</span>
                                        </td>
                                        <td class="td-class-2">
                                            <span style="color: #000000;"><%= product.getDescription()%></span>
                                        </td>
                                    </tr>



                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <style>
                        .td-class-2 {
                            box-sizing: border-box;
                            padding: 8px;
                            vertical-align: top;
                            border: 1px solid #eeeeee;
                            width: 78.4791%;
                        }

                        .td-class-1 {
                            box-sizing: border-box;
                            padding: 8px;
                            vertical-align: top;
                            border: 1px solid #eeeeee;
                            width: 18.5209%;
                            background-color: #f7f7f7 !important;
                        }

                    </style>
                    <li class="resp-tab-item" aria-controls="tab_item-1" role="tab"><span>Nhận xét</span></li>
                </ul>

                <div class="tab-2 additional_info_grid" aria-labelledby="tab_item-1">
                    <h4> Nhận xét</h4><%
                    List<Comments> comments = (List<Comments>) request.getAttribute("Comments");
                %>
                    <% for (Comments c : comments) {%>
                    <div class="additional_info_sub_grids">

                        <%--            Bắt đầu 1 comment--%>
                        <div class="col-xs-2 additional_info_sub_grid_left">
                            <img src="images/t1.png" alt=" " class="img-responsive"/>
                        </div>
                        <div class="col-xs-10 additional_info_sub_grid_right">
                            <div class="additional_info_sub_grid_rightl">
                                <a href="single.html"><%= c.getUserName()%>
                                </a>
                                <h5>Ngày 06 Tháng 10 Năm 2016.</h5>
                                <p><%= c.getContent()%>
                                </p>
                            </div>
                            <div class="additional_info_sub_grid_rightr">
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
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <%--            Kết thúc 1 comment--%>
                        <%}%>

                        <div class="review_grids">
                            <h5></h5>
                            <form action="AddComment" method="get" enctype="text/plain">
                                <input type="text" name="id" class="hidden" value="<%= product.getId()%>">
                                <textarea name="Review" value="" placeholder="Thêm nhận xét của bạn vào"
                                          required></textarea>
                                <input type="submit" value="Bình luận">
                            </form>
                        </div>

                        <div class="clearfix"></div>
                    </div>

                </div>
            </div>
        </div>
        <script src="js/easyResponsiveTabs.js" type="text/javascript"></script>
        <script type="text/javascript">
            $(document).ready(function () {
                $('#horizontalTab1').easyResponsiveTabs({
                    type: 'default', //Types: default, vertical, accordion
                    width: 'auto', //auto or any width like 600px
                    fit: true   // 100% fit in a container
                });
            });
        </script>
    </div>
</div>
<!-- Related Products -->
<div class="w3l_related_products">
    <div class="container">
        <h3>Sản phẩm liên quan</h3>
        <ul id="flexiselDemo2">
            <li>
                <div class="w3l_related_products_grid">
                    <div class="agile_ecommerce_tab_left mobiles_grid">
                        <div class="hs-wrapper hs-wrapper3">
                            <img src="images/34.jpg" alt=" " class="img-responsive"/>
                            <img src="images/35.jpg" alt=" " class="img-responsive"/>
                            <img src="images/27.jpg" alt=" " class="img-responsive"/>
                            <img src="images/28.jpg" alt=" " class="img-responsive"/>
                            <img src="images/37.jpg" alt=" " class="img-responsive"/>
                            <div class="w3_hs_bottom">
                                <div class="flex_ecommerce">
                                    <a href="#" data-toggle="modal" data-target="#myModal6"><span
                                            class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
                                </div>
                            </div>
                        </div>
                        <h5><a href="single.html">Đồ chơi trẻ em</a></h5>
                        <div class="simpleCart_shelfItem">
                            <p class="flexisel_ecommerce_cart"><span>$150</span> <i class="item_price">$100</i></p>
                            <form action="#" method="post">
                                <input type="hidden" name="cmd" value="_cart">
                                <input type="hidden" name="add" value="1">
                                <input type="hidden" name="w3ls_item" value="Kid's Toy">
                                <input type="hidden" name="amount" value="100.00">
                                <button type="submit" class="w3ls-cart">Thêm vào giỏ hàng</button>
                            </form>
                        </div>
                    </div>
                </div>
            </li>

            <li>
                <div class="w3l_related_products_grid">
                    <div class="agile_ecommerce_tab_left mobiles_grid">
                        <div class="hs-wrapper hs-wrapper3">
                            <img src="images/36.jpg" alt=" " class="img-responsive"/>
                            <img src="images/32.jpg" alt=" " class="img-responsive"/>
                            <img src="images/33.jpg" alt=" " class="img-responsive"/>
                            <img src="images/32.jpg" alt=" " class="img-responsive"/>
                            <img src="images/36.jpg" alt=" " class="img-responsive"/>
                            <div class="w3_hs_bottom">
                                <div class="flex_ecommerce">
                                    <a href="#" data-toggle="modal" data-target="#myModal5"><span
                                            class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
                                </div>
                            </div>
                        </div>
                        <h5><a href="single.html">Máy hút bụi</a></h5>
                        <div class="simpleCart_shelfItem">
                            <p class="flexisel_ecommerce_cart"><span>$960</span> <i class="item_price">$920</i></p>
                            <form action="#" method="post">
                                <input type="hidden" name="cmd" value="_cart"/>
                                <input type="hidden" name="add" value="1"/>
                                <input type="hidden" name="w3ls_item" value="Vacuum Cleaner"/>
                                <input type="hidden" name="amount" value="920.00"/>
                                <button type="submit" class="w3ls-cart">Thêm vào giỏ hàng</button>
                            </form>
                        </div>
                    </div>
                </div>
            </li>
            <li>
                <div class="w3l_related_products_grid">
                    <div class="agile_ecommerce_tab_left mobiles_grid">
                        <div class="hs-wrapper hs-wrapper3">
                            <img src="images/38.jpg" alt=" " class="img-responsive"/>
                            <img src="images/37.jpg" alt=" " class="img-responsive"/>
                            <img src="images/27.jpg" alt=" " class="img-responsive"/>
                            <img src="images/28.jpg" alt=" " class="img-responsive"/>
                            <img src="images/37.jpg" alt=" " class="img-responsive"/>
                            <div class="w3_hs_bottom">
                                <div class="flex_ecommerce">
                                    <a href="#" data-toggle="modal" data-target="#myModal3"><span
                                            class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
                                </div>
                            </div>
                        </div>
                        <h5><a href="single.html">Lò vi sóng</a></h5>
                        <div class="simpleCart_shelfItem">
                            <p class="flexisel_ecommerce_cart"><span>$650</span> <i class="item_price">$645</i></p>
                            <form action="#" method="post">
                                <input type="hidden" name="cmd" value="_cart"/>
                                <input type="hidden" name="add" value="1"/>
                                <input type="hidden" name="w3ls_item" value="Microwave Oven"/>
                                <input type="hidden" name="amount" value="645.00"/>
                                <button type="submit" class="w3ls-cart">Thêm vào giỏ hàng</button>
                            </form>
                        </div>
                    </div>
                </div>
            </li>
            <li>
                <div class="w3l_related_products_grid">
                    <div class="agile_ecommerce_tab_left mobiles_grid">
                        <div class="hs-wrapper hs-wrapper3">
                            <img src="images/p3.jpg" alt=" " class="img-responsive"/>
                            <img src="images/p5.jpg" alt=" " class="img-responsive"/>
                            <img src="images/p4.jpg" alt=" " class="img-responsive"/>
                            <img src="images/p2.jpg" alt=" " class="img-responsive"/>
                            <img src="images/p1.jpg" alt=" " class="img-responsive"/>
                            <div class="w3_hs_bottom">
                                <div class="flex_ecommerce">
                                    <a href="#" data-toggle="modal" data-target="#myModal4"><span
                                            class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
                                </div>
                            </div>
                        </div>
                        <h5><a href="single.html">Máy nghe nhạc MP3</a></h5>
                        <div class="simpleCart_shelfItem">
                            <p><span>$60</span> <i class="item_price">$58</i></p>
                            <form action="#" method="post">
                                <input type="hidden" name="cmd" value="_cart"/>
                                <input type="hidden" name="add" value="1"/>
                                <input type="hidden" name="w3ls_item" value="Ultra MP3 Player"/>
                                <input type="hidden" name="amount" value="58.00"/>
                                <button type="submit" class="w3ls-cart">Thêm vào giỏ hàng</button>
                            </form>
                        </div>
                        <div class="mobiles_grid_pos">
                            <h6>New</h6>
                        </div>
                    </div>
                </div>
            </li>
        </ul>

        <script type="text/javascript">
            $(window).load(function () {
                $("#flexiselDemo2").flexisel({
                    visibleItems: 4,
                    animationSpeed: 1000,
                    autoPlay: true,
                    autoPlaySpeed: 3000,
                    pauseOnHover: true,
                    enableResponsiveBreakpoints: true,
                    responsiveBreakpoints: {
                        portrait: {
                            changePoint: 480,
                            visibleItems: 1
                        },
                        landscape: {
                            changePoint: 640,
                            visibleItems: 2
                        },
                        tablet: {
                            changePoint: 768,
                            visibleItems: 3
                        }
                    }
                });

            });
        </script>
        <script type="text/javascript" src="js/jquery.flexisel.js"></script>
    </div>
</div>
<!-- //Related Products -->
<div class="modal video-modal fade" id="myModal6" tabindex="-1" role="dialog" aria-labelledby="myModal6">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
                </button>
            </div>
            <section>
                <div class="modal-body">
                    <div class="col-md-5 modal_body_left">
                        <img src="images/34.jpg" alt=" " class="img-responsive"/>
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
                                <img src="images/star-.png" alt=" " class="img-responsive"/>
                            </div>
                            <div class="rating-left">
                                <img src="images/star-.png" alt=" " class="img-responsive"/>
                            </div>
                            <div class="rating-left">
                                <img src="images/star-.png" alt=" " class="img-responsive"/>
                            </div>
                            <div class="rating-left">
                                <img src="images/star.png" alt=" " class="img-responsive"/>
                            </div>
                            <div class="rating-left">
                                <img src="images/star.png" alt=" " class="img-responsive"/>
                            </div>
                            <div class="clearfix"></div>
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
                    <div class="clearfix"></div>
                </div>
            </section>
        </div>
    </div>
</div>
<div class="modal video-modal fade" id="myModal5" tabindex="-1" role="dialog" aria-labelledby="myModal5">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                        aria-hidden="true">×</span></button>
            </div>
            <section>
                <div class="modal-body">
                    <div class="col-md-5 modal_body_left">
                        <img src="images/36.jpg" alt=" " class="img-responsive">
                    </div>
                    <div class="col-md-7 modal_body_right">
                        <h4>Dry Vacuum Cleaner</h4>
                        <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
                            commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum
                            dolore eu fugiat nulla pariatur. Excepteur sint occaecat
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
                            <div class="clearfix"></div>
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
                    <div class="clearfix"></div>
                </div>
            </section>
        </div>
    </div>
</div>
<div class="modal video-modal fade" id="myModal4" tabindex="-1" role="dialog" aria-labelledby="myModal4">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
                </button>
            </div>
            <section>
                <div class="modal-body">
                    <div class="col-md-5 modal_body_left">
                        <img src="images/p3.jpg" alt=" " class="img-responsive"/>
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
                                <img src="images/star-.png" alt=" " class="img-responsive"/>
                            </div>
                            <div class="rating-left">
                                <img src="images/star-.png" alt=" " class="img-responsive"/>
                            </div>
                            <div class="rating-left">
                                <img src="images/star-.png" alt=" " class="img-responsive"/>
                            </div>
                            <div class="rating-left">
                                <img src="images/star-.png" alt=" " class="img-responsive"/>
                            </div>
                            <div class="rating-left">
                                <img src="images/star.png" alt=" " class="img-responsive"/>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="modal_body_right_cart simpleCart_shelfItem">
                            <p><span>$60</span> <i class="item_price">$58</i></p>
                            <form action="#" method="post">
                                <input type="hidden" name="cmd" value="_cart"/>
                                <input type="hidden" name="add" value="1"/>
                                <input type="hidden" name="w3ls_item" value="MP3 Player"/>
                                <input type="hidden" name="amount" value=" $58.00"/>
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
                    <div class="clearfix"></div>
                </div>
            </section>
        </div>
    </div>
</div>
<div class="modal video-modal fade" id="myModal3" tabindex="-1" role="dialog" aria-labelledby="myModal3">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                        aria-hidden="true">×</span></button>
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
                            <div class="clearfix"></div>
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
                    <div class="clearfix"></div>
                </div>
            </section>
        </div>
    </div>
</div>
<!-- //single -->
<!-- newsletter -->
<%@include file="inewletter.jsp"%>
<!-- //newsletter -->
<!-- footer -->
<%@include file="ifooter.jsp"%>
<!-- //footer -->

</body>
</html>
