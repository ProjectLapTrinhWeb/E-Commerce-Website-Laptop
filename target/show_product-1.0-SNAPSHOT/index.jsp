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
    <link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic'
          rel='stylesheet' type='text/css'>
    <!-- //web fonts -->
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
<%@include file="ibanner.jsp"%>
>
<!-- //banner -->
<!-- banner-bottom -->
<div class="banner-bottom">
    <div class="container">
        <div class="col-md-5 wthree_banner_bottom_left">
            <div class="video-img">
                <a class="play-icon popup-with-zoom-anim" href="#small-dialog">
                    <span class="glyphicon glyphicon-expand" aria-hidden="true"></span>
                </a>
            </div>
            <!-- pop-up-box -->
            <script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
            <!--//pop-up-box -->
            <div id="small-dialog" class="mfp-hide">
                <!-- <iframe src="https://www.youtube.com/embed/ZQa6GUVnbNM"></iframe> -->
                <iframe width="971" height="546" src="https://www.youtube.com/embed/Cno6Nuupj4Q" frameborder="0"
                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                        allowfullscreen></iframe>
            </div>
            <script>
                $(document).ready(function () {
                    $('.popup-with-zoom-anim').magnificPopup({
                        type: 'inline',
                        fixedContentPos: false,
                        fixedBgPos: true,
                        overflowY: 'auto',
                        closeBtnInside: true,
                        preloader: false,
                        midClick: true,
                        removalDelay: 300,
                        mainClass: 'my-mfp-zoom-in'
                    });

                });
            </script>
        </div>
        <div class="col-md-7 wthree_banner_bottom_right">
            <div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
                <ul id="myTab" class="nav nav-tabs" role="tablist">
                    <li role="presentation" class="active"><a href="#home" id="home-tab" role="tab" data-toggle="tab"
                                                              aria-controls="home">Laptop Gaming</a></li>
                    <li role="presentation"><a href="#audio" role="tab" id="audio-tab" data-toggle="tab"
                                               aria-controls="audio">Laptop Office</a></li>
                    <li role="presentation"><a href="#video" role="tab" id="video-tab" data-toggle="tab"
                                               aria-controls="video">Chuột</a></li>
                    <li role="presentation"><a href="#tv" role="tab" id="tv-tab" data-toggle="tab" aria-controls="tv">Bàn
                        Phím</a></li>
                    <!-- <li role="presentation"><a href="#kitchen" role="tab" id="kitchen-tab" data-toggle="tab" aria-controls="kitchen">Kitchen</a></li> -->
                </ul>
                <div id="myTabContent" class="tab-content">
                    <div role="tabpanel" class="tab-pane fade active in" id="home" aria-labelledby="home-tab">
                        <div class="agile_ecommerce_tabs">
                            <%--								begin product--%>
                            <c:forEach items="${List}" var="d">
                                <div class="col-md-4 agile_ecommerce_tab_left">
                                    <div class="hs-wrapper">
                                        <img src="${d.img}" alt=" " class="img-responsive"/>
                                        <img src="${d.img}" alt=" " class="img-responsive"/>
                                        <img src="${d.img}" alt=" " class="img-responsive"/>
                                        <img src="${d.img}" alt=" " class="img-responsive"/>
                                        <img src="${d.img}" alt=" " class="img-responsive"/>
                                        <img src="${d.img}" alt=" " class="img-responsive"/>
                                        <img src="${d.img}" alt=" " class="img-responsive"/>
                                        <!-- <img src="images/5.jpg" alt=" " class="img-responsive" /> -->
                                        <div class="w3_hs_bottom">
                                            <ul>
                                                <li>
                                                    <a href="#" data-toggle="modal" data-target="#myModal"><span
                                                            class="glyphicon glyphicon-eye-open"
                                                            aria-hidden="true"></span></a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <h5><a href="single.html">${d.name}</a></h5>
                                    <div class="simpleCart_shelfItem">
                                        <p><span>${d.price}</span> <i class="item_price">${d.priceSale}</i></p>
                                        <form action="#" method="post">
                                            <input type="hidden" name="cmd" value="_cart"/>
                                            <input type="hidden" name="add" value="1"/>
                                            <input type="hidden" name="w3ls_item" value="Laptop cực mạnh"/>
                                            <input type="hidden" name="amount" value="19.999.999"/>
                                            <button type="submit" class="w3ls-cart">Thêm vào giỏ hàng</button>
                                        </form>
                                    </div>
                                </div>
                            </c:forEach>
                            <%--								end product --%>

                            <%--								<div class="col-md-4 agile_ecommerce_tab_left">--%>
                            <%--									<div class="hs-wrapper">--%>
                            <%--										<img src="images/laptoppintrau02.jpg" alt=" " class="img-responsive" />--%>
                            <%--										<img src="images/laptoppintrau01.jpg" alt=" " class="img-responsive" />--%>
                            <%--										<img src="images/laptoppintrau03.jpg" alt=" " class="img-responsive" />--%>
                            <%--										<img src="images/laptoppintrau04.jpg" alt=" " class="img-responsive" />--%>
                            <%--										<img src="images/laptoppintrau05.jpg" alt=" " class="img-responsive" />--%>
                            <%--										<img src="images/laptoppintrau06.jpg" alt=" " class="img-responsive" />--%>
                            <%--										<img src="images/laptoppintrau07.jpg" alt=" " class="img-responsive" />--%>
                            <%--										<!-- <img src="images/6.jpg" alt=" " class="img-responsive" /> -->--%>
                            <%--										<div class="w3_hs_bottom">--%>
                            <%--											<ul>--%>
                            <%--												<li>--%>
                            <%--													<a href="#" data-toggle="modal" data-target="#myModal"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>--%>
                            <%--												</li>--%>
                            <%--											</ul>--%>
                            <%--										</div>--%>
                            <%--									</div>--%>
                            <%--									<h5><a href="single.html">Laptop pin trâu</a></h5>--%>
                            <%--									<div class="simpleCart_shelfItem">--%>
                            <%--										<p><span>16.000.000 VNĐ</span> <i class="item_price">13.999.999VNĐ</i></p>--%>
                            <%--										<form action="#" method="post">--%>
                            <%--											<input type="hidden" name="cmd" value="_cart" />--%>
                            <%--											<input type="hidden" name="add" value="1" /> --%>
                            <%--											<input type="hidden" name="w3ls_item" value="Laptop pin trâu" /> --%>
                            <%--											<input type="hidden" name="amount" value="13.999.999" />   --%>
                            <%--											<button type="submit" class="w3ls-cart">Thêm vào giỏ hàng</button>--%>
                            <%--										</form>--%>
                            <%--									</div>--%>
                            <%--								</div>--%>
                            <%--								<div class="col-md-4 agile_ecommerce_tab_left">--%>
                            <%--									<div class="hs-wrapper">--%>
                            <%--										<img src="images/laptopsieure01.jpg" alt=" " class="img-responsive" />--%>
                            <%--										<img src="images/laptopsieure02.jpg" alt=" " class="img-responsive" />--%>
                            <%--										<img src="images/laptopsieure03.jpg" alt=" " class="img-responsive" />--%>
                            <%--										<img src="images/laptopsieure04.jpg" alt=" " class="img-responsive" />--%>
                            <%--										<img src="images/laptopsieure05.jpg" alt=" " class="img-responsive" />--%>
                            <%--										<img src="images/laptopsieure06.jpg" alt=" " class="img-responsive" />--%>
                            <%--										<img src="images/laptopsieure07.jpg" alt=" " class="img-responsive" />--%>
                            <%--										<!-- <img src="images/6.jpg" alt=" " class="img-responsive" /> -->--%>
                            <%--										<div class="w3_hs_bottom">--%>
                            <%--											<ul>--%>
                            <%--												<li>--%>
                            <%--													<a href="#" data-toggle="modal" data-target="#myModal"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>--%>
                            <%--												</li>--%>
                            <%--											</ul>--%>
                            <%--										</div>--%>
                            <%--									</div>--%>
                            <%--									<h5><a href="single.html">Laptop siêu rẻ</a></h5>--%>
                            <%--									<div class="simpleCart_shelfItem">--%>
                            <%--										<p><span>8.000.000 VNĐ</span> <i class="item_price">5.999.999VNĐ</i></p>--%>
                            <%--										<form action="#" method="post">--%>
                            <%--											<input type="hidden" name="cmd" value="_cart" />--%>
                            <%--											<input type="hidden" name="add" value="1" /> --%>
                            <%--											<input type="hidden" name="w3ls_item" value="Laptop siêu rẻ" /> --%>
                            <%--											<input type="hidden" name="amount" value="5.999.999" />   --%>
                            <%--											<button type="submit" class="w3ls-cart">Thêm vào giỏ hàng</button>--%>
                            <%--										</form>--%>
                            <%--									</div>--%>
                            <%--								</div>--%>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                    <div role="tabpanel" class="tab-pane fade" id="audio" aria-labelledby="audio-tab">
                        <div class="agile_ecommerce_tabs">
                            <div class="col-md-4 agile_ecommerce_tab_left">
                                <div class="hs-wrapper">
                                    <img src="images/laptopvp01.jpg" alt=" " class="img-responsive"/>
                                    <img src="images/laptopvp02.jpg" alt=" " class="img-responsive"/>
                                    <img src="images/laptopvp03.jpg" alt=" " class="img-responsive"/>
                                    <img src="images/laptopvp04.jpg" alt=" " class="img-responsive"/>
                                    <img src="images/laptopvp05.jpg" alt=" " class="img-responsive"/>
                                    <img src="images/laptopvp06.jpg" alt=" " class="img-responsive"/>
                                    <img src="images/laptopvp07.jpg" alt=" " class="img-responsive"/>
                                    <!-- <img src="images/9.jpg" alt=" " class="img-responsive" /> -->
                                    <div class="w3_hs_bottom">
                                        <ul>
                                            <li>
                                                <a href="#" data-toggle="modal" data-target="#myModal1"><span
                                                        class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <h5><a href="single.html">Laptop phổ thông</a></h5>
                                <div class="simpleCart_shelfItem">
                                    <p><span>10.000.000VNĐ</span> <i class="item_price">7.999.999VNĐ</i></p>
                                    <form action="#" method="post">
                                        <input type="hidden" name="cmd" value="_cart"/>
                                        <input type="hidden" name="add" value="1"/>
                                        <input type="hidden" name="w3ls_item" value="Laptop siêu rẻ"/>
                                        <input type="hidden" name="amount" value="7.999.999"/>
                                        <button type="submit" class="w3ls-cart">Thêm vào giỏ hàng</button>
                                    </form>
                                </div>
                            </div>
                            <div class="col-md-4 agile_ecommerce_tab_left">
                                <div class="hs-wrapper">
                                    <img src="images/laptopvpp01.jpg" alt=" " class="img-responsive"/>
                                    <img src="images/laptopvpp02.jpg" alt=" " class="img-responsive"/>
                                    <img src="images/laptopvpp03.jpg" alt=" " class="img-responsive"/>
                                    <img src="images/laptopvpp04.jpg" alt=" " class="img-responsive"/>
                                    <img src="images/laptopvpp05.jpg" alt=" " class="img-responsive"/>
                                    <img src="images/laptopvpp06.jpg" alt=" " class="img-responsive"/>
                                    <img src="images/laptopvpp07.jpg" alt=" " class="img-responsive"/>
                                    <!-- <img src="images/9.jpg" alt=" " class="img-responsive" /> -->
                                    <div class="w3_hs_bottom">
                                        <ul>
                                            <li>
                                                <a href="#" data-toggle="modal" data-target="#myModal1"><span
                                                        class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <h5><a href="single.html">Laptop công sở</a></h5>
                                <div class="simpleCart_shelfItem">
                                    <p><span>8.000.000VNĐ</span> <i class="item_price">5.999.999VNĐ</i></p>
                                    <form action="#" method="post">
                                        <input type="hidden" name="cmd" value="_cart"/>
                                        <input type="hidden" name="add" value="1"/>
                                        <input type="hidden" name="w3ls_item" value="Laptop công sở"/>
                                        <input type="hidden" name="amount" value="5.999.999"/>
                                        <button type="submit" class="w3ls-cart">Thêm vào giỏ hàng</button>
                                    </form>
                                </div>
                            </div>
                            <div class="col-md-4 agile_ecommerce_tab_left">
                                <div class="hs-wrapper">
                                    <img src="images/laptopvppp01.jpg" alt=" " class="img-responsive"/>
                                    <img src="images/laptopvppp02.jpg" alt=" " class="img-responsive"/>
                                    <img src="images/laptopvppp03.jpg" alt=" " class="img-responsive"/>
                                    <img src="images/laptopvppp04.jpg" alt=" " class="img-responsive"/>
                                    <img src="images/laptopvppp05.jpg" alt=" " class="img-responsive"/>
                                    <img src="images/laptopvppp06.jpg" alt=" " class="img-responsive"/>
                                    <img src="images/laptopvppp07.jpg" alt=" " class="img-responsive"/>
                                    <!-- <img src="images/9.jpg" alt=" " class="img-responsive" /> -->
                                    <div class="w3_hs_bottom">
                                        <ul>
                                            <li>
                                                <a href="#" data-toggle="modal" data-target="#myModal1"><span
                                                        class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <h5><a href="single.html">Laptop kỹ thuật</a></h5>
                                <div class="simpleCart_shelfItem">
                                    <p><span>20.000.000VNĐ</span> <i class="item_price">17.999.999VNĐ</i></p>
                                    <form action="#" method="post">
                                        <input type="hidden" name="cmd" value="_cart"/>
                                        <input type="hidden" name="add" value="1"/>
                                        <input type="hidden" name="w3ls_item" value="Laptop kỹ thuật"/>
                                        <input type="hidden" name="amount" value="17.999.999"/>
                                        <button type="submit" class="w3ls-cart">Thêm vào giỏ hàng</button>
                                    </form>
                                </div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                    <div role="tabpanel" class="tab-pane fade" id="video" aria-labelledby="video-tab">
                        <div class="agile_ecommerce_tabs">
                            <div class="col-md-4 agile_ecommerce_tab_left">
                                <div class="hs-wrapper">
                                    <img src="images/11.jpg" alt=" " class="img-responsive"/>
                                    <img src="images/12.jpg" alt=" " class="img-responsive"/>
                                    <img src="images/13.jpg" alt=" " class="img-responsive"/>
                                    <img src="images/11.jpg" alt=" " class="img-responsive"/>
                                    <img src="images/12.jpg" alt=" " class="img-responsive"/>
                                    <img src="images/13.jpg" alt=" " class="img-responsive"/>
                                    <img src="images/11.jpg" alt=" " class="img-responsive"/>
                                    <img src="images/12.jpg" alt=" " class="img-responsive"/>
                                    <div class="w3_hs_bottom">
                                        <ul>
                                            <li>
                                                <a href="#" data-toggle="modal" data-target="#myModal2"><span
                                                        class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <h5><a href="single.html">Laptop</a></h5>
                                <div class="simpleCart_shelfItem">
                                    <p><span>$880</span> <i class="item_price">$850</i></p>
                                    <form action="#" method="post">
                                        <input type="hidden" name="cmd" value="_cart"/>
                                        <input type="hidden" name="add" value="1"/>
                                        <input type="hidden" name="w3ls_item" value="Laptop"/>
                                        <input type="hidden" name="amount" value="850.00"/>
                                        <button type="submit" class="w3ls-cart">Add to cart</button>
                                    </form>
                                </div>
                            </div>
                            <div class="col-md-4 agile_ecommerce_tab_left">
                                <div class="hs-wrapper">
                                    <img src="images/12.jpg" alt=" " class="img-responsive"/>
                                    <img src="images/11.jpg" alt=" " class="img-responsive"/>
                                    <img src="images/13.jpg" alt=" " class="img-responsive"/>
                                    <img src="images/11.jpg" alt=" " class="img-responsive"/>
                                    <img src="images/12.jpg" alt=" " class="img-responsive"/>
                                    <img src="images/13.jpg" alt=" " class="img-responsive"/>
                                    <img src="images/11.jpg" alt=" " class="img-responsive"/>
                                    <img src="images/12.jpg" alt=" " class="img-responsive"/>
                                    <div class="w3_hs_bottom">
                                        <ul>
                                            <li>
                                                <a href="#" data-toggle="modal" data-target="#myModal2"><span
                                                        class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <h5><a href="single.html">Notebook</a></h5>
                                <div class="simpleCart_shelfItem">
                                    <p><span>$290</span> <i class="item_price">$280</i></p>
                                    <form action="#" method="post">
                                        <input type="hidden" name="cmd" value="_cart"/>
                                        <input type="hidden" name="add" value="1"/>
                                        <input type="hidden" name="w3ls_item" value="Notebook"/>
                                        <input type="hidden" name="amount" value="280.00"/>
                                        <button type="submit" class="w3ls-cart">Add to cart</button>
                                    </form>
                                </div>
                            </div>
                            <div class="col-md-4 agile_ecommerce_tab_left">
                                <div class="hs-wrapper">
                                    <img src="images/13.jpg" alt=" " class="img-responsive"/>
                                    <img src="images/11.jpg" alt=" " class="img-responsive"/>
                                    <img src="images/12.jpg" alt=" " class="img-responsive"/>
                                    <img src="images/11.jpg" alt=" " class="img-responsive"/>
                                    <img src="images/12.jpg" alt=" " class="img-responsive"/>
                                    <img src="images/13.jpg" alt=" " class="img-responsive"/>
                                    <img src="images/11.jpg" alt=" " class="img-responsive"/>
                                    <img src="images/12.jpg" alt=" " class="img-responsive"/>
                                    <div class="w3_hs_bottom">
                                        <ul>
                                            <li>
                                                <a href="#" data-toggle="modal" data-target="#myModal2"><span
                                                        class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <h5><a href="single.html">Kid's Toy</a></h5>
                                <div class="simpleCart_shelfItem">
                                    <p><span>$120</span> <i class="item_price">$80</i></p>
                                    <form action="#" method="post">
                                        <input type="hidden" name="cmd" value="_cart"/>
                                        <input type="hidden" name="add" value="1"/>
                                        <input type="hidden" name="w3ls_item" value="Kid's Toy"/>
                                        <input type="hidden" name="amount" value="80.00"/>
                                        <button type="submit" class="w3ls-cart">Add to cart</button>
                                    </form>
                                </div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                    <div role="tabpanel" class="tab-pane fade" id="tv" aria-labelledby="tv-tab">
                        <div class="agile_ecommerce_tabs">
                            <div class="col-md-4 agile_ecommerce_tab_left">
                                <div class="hs-wrapper">
                                    <img src="images/14.jpg" alt=" " class="img-responsive"/>
                                    <img src="images/15.jpg" alt=" " class="img-responsive"/>
                                    <img src="images/16.jpg" alt=" " class="img-responsive"/>
                                    <img src="images/14.jpg" alt=" " class="img-responsive"/>
                                    <img src="images/15.jpg" alt=" " class="img-responsive"/>
                                    <img src="images/16.jpg" alt=" " class="img-responsive"/>
                                    <img src="images/14.jpg" alt=" " class="img-responsive"/>
                                    <img src="images/15.jpg" alt=" " class="img-responsive"/>
                                    <div class="w3_hs_bottom">
                                        <ul>
                                            <li>
                                                <a href="#" data-toggle="modal" data-target="#myModal3"><span
                                                        class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <h5><a href="single.html">Refrigerator</a></h5>
                                <div class="simpleCart_shelfItem">
                                    <p><span>$950</span> <i class="item_price">$820</i></p>
                                    <form action="#" method="post">
                                        <input type="hidden" name="cmd" value="_cart"/>
                                        <input type="hidden" name="add" value="1"/>
                                        <input type="hidden" name="w3ls_item" value="Refrigerator"/>
                                        <input type="hidden" name="amount" value="820.00"/>
                                        <button type="submit" class="w3ls-cart">Add to cart</button>
                                    </form>
                                </div>
                            </div>
                            <div class="col-md-4 agile_ecommerce_tab_left">
                                <div class="hs-wrapper">
                                    <img src="images/15.jpg" alt=" " class="img-responsive"/>
                                    <img src="images/14.jpg" alt=" " class="img-responsive"/>
                                    <img src="images/16.jpg" alt=" " class="img-responsive"/>
                                    <img src="images/14.jpg" alt=" " class="img-responsive"/>
                                    <img src="images/15.jpg" alt=" " class="img-responsive"/>
                                    <img src="images/16.jpg" alt=" " class="img-responsive"/>
                                    <img src="images/14.jpg" alt=" " class="img-responsive"/>
                                    <img src="images/15.jpg" alt=" " class="img-responsive"/>
                                    <div class="w3_hs_bottom">
                                        <ul>
                                            <li>
                                                <a href="#" data-toggle="modal" data-target="#myModal3"><span
                                                        class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <h5><a href="single.html">LED Tv</a></h5>
                                <div class="simpleCart_shelfItem">
                                    <p><span>$700</span> <i class="item_price">$680</i></p>
                                    <form action="#" method="post">
                                        <input type="hidden" name="cmd" value="_cart"/>
                                        <input type="hidden" name="add" value="1"/>
                                        <input type="hidden" name="w3ls_item" value="LED Tv"/>
                                        <input type="hidden" name="amount" value="680.00"/>
                                        <button type="submit" class="w3ls-cart">Add to cart</button>
                                    </form>
                                </div>
                            </div>
                            <div class="col-md-4 agile_ecommerce_tab_left">
                                <div class="hs-wrapper">
                                    <img src="images/16.jpg" alt=" " class="img-responsive"/>
                                    <img src="images/14.jpg" alt=" " class="img-responsive"/>
                                    <img src="images/15.jpg" alt=" " class="img-responsive"/>
                                    <img src="images/14.jpg" alt=" " class="img-responsive"/>
                                    <img src="images/15.jpg" alt=" " class="img-responsive"/>
                                    <img src="images/16.jpg" alt=" " class="img-responsive"/>
                                    <img src="images/14.jpg" alt=" " class="img-responsive"/>
                                    <img src="images/15.jpg" alt=" " class="img-responsive"/>
                                    <div class="w3_hs_bottom">
                                        <ul>
                                            <li>
                                                <a href="#" data-toggle="modal" data-target="#myModal3"><span
                                                        class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <h5><a href="single.html">Washing Machine</a></h5>
                                <div class="simpleCart_shelfItem">
                                    <p><span>$520</span> <i class="item_price">$510</i></p>
                                    <form action="#" method="post">
                                        <input type="hidden" name="cmd" value="_cart"/>
                                        <input type="hidden" name="add" value="1"/>
                                        <input type="hidden" name="w3ls_item" value="Washing Machine"/>
                                        <input type="hidden" name="amount" value="510.00"/>
                                        <button type="submit" class="w3ls-cart">Add to cart</button>
                                    </form>
                                </div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                    <div role="tabpanel" class="tab-pane fade" id="kitchen" aria-labelledby="kitchen-tab">
                        <div class="agile_ecommerce_tabs">
                            <div class="col-md-4 agile_ecommerce_tab_left">
                                <div class="hs-wrapper">
                                    <img src="images/17.jpg" alt=" " class="img-responsive"/>
                                    <img src="images/18.jpg" alt=" " class="img-responsive"/>
                                    <img src="images/19.jpg" alt=" " class="img-responsive"/>
                                    <img src="images/17.jpg" alt=" " class="img-responsive"/>
                                    <img src="images/18.jpg" alt=" " class="img-responsive"/>
                                    <img src="images/19.jpg" alt=" " class="img-responsive"/>
                                    <img src="images/17.jpg" alt=" " class="img-responsive"/>
                                    <img src="images/18.jpg" alt=" " class="img-responsive"/>
                                    <div class="w3_hs_bottom">
                                        <ul>
                                            <li>
                                                <a href="#" data-toggle="modal" data-target="#myModal4"><span
                                                        class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <h5><a href="single.html">Grinder</a></h5>
                                <div class="simpleCart_shelfItem">
                                    <p><span>$460</span> <i class="item_price">$450</i></p>
                                    <form action="#" method="post">
                                        <input type="hidden" name="cmd" value="_cart"/>
                                        <input type="hidden" name="add" value="1"/>
                                        <input type="hidden" name="w3ls_item" value="Grinder"/>
                                        <input type="hidden" name="amount" value="450.00"/>
                                        <button type="submit" class="w3ls-cart">Add to cart</button>
                                    </form>
                                </div>
                            </div>
                            <div class="col-md-4 agile_ecommerce_tab_left">
                                <div class="hs-wrapper">
                                    <img src="images/18.jpg" alt=" " class="img-responsive"/>
                                    <img src="images/17.jpg" alt=" " class="img-responsive"/>
                                    <img src="images/19.jpg" alt=" " class="img-responsive"/>
                                    <img src="images/17.jpg" alt=" " class="img-responsive"/>
                                    <img src="images/18.jpg" alt=" " class="img-responsive"/>
                                    <img src="images/19.jpg" alt=" " class="img-responsive"/>
                                    <img src="images/17.jpg" alt=" " class="img-responsive"/>
                                    <img src="images/18.jpg" alt=" " class="img-responsive"/>
                                    <div class="w3_hs_bottom">
                                        <ul>
                                            <li>
                                                <a href="#" data-toggle="modal" data-target="#myModal4"><span
                                                        class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <h5><a href="single.html">Water Purifier</a></h5>
                                <div class="simpleCart_shelfItem">
                                    <p><span>$390</span> <i class="item_price">$350</i></p>
                                    <form action="#" method="post">
                                        <input type="hidden" name="cmd" value="_cart"/>
                                        <input type="hidden" name="add" value="1"/>
                                        <input type="hidden" name="w3ls_item" value="Water Purifier"/>
                                        <input type="hidden" name="amount" value="350.00"/>
                                        <button type="submit" class="w3ls-cart">Add to cart</button>
                                    </form>
                                </div>
                            </div>
                            <div class="col-md-4 agile_ecommerce_tab_left">
                                <div class="hs-wrapper">
                                    <img src="images/19.jpg" alt=" " class="img-responsive"/>
                                    <img src="images/17.jpg" alt=" " class="img-responsive"/>
                                    <img src="images/18.jpg" alt=" " class="img-responsive"/>
                                    <img src="images/17.jpg" alt=" " class="img-responsive"/>
                                    <img src="images/18.jpg" alt=" " class="img-responsive"/>
                                    <img src="images/19.jpg" alt=" " class="img-responsive"/>
                                    <img src="images/17.jpg" alt=" " class="img-responsive"/>
                                    <img src="images/18.jpg" alt=" " class="img-responsive"/>
                                    <div class="w3_hs_bottom">
                                        <ul>
                                            <li>
                                                <a href="#" data-toggle="modal" data-target="#myModal4"><span
                                                        class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <h5><a href="single.html">Coffee Maker</a></h5>
                                <div class="simpleCart_shelfItem">
                                    <p><span>$250</span> <i class="item_price">$220</i></p>
                                    <form action="#" method="post">
                                        <input type="hidden" name="cmd" value="_cart"/>
                                        <input type="hidden" name="add" value="1"/>
                                        <input type="hidden" name="w3ls_item" value="Coffee Maker"/>
                                        <input type="hidden" name="amount" value="220.00"/>
                                        <button type="submit" class="w3ls-cart">Add to cart</button>
                                    </form>
                                </div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="clearfix"></div>
    </div>
</div>
<!-- //banner-bottom -->
<!-- modal-video -->
<div class="modal video-modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModal">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
                </button>
            </div>
            <section>
                <div class="modal-body">
                    <div class="col-md-5 modal_body_left">
                        <img src="images/3.jpg" alt=" " class="img-responsive"/>
                    </div>
                    <div class="col-md-7 modal_body_right">
                        <h4>The Best Mobile Phone 3GB</h4>
                        <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
                            commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum
                            dolore eu fugiat nulla pariatur. </p>
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
                            <p><span>$380</span> <i class="item_price">$350</i></p>
                            <form action="#" method="post">
                                <input type="hidden" name="cmd" value="_cart">
                                <input type="hidden" name="add" value="1">
                                <input type="hidden" name="w3ls_item" value="Mobile Phone1">
                                <input type="hidden" name="amount" value="350.00">
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
<div class="modal video-modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModal1">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
                </button>
            </div>
            <section>
                <div class="modal-body">
                    <div class="col-md-5 modal_body_left">
                        <img src="images/9.jpg" alt=" " class="img-responsive"/>
                    </div>
                    <div class="col-md-7 modal_body_right">
                        <h4>Multimedia Home Accessories</h4>
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
                            <p><span>$180</span> <i class="item_price">$150</i></p>
                            <form action="#" method="post">
                                <input type="hidden" name="cmd" value="_cart">
                                <input type="hidden" name="add" value="1">
                                <input type="hidden" name="w3ls_item" value="Headphones">
                                <input type="hidden" name="amount" value="150.00">
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
<div class="modal video-modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModal2">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
                </button>
            </div>
            <section>
                <div class="modal-body">
                    <div class="col-md-5 modal_body_left">
                        <img src="images/11.jpg" alt=" " class="img-responsive"/>
                    </div>
                    <div class="col-md-7 modal_body_right">
                        <h4>Quad Core Colorful Laptop</h4>
                        <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
                            commodo consequat.Duis aute irure dolor in
                            reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint
                            occaecat cupidatat non proident, sunt in culpa qui officia deserunt.</p>
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
                            <p><span>$880</span> <i class="item_price">$850</i></p>
                            <form action="#" method="post">
                                <input type="hidden" name="cmd" value="_cart">
                                <input type="hidden" name="add" value="1">
                                <input type="hidden" name="w3ls_item" value="Laptop">
                                <input type="hidden" name="amount" value="850.00">
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
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
                </button>
            </div>
            <section>
                <div class="modal-body">
                    <div class="col-md-5 modal_body_left">
                        <img src="images/14.jpg" alt=" " class="img-responsive"/>
                    </div>
                    <div class="col-md-7 modal_body_right">
                        <h4>Cool Single Door Refrigerator </h4>
                        <p>Duis aute irure dolor inreprehenderit in voluptate velit esse cillum dolore
                            eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui
                            officia deserunt mollit anim id est laborum.</p>
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
                            <p><span>$950</span> <i class="item_price">$820</i></p>
                            <form action="#" method="post">
                                <input type="hidden" name="cmd" value="_cart">
                                <input type="hidden" name="add" value="1">
                                <input type="hidden" name="w3ls_item" value="Mobile Phone1">
                                <input type="hidden" name="amount" value="820.00">
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
                        <img src="images/17.jpg" alt=" " class="img-responsive"/>
                    </div>
                    <div class="col-md-7 modal_body_right">
                        <h4>New Model Mixer Grinder</h4>
                        <p>Excepteur sint occaecat laboris nisi ut aliquip ex ea
                            commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum
                            dolore
                            eu fugiat nulla pariatur cupidatat non proident, sunt in culpa qui officia deserunt mollit
                            anim id est laborum.</p>
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
                            <p><span>$460</span> <i class="item_price">$450</i></p>
                            <form action="#" method="post">
                                <input type="hidden" name="cmd" value="_cart">
                                <input type="hidden" name="add" value="1">
                                <input type="hidden" name="w3ls_item" value="Mobile Phone1">
                                <input type="hidden" name="amount" value="450.00">
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
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
                </button>
            </div>
            <section>
                <div class="modal-body">
                    <div class="col-md-5 modal_body_left">
                        <img src="images/36.jpg" alt=" " class="img-responsive"/>
                    </div>
                    <div class="col-md-7 modal_body_right">
                        <h4>Dry Vacuum Cleaner</h4>
                        <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
                            commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum
                            dolore eu fugiat nulla pariatur. Excepteur sint occaecat
                            cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
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
                        <img src="images/37.jpg" alt=" " class="img-responsive"/>
                    </div>
                    <div class="col-md-7 modal_body_right">
                        <h4>Kitchen & Dining Accessories</h4>
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
                            <p><span>$280</span> <i class="item_price">$250</i></p>
                            <form action="#" method="post">
                                <input type="hidden" name="cmd" value="_cart">
                                <input type="hidden" name="add" value="1">
                                <input type="hidden" name="w3ls_item" value="Induction Stove">
                                <input type="hidden" name="amount" value="250.00">
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
<!-- //modal-video -->
<!-- banner-bottom1 -->
<div class="banner-bottom1">
    <div class="agileinfo_banner_bottom1_grids">
        <div class="col-md-7 agileinfo_banner_bottom1_grid_left">
            <h3>Khuyến mãi khai trương với<span>20% <i>Giảm giá</i></span></h3>
            <a href="products.html">Shop Now</a>
        </div>
        <div class="col-md-5 agileinfo_banner_bottom1_grid_right">
            <h4>hot deal</h4>
            <div class="timer_wrap">
                <div id="counter"></div>
            </div>
            <script src="js/jquery.countdown.js"></script>
            <script src="js/script.js"></script>
        </div>
        <div class="clearfix"></div>
    </div>
</div>
<!-- //banner-bottom1 -->
<!-- special-deals -->
<div class="special-deals">
    <div class="container">
        <h2>Special Deals</h2>
        <div class="w3agile_special_deals_grids">
            <div class="col-md-7 w3agile_special_deals_grid_left">
                <div class="w3agile_special_deals_grid_left_grid">
                    <img src="images/21.jpg" alt=" " class="img-responsive"/>
                    <div class="w3agile_special_deals_grid_left_grid_pos1">
                        <h5>30%<span>Off/-</span></h5>
                    </div>
                    <div class="w3agile_special_deals_grid_left_grid_pos">
                        <h4>We Offer <span>Best Products</span></h4>
                    </div>
                </div>
                <div class="wmuSlider example1">
                    <div class="wmuSliderWrapper">
                        <article style="position: absolute; width: 100%; opacity: 0;">
                            <div class="banner-wrap">
                                <div class="w3agile_special_deals_grid_left_grid1">
                                    <img src="images/hao.jpg" alt=" " class="img-responsive"/>
                                    <p>Trên hòn đảo, nếu chạy thẳng một hướng duy nhất... chắc chắn sẽ là biển</p>
                                    <h4>Hào Kyln</h4>
                                </div>
                            </div>
                        </article>
                        <article style="position: absolute; width: 100%; opacity: 0;">
                            <div class="banner-wrap">
                                <div class="w3agile_special_deals_grid_left_grid1">
                                    <img src="images/t2.png" alt=" " class="img-responsive"/>
                                    <p>Thành công không bao giờ có dấu chân của kẻ... chân mày</p>
                                    <h4>Michael</h4>
                                </div>
                            </div>
                        </article>
                        <article style="position: absolute; width: 100%; opacity: 0;">
                            <div class="banner-wrap">
                                <div class="w3agile_special_deals_grid_left_grid1">
                                    <img src="images/t3.png" alt=" " class="img-responsive"/>
                                    <p>Có chí thì nên... đánh cái nền màu gì đây</p>
                                    <h4>Rosy</h4>
                                </div>
                            </div>
                        </article>
                    </div>
                </div>
                <script src="js/jquery.wmuSlider.js"></script>
                <script>
                    $('.example1').wmuSlider();
                </script>
            </div>
            <div class="col-md-5 w3agile_special_deals_grid_right">
                <img src="images/banner-index01.jpg" alt=" " class="img-responsive"/>
                <div class="w3agile_special_deals_grid_right_pos">
                    <h4>Ưu đãi <br>sinh viên 20/11</h4>
                    <h5>Khuyến <br>mãi<span>tới</span> 30%</h5>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>
<!-- //special-deals -->
<!-- new-products -->
<div class="new-products">
    <div class="container">
        <h3>Sản phẩm mới</h3>
        <div class="agileinfo_new_products_grids">
            <div class="col-md-3 agileinfo_new_products_grid">
                <div class="agile_ecommerce_tab_left agileinfo_new_products_grid1">
                    <div class="hs-wrapper hs-wrapper1">
                        <img src="images/laptopcucmanh01.jpg" alt=" " class="img-responsive"/>
                        <img src="images/laptopcucmanh02.jpg" alt=" " class="img-responsive"/>
                        <img src="images/laptopcucmanh03.jpg" alt=" " class="img-responsive"/>
                        <img src="images/laptopcucmanh04.jpg" alt=" " class="img-responsive"/>
                        <img src="images/laptopcucmanh05.jpg" alt=" " class="img-responsive"/>
                        <div class="w3_hs_bottom w3_hs_bottom_sub">
                            <ul>
                                <li>
                                    <a href="#" data-toggle="modal" data-target="#myModal2"><span
                                            class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <h5><a href="single.html">Macbook Air</a></h5>
                    <div class="simpleCart_shelfItem">
                        <p><span>42.000.000VNĐ</span> <i class="item_price">36.000.000VNĐ</i></p>
                        <form action="#" method="post">
                            <input type="hidden" name="cmd" value="_cart">
                            <input type="hidden" name="add" value="1">
                            <input type="hidden" name="w3ls_item" value="Red Laptop">
                            <input type="hidden" name="amount" value="500.00">
                            <button type="submit" class="w3ls-cart">Thêm vào giỏ hàng</button>
                        </form>
                    </div>
                </div>
            </div>
            <div class="col-md-3 agileinfo_new_products_grid">
                <div class="agile_ecommerce_tab_left agileinfo_new_products_grid1">
                    <div class="hs-wrapper hs-wrapper1">
                        <img src="images/laptoppintrau01.jpg" alt=" " class="img-responsive"/>
                        <img src="images/laptoppintrau02.jpg" alt=" " class="img-responsive"/>
                        <img src="images/laptoppintrau03.jpg" alt=" " class="img-responsive"/>
                        <img src="images/laptoppintrau04.jpg" alt=" " class="img-responsive"/>
                        <img src="images/laptoppintrau05.jpg" alt=" " class="img-responsive"/>
                        <div class="w3_hs_bottom w3_hs_bottom_sub">
                            <ul>
                                <li>
                                    <a href="#" data-toggle="modal" data-target="#myModal"><span
                                            class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <h5><a href="single.html">Asus Vivobook</a></h5>
                    <div class="simpleCart_shelfItem">
                        <p><span>25.000.000VNĐ</span> <i class="item_price">22.999.999VNĐ</i></p>
                        <form action="#" method="post">
                            <input type="hidden" name="cmd" value="_cart">
                            <input type="hidden" name="add" value="1">
                            <input type="hidden" name="w3ls_item" value="Black Phone">
                            <input type="hidden" name="amount" value="370.00">
                            <button type="submit" class="w3ls-cart">Thêm vào giỏ hàng</button>
                        </form>
                    </div>
                </div>
            </div>
            <div class="col-md-3 agileinfo_new_products_grid">
                <div class="agile_ecommerce_tab_left agileinfo_new_products_grid1">
                    <div class="hs-wrapper hs-wrapper1">
                        <img src="images/laptopsieure01.jpg" alt=" " class="img-responsive"/>
                        <img src="images/laptopsieure02.jpg" alt=" " class="img-responsive"/>
                        <img src="images/laptopsieure03.jpg" alt=" " class="img-responsive"/>
                        <img src="images/laptopsieure04.jpg" alt=" " class="img-responsive"/>
                        <img src="images/laptopsieure05.jpg" alt=" " class="img-responsive"/>
                        <div class="w3_hs_bottom w3_hs_bottom_sub">
                            <ul>
                                <li>
                                    <a href="#" data-toggle="modal" data-target="#myModal5"><span
                                            class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <h5><a href="single.html">Laptop Acer</a></h5>
                    <div class="simpleCart_shelfItem">
                        <p><span>19.000.000VNĐ</span> <i class="item_price">17.999.999VNĐ</i></p>
                        <form action="#" method="post">
                            <input type="hidden" name="cmd" value="_cart">
                            <input type="hidden" name="add" value="1">
                            <input type="hidden" name="w3ls_item" value="Kids Toy">
                            <input type="hidden" name="amount" value="100.00">
                            <button type="submit" class="w3ls-cart">Thêm vào giỏ hàng</button>
                        </form>
                    </div>
                </div>
            </div>
            <div class="col-md-3 agileinfo_new_products_grid">
                <div class="agile_ecommerce_tab_left agileinfo_new_products_grid1">
                    <div class="hs-wrapper hs-wrapper1">
                        <img src="images/laptopvp01.jpg" alt=" " class="img-responsive"/>
                        <img src="images/laptopvp02.jpg" alt=" " class="img-responsive"/>
                        <img src="images/laptopvp03.jpg" alt=" " class="img-responsive"/>
                        <img src="images/laptopvp04.jpg" alt=" " class="img-responsive"/>
                        <img src="images/laptopvp05.jpg" alt=" " class="img-responsive"/>
                        <div class="w3_hs_bottom w3_hs_bottom_sub">
                            <ul>
                                <li>
                                    <a href="#" data-toggle="modal" data-target="#myModal6"><span
                                            class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <h5><a href="single.html">Laptop Dell</a></h5>
                    <div class="simpleCart_shelfItem">
                        <p><span>28.000.000VNĐ</span> <i class="item_price">25.999.999VNĐ</i></p>
                        <form action="#" method="post">
                            <input type="hidden" name="cmd" value="_cart">
                            <input type="hidden" name="add" value="1">
                            <input type="hidden" name="w3ls_item" value="Induction Stove">
                            <input type="hidden" name="amount" value="250.00">
                            <button type="submit" class="w3ls-cart">Thêm vào giỏ hàng</button>
                        </form>
                    </div>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>
<!-- //new-products -->
<!-- top-brands -->
<div class="top-brands">
    <div class="container">
        <h3>Hãng Sản Xuất</h3>
        <div class="sliderfig">
            <ul id="flexiselDemo1">
                <li>
                    <img src="images/Acer.jpg" alt=" " class="img-responsive"/>
                </li>
                <li>
                    <img src="images/macbook.jpg" alt=" " class="img-responsive"/>
                </li>
                <li>
                    <img src="images/msi.jpg" alt=" " class="img-responsive"/>
                </li>
                <li>
                    <img src="images/dell.png" alt=" " class="img-responsive"/>
                </li>
                <li>
                    <img src="images/asus.png" alt=" " class="img-responsive"/>
                </li>
            </ul>
        </div>
        <script type="text/javascript">
            $(window).load(function () {
                $("#flexiselDemo1").flexisel({
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
    <div class="clearfix"></div>
</div>
<!-- //top-brands -->
<!-- newsletter -->
<%@include file="inewletter.jsp"%>>
<!-- //newsletter -->
<!-- footer -->
<%@include file="ifooter.jsp"%>
<!-- //footer -->
</body>
</html>