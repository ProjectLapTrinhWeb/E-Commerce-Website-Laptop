<%@ page import="vn.edu.nlu.Beans.Product" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: LaptopUSAPro
  Date: 22/11/2020
  Time: 11:43 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!doctype html>
<html lang="en">
<head>
    <title>Product | Laptop Store</title>
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

<body>
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
<div class="banner banner1">
    <div class="container">
        <h2>Ưu đãi tuyệt vời khi mua <span style="font-size: 55px; font-weight: bold;">Laptop</span> dành cho Sinh viên
            <i>35% Discount</i></h2>
    </div>
</div>
<!-- breadcrumbs -->
<div class="breadcrumb_dress">
    <div class="container">
        <ul>
            <li><a href="index.html"><span class="glyphicon glyphicon-home" aria-hidden="true"></span> Home</a> <i>/</i>
            </li>
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
                                        <a class="pa_italic" role="button" data-toggle="collapse"
                                           data-parent="#accordion" href="#collapseOne" aria-expanded="true"
                                           aria-controls="collapseOne">
                                            <span class="glyphicon glyphicon-plus" aria-hidden="true"></span><i
                                                class="glyphicon glyphicon-minus" aria-hidden="true"></i>Mới ra mắt
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel"
                                     aria-labelledby="headingOne">
                                    <div class="panel-body panel_text">
                                        <ul>
                                            <li><a href="/WebLaptop/LaptopGaming">Laptop Gaming</a></li>
                                            <li><a href="/WebLaptop/LaptopOffice">Laptop Office</a></li>
                                            <li><a href="/WebLaptop/LaptopGraphic">Laptop Graphic</a></li>
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
                    <h3>Price</h3>
                    <div class="w3ls_mobiles_grid_left_grid_sub">
                        <div class="ecommerce_color ecommerce_size">
                            <ul>
                                <li><a href="/WebLaptop/Laptop5To10MA">5.000.000 - 10.000.000 triệu</a></li>
                                <li><a href="/WebLaptop/Laptop10To20MA">10.000.000 - 20.000.000 triệu</a></li>
                                <li><a href="/WebLaptop/Laptop20To30MA">20.000.000 - 30.000.000 triệu</a></li>
                                <li><a href="/WebLaptop/Laptop30To40MA">30.000.000 - 40.000.000 triệu</a></li>
                                <li><a href="/WebLaptop/Laptop40To50MA">40.000.000 - 50.000.000 triệu</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-8 w3ls_mobiles_grid_right">
                <div class="col-md-6 w3ls_mobiles_grid_right_left">
                    <div class="w3ls_mobiles_grid_right_grid1">
                        <img src="images/46.jpg" alt=" " class="img-responsive"/>
                        <div class="w3ls_mobiles_grid_right_grid1_pos1">
                            <h3>Laptop<span>Sale Up To</span> 99% Discount</h3>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 w3ls_mobiles_grid_right_left">
                    <div class="w3ls_mobiles_grid_right_grid1">
                        <img src="images/47.jpg" alt=" " class="img-responsive"/>
                        <div class="w3ls_mobiles_grid_right_grid1_pos">
                            <h3>Top 10 Best Seller<span>Laptop Gaming</span>& Accessories</h3>
                        </div>
                    </div>
                </div>
                <div class="clearfix"></div>

                <div class="w3ls_mobiles_grid_right_grid2">
                    <div class="w3ls_mobiles_grid_right_grid2_left">
                        <h3>Hiển thị kết quả: 0-1</h3>
                    </div>
                    <div class="w3ls_mobiles_grid_right_grid2_right">
                        <select name="select_item" class="select_item">
                            <option selected="selected">Sắp xếp mặc định</option>
                            <option>Xếp theo giá: Thấp đến cao</option>
                            <option><a href="">Xếp theo giá: Cao đến thấp</a></option>
                        </select>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="w3ls_mobiles_grid_right_grid3">
                    <!-- sản phẩm hiển thị 2 -->
                    <% List<Product> list = (List<Product>) request.getAttribute("List");
                        for (Product s : list) {%>
                    <div class="col-md-4 agile_ecommerce_tab_left">
                        <div class="hs-wrapper">
                            <img src="<%= s.getImg()%>" alt=" " class="img-responsive"/>
                            <img src="<%= s.getImg()%>" alt=" " class="img-responsive"/>
                            <img src="<%= s.getImg()%>" alt=" " class="img-responsive"/>
                            <img src="<%= s.getImg()%>" alt=" " class="img-responsive"/>
                            <img src="<%= s.getImg()%>" alt=" " class="img-responsive"/>
                            <img src="<%= s.getImg()%>" alt=" " class="img-responsive"/>
                            <img src="<%= s.getImg()%>" alt=" " class="img-responsive"/>

                            <div class="w3_hs_bottom">
                                <ul>
                                    <li>
                                        <a href="#" data-toggle="modal" data-target="#myModal<%= s.getId()%>"><span
                                                class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <h5><a href="DetailProduct?id=<%= s.getId()%>"><%= s.getName()%>
                        </a></h5>
                        <div class="simpleCart_shelfItem">
                            <p><span><%= s.getVNDPrice()%></span><br><i class="item_price"><%= s.getPriceSale()%></i></p>
                            <form action="#" method="post">
                                <input type="hidden" name="cmd" value="_cart"/>
                                <input type="hidden" name="id" value="<%= s.getId()%>"/>
                                <input type="hidden" name="add" value="1"/>
                                <input type="hidden" name="link" value="DetailProduct?id=<%= s.getId()%>"/>
                                <input type="hidden" name="w3ls_item" value="<%= s.getName()%>"/>
                                <input type="hidden" name="amount" value="<%= s.getCurrentPrice()%>"/>
                                <button type="submit" class="w3ls-cart">Thêm vào giỏ hàng</button>
                            </form>
                            <form action="DetailProduct" method="get" accept-charset="UTF-8">
                                <input type="hidden" name="id" value="<%= s.getId()%>"/>
                                <button type="submit" class="w3ls-cart2-btnDetail">Xem chi tiết</button>
                            </form>
                            <style>
                                .w3ls-cart2-btnDetail {
                                    font-size: 19px;
                                    color: #ffffff;
                                    margin-top: 4px;
                                    text-decoration: none;
                                    text-transform: capitalize;
                                    padding: .5em 1.5em;
                                    border-radius: 5px;
                                    outline: none;
                                    -webkit-transition: .5s all;
                                    -moz-transition: .5s all;
                                    transition: .5s all;
                                    background-color: #ff5500;
                                }
                            </style>
                        </div>
                    </div>
                    <!-- end sản phẩm hiển thị 2 -->
                    <%-- modal chi tiet --%>
                    <div class="modal video-modal fade" id="myModal<%= s.getId()%>" tabindex="-1" role="dialog"
                         aria-labelledby="myModal<%= s.getId()%>">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                            aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <section>
                                    <div class="modal-body">
                                        <div class="col-md-5 modal_body_left">
                                            <img src="<%= s.getImg()%>" alt="img-product" class="img-responsive"/>
                                        </div>

                                        <div class="col-md-7 modal_body_right">
                                            <h4><%= s.getName()%>
                                            </h4>
                                            <p><%= s.getDescription()%>
                                            </p>
                                            <%--
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
                                            --%>
                                            <div class="modal_body_right_cart simpleCart_shelfItem">
                                                <p><span><%= s.getVNDPrice()%></span> <i class="item_price"><%= s.getPriceSale()%></i></p>
                                                <form action="#" method="post">
                                                    <input type="hidden" name="cmd" value="_cart"/>
                                                    <input type="hidden" name="id" value="<%= s.getId()%>"/>
                                                    <input type="hidden" name="add" value="1"/>
                                                    <input type="hidden" name="w3ls_item" value="<%= s.getName()%>"/>
                                                    <input type="hidden" name="amount" value="<%= s.getCurrentPrice()%>"/>
                                                    <button type="submit" class="w3ls-cart">Thêm vào giỏ hàng</button>
                                                </form>
                                            </div>
                                        </div>
                                        <div class="clearfix"></div>
                                    </div>
                                </section>
                            </div>
                        </div>
                    </div>
                    <%-- end modal chi tiet --%>
                    <%}%>
                </div>
                <ul class="pagination" style="margin-top: 550px">
                    <% int sumPage = (int) request.getAttribute("SumPage");
                        for (int i = 1; i <= sumPage; i++) {
                            if (request.getAttribute("SearchKey") != null) {
                                if (((int) request.getAttribute("CurrentPage")) == i) {
                    %>
                    <li class="my-pagination">
                        <form action="" method="get">
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
                        <form action="" method="get">
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
                        <form action="<%= request.getAttribute("NamePage")%>" method="get">
                            <input type="text" name="page" value="<%= i%>" class="hidden">
                            <button type="submit" class="btn btn-sm btn-default"><%= i%>
                            </button>
                        </form>
                    </li>
                    <%
                    } else {
                    %>
                    <li class="my-pagination">
                        <form action="<%= request.getAttribute("NamePage")%>" method="get">
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
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
</div>

<!-- Related Products -->
<%--<div class="w3l_related_products">--%>
<%--    <div class="container">--%>
<%--        <h3>Related Products</h3>--%>
<%--        <ul id="flexiselDemo2">--%>
<%--            <li>--%>
<%--                <div class="w3l_related_products_grid">--%>
<%--                    <div class="agile_ecommerce_tab_left mobiles_grid">--%>
<%--                        <div class="hs-wrapper hs-wrapper3">--%>
<%--                            <img src="images/34.jpg" alt=" " class="img-responsive"/>--%>
<%--                            <img src="images/35.jpg" alt=" " class="img-responsive"/>--%>
<%--                            <img src="images/27.jpg" alt=" " class="img-responsive"/>--%>
<%--                            <img src="images/28.jpg" alt=" " class="img-responsive"/>--%>
<%--                            <img src="images/37.jpg" alt=" " class="img-responsive"/>--%>
<%--                            <div class="w3_hs_bottom">--%>
<%--                                <div class="flex_ecommerce">--%>
<%--                                    <a href="#" data-toggle="modal" data-target="#myModal6"><span--%>
<%--                                            class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <h5><a href="single.html">Kid's Toy</a></h5>--%>
<%--                        <div class="simpleCart_shelfItem">--%>
<%--                            <p class="flexisel_ecommerce_cart"><span>$150</span> <i class="item_price">$100</i></p>--%>
<%--                            <form action="#" method="post">--%>
<%--                                <input type="hidden" name="cmd" value="_cart">--%>
<%--                                <input type="hidden" name="add" value="1">--%>
<%--                                <input type="hidden" name="w3ls_item" value="Kid's Toy">--%>
<%--                                <input type="hidden" name="amount" value="100.00">--%>
<%--                                <button type="submit" class="w3ls-cart">Add to cart</button>--%>
<%--                            </form>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </li>--%>
<%--            <li>--%>
<%--                <div class="w3l_related_products_grid">--%>
<%--                    <div class="agile_ecommerce_tab_left mobiles_grid">--%>
<%--                        <div class="hs-wrapper hs-wrapper3">--%>
<%--                            <img src="images/36.jpg" alt=" " class="img-responsive"/>--%>
<%--                            <img src="images/32.jpg" alt=" " class="img-responsive"/>--%>
<%--                            <img src="images/33.jpg" alt=" " class="img-responsive"/>--%>
<%--                            <img src="images/32.jpg" alt=" " class="img-responsive"/>--%>
<%--                            <img src="images/36.jpg" alt=" " class="img-responsive"/>--%>
<%--                            <div class="w3_hs_bottom">--%>
<%--                                <div class="flex_ecommerce">--%>
<%--                                    <a href="#" data-toggle="modal" data-target="#myModal5"><span--%>
<%--                                            class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <h5><a href="single.html">Vacuum Cleaner</a></h5>--%>
<%--                        <div class="simpleCart_shelfItem">--%>
<%--                            <p class="flexisel_ecommerce_cart"><span>$960</span> <i class="item_price">$920</i></p>--%>
<%--                            <form action="#" method="post">--%>
<%--                                <input type="hidden" name="cmd" value="_cart"/>--%>
<%--                                <input type="hidden" name="add" value="1"/>--%>
<%--                                <input type="hidden" name="w3ls_item" value="Vacuum Cleaner"/>--%>
<%--                                <input type="hidden" name="amount" value="920.00"/>--%>
<%--                                <button type="submit" class="w3ls-cart">Add to cart</button>--%>
<%--                            </form>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </li>--%>
<%--            <li>--%>
<%--                <div class="w3l_related_products_grid">--%>
<%--                    <div class="agile_ecommerce_tab_left mobiles_grid">--%>
<%--                        <div class="hs-wrapper hs-wrapper3">--%>
<%--                            <img src="images/38.jpg" alt=" " class="img-responsive"/>--%>
<%--                            <img src="images/37.jpg" alt=" " class="img-responsive"/>--%>
<%--                            <img src="images/27.jpg" alt=" " class="img-responsive"/>--%>
<%--                            <img src="images/28.jpg" alt=" " class="img-responsive"/>--%>
<%--                            <img src="images/37.jpg" alt=" " class="img-responsive"/>--%>
<%--                            <div class="w3_hs_bottom">--%>
<%--                                <div class="flex_ecommerce">--%>
<%--                                    <a href="#" data-toggle="modal" data-target="#myModal3"><span--%>
<%--                                            class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <h5><a href="single.html">Microwave Oven</a></h5>--%>
<%--                        <div class="simpleCart_shelfItem">--%>
<%--                            <p class="flexisel_ecommerce_cart"><span>$650</span> <i class="item_price">$645</i></p>--%>
<%--                            <form action="#" method="post">--%>
<%--                                <input type="hidden" name="cmd" value="_cart"/>--%>
<%--                                <input type="hidden" name="add" value="1"/>--%>
<%--                                <input type="hidden" name="w3ls_item" value="Microwave Oven"/>--%>
<%--                                <input type="hidden" name="amount" value="645.00"/>--%>
<%--                                <button type="submit" class="w3ls-cart">Add to cart</button>--%>
<%--                            </form>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </li>--%>
<%--            <li>--%>
<%--                <div class="w3l_related_products_grid">--%>
<%--                    <div class="agile_ecommerce_tab_left mobiles_grid">--%>
<%--                        <div class="hs-wrapper hs-wrapper3">--%>
<%--                            <img src="images/p3.jpg" alt=" " class="img-responsive"/>--%>
<%--                            <img src="images/p5.jpg" alt=" " class="img-responsive"/>--%>
<%--                            <img src="images/p4.jpg" alt=" " class="img-responsive"/>--%>
<%--                            <img src="images/p2.jpg" alt=" " class="img-responsive"/>--%>
<%--                            <img src="images/p1.jpg" alt=" " class="img-responsive"/>--%>
<%--                            <div class="w3_hs_bottom">--%>
<%--                                <div class="flex_ecommerce">--%>
<%--                                    <a href="#" data-toggle="modal" data-target="#myModal4"><span--%>
<%--                                            class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <h5><a href="single.html">Music MP3 Player</a></h5>--%>
<%--                        <div class="simpleCart_shelfItem">--%>
<%--                            <p><span>$60</span> <i class="item_price">$58</i></p>--%>
<%--                            <form action="#" method="post">--%>
<%--                                <input type="hidden" name="cmd" value="_cart"/>--%>
<%--                                <input type="hidden" name="add" value="1"/>--%>
<%--                                <input type="hidden" name="w3ls_item" value="Ultra MP3 Player"/>--%>
<%--                                <input type="hidden" name="amount" value="58.00"/>--%>
<%--                                <button type="submit" class="w3ls-cart">Add to cart</button>--%>
<%--                            </form>--%>
<%--                        </div>--%>
<%--                        <div class="mobiles_grid_pos">--%>
<%--                            <h6>New</h6>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </li>--%>
<%--        </ul>--%>


<%--    </div>--%>
<%--</div>--%>
<!-- //Related Products -->
<!-- newsletter -->
<%@include file="inewletter.jsp"%>
<!-- //newsletter -->
<!-- footer -->
<%@include file="ifooter.jsp"%>
<!-- //footer -->
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
                    changePoint: 568,
                    visibleItems: 1
                },
                landscape: {
                    changePoint: 667,
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
</body>
</html>
