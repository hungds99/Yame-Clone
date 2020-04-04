<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Thông Tin Giỏ Hàng</title>
<link href="${pageContext.request.contextPath}/resources/css/icons/css/all.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/styles.css" rel="stylesheet">
</head>
<body>
<!-- Navigation -->
    <nav>
        <div class="container">
            <div class="navigation">
                <div class="logo">
                    <h5 class="text-danger">Yame</h5>
                </div>
                <div class="menu-bar">
                    <ul>
                        <li><a href="${pageContext.request.contextPath}">Trang Chủ</a></li>
                        <li><a href="#">Sản Phẩm</a></li>
                        <li><a href="#">Phân Phối</a></li>
                        <li><a href="#">Thông Tin</a></li>
                        <li><a href="#">Liên Hệ</a></li>
                    </ul>
                </div>
                <div class="menu-action">
                   
                </div>
            </div>
        </div>
    </nav>
    <!-- End Navigation -->
    
     <!-- Line bar -->
    <div class="row">
        <div class="container">
            <div class="line-bar">
                <ul>
                    <li><a href="${pageContext.request.contextPath}">Yame</a></li>
                </ul>
            </div>
        </div>
    </div>

     <!-- Products -->
    <div class="products cart-product">
        <div class="container">
            <div class="row">
            	<div class="text-center">
            		<img src="${pageContext.request.contextPath}/resources/images/shopping-12-512.png" alt="mua hang vui ve !">
            		<p>Chúc mừng bạn đã đặt hàng thành công ! Đơn hàng của bạn sẽ được giao cho bạn sớm nhất . Dự kiến 1 - 2 Ngày</p>
            		<a href="${pageContext.request.contextPath}">Tiếp tục mua hàng !</a>
            	</div>
            </div>
        </div>
    </div>


    <footer>
        <!-- FOOTER START -->
        <div class="footer">
            <div class="contain container">
                <div class="col">
                    <h1>Company</h1>
                    <ul>
                        <li>About</li>
                        <li>Mission</li>
                        <li>Services</li>
                        <li>Social</li>
                        <li>Get in touch</li>
                    </ul>
                </div>
                <div class="col">
                    <h1>Products</h1>
                    <ul>
                        <li>About</li>
                        <li>Mission</li>
                        <li>Services</li>
                        <li>Social</li>
                        <li>Get in touch</li>
                    </ul>
                </div>
                <div class="col">
                    <h1>Accounts</h1>
                    <ul>
                        <li>About</li>
                        <li>Mission</li>
                        <li>Services</li>
                        <li>Social</li>
                        <li>Get in touch</li>
                    </ul>
                </div>
                <div class="col">
                    <h1>Resources</h1>
                    <ul>
                        <li>Webmail</li>
                        <li>Redeem code</li>
                        <li>WHOIS lookup</li>
                        <li>Site map</li>
                        <li>Web templates</li>
                        <li>Email templates</li>
                    </ul>
                </div>
                <div class="col">
                    <h1>Support</h1>
                    <ul>
                        <li>Contact us</li>
                        <li>Web chat</li>
                        <li>Open ticket</li>
                    </ul>
                </div>
                <div class="col social">
                    <h1>Social</h1>
                    <ul>
                        <li><img src="https://svgshare.com/i/5fq.svg" width="32" style="width: 32px;"></li>
                        <li><img src="https://svgshare.com/i/5eA.svg" width="32" style="width: 32px;"></li>
                        <li><img src="https://svgshare.com/i/5f_.svg" width="32" style="width: 32px;"></li>
                    </ul>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
        <!-- END OF FOOTER -->
    </footer>
    
    
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery/jquery-3.4.1.slim.min.js"></script>
</body>
</html>