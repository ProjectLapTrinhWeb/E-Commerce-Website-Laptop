<%--
  Created by IntelliJ IDEA.
  User: hp
  Date: 27/1/2021
  Time: 12:30 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="vn.edu.nlu.Beans.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>
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
<% User u = (User) session.getAttribute("User");
    if (u != null ) {
        request.getRequestDispatcher("index.jsp").forward(request, response);
    } else {
        response.sendRedirect("index.html");
}%>
</body>
</html>