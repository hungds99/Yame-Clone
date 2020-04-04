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
                    <div class="cart">
                        <a href="${pageContext.request.contextPath}/giohang/">
                            <i class="fas fa-cart-plus mr-3"> | ${soluongsanpham}</i>
                        </a>
                    </div>
                    <div class="log">
                        <!-- <a href="login.html">
                            <i class="fas fa-sign-in-alt"></i> Đăng Nhập
                        </a>
                        <a href="register.html">
                            <i class="fas fa-sign-out-alt ml-1"></i> Đăng Ký
                        </a> -->
                    </div>
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
                    <li>Thông chi tiết giỏ hàng của bạn</li>
                </ul>
            </div>
        </div>
    </div>
	
	<div class="row" id="cart-empty">
        <div class="container">
           <h6>/// Giỏ Hàng Bạn Đang Trống ... </h6>
        </div>
    </div>
     <!-- Products -->
    <div class="products cart-product" id="cart-product">
        <div class="container">
            <div class="row">
            	<!-- Products -->
            	<div class="col-lg-8">
            		<h6>Chi tiết sản phẩm trong giỏ hàng</h6>
            		<table class="table">
            		  <thead>
            		  <tr>
            		  	<th>Sản Phẩm</th>
            		  	<th>Giá</th>
            		  	<th>Số Lượng</th>
            		  	<th></th>
            		  	</tr>
            		  </thead>
					  <tbody id="tb-products">
					  	<c:forEach var="giohang" items="${gioHangs}">
						  	<tr>
						 	  <%-- <td>
						      	<img src="${pageContext.request.contextPath}/resources/images/${giohang.hinhSanPham}" alt="">
						      </td> --%>
						      <td>
						      	<h6>${giohang.tenSanPham}</h6>
						      	<p>${giohang.tenMau}, ${giohang.size}</p>
						      </td>
						      <td>
						      	<p data-giatien="${giohang.giaTien}">$ ${giohang.giaTien} VND</p>
						      	</td>
						      	<td>
						      	<%-- <input type="number" min="1" id="thaydoisoluong" value="${giohang.soLuong}"> --%>
						      	${giohang.soLuong}
						      	</td>
						      	<%-- <td>
						      	<p>$ <span id="giatong">${giohang.giaTien}</span> VND</p>
						      	</td> --%>
						      <%-- 	<td>
						      		<a href="${pageContext.request.contextPath}/giohang/capnhat/${giohang.spID}" class="text-info">
						      		<i class="fas fa-pen-fancy" title="Update"></i>
						      	</a>
						      	</td> --%>
						      <td>
						      	<a href="${pageContext.request.contextPath}/giohang/xoa/${giohang.spID}" class="text-danger">
						      		<i class="fas fa-trash-alt" title="Delete"></i>
						      	</a>
						      </td>
						    </tr>
					  	</c:forEach>
					  </tbody>
					  <tfoot>
					  	<tr>
					  		<!-- <td colspan="5">Tổng giá tiền: $ -------- VND</td> -->
					  		<td colspan="5"></td>
					  	</tr>		
					  </tfoot>
					</table>
            	</div>
            	<!-- User Information -->
            	<div class="col-lg-4">
            		<h6>Thông tin người mua/nhận hàng</h6>
            		<form action="dathang" method="Post" id="formABC">
	            		<div class="form-group">
						    <label for="tenKhachHang">Tên:</label>
						    <input type="text" name="tenKhachHang" class="form-control" id="tenKhachHang" placeholder="Nhập tên người nhận ..">
					  	</div>
						<div class="form-group">
						    <label for="soDienThoai">Điện thoại liên lạc:</label>
						    <input type="text" name="soDienThoai" class="form-control" id="soDienThoai" placeholder="Nhập số điện thoại ..">
						 </div>
						 <div class="form-group">
						    <label for="email">Email:</label>
						    <input type="email" name="email" class="form-control" id="email" placeholder="Nhập email ..">
						 </div>
						 <div class="form-group">
						    <label for="diaChi">Địa chỉ nhận hàng:</label>
						    <input type="text" name="diaChi" class="form-control" id="diaChi" placeholder="Nhập địa chỉ nhận hàng ..">
						 </div>
					  	 <button type="submit" class="btn btn-primary btn-dathang">Đặt Hàng</button>
					  </form>
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
    
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery/jquery-3.4.1.min.js"></script>
    <script type="text/javascript">
    	/* Empty */
    	document.getElementById('cart-empty').style.display = "none";
		if (document.getElementsByTagName('tr').length < 3) {
			document.getElementById('cart-product').style.display = "none";
			document.getElementById('cart-empty').style.display = "block";
		};
		
		/* Chage quantity */
		$('#thaydoisoluong').change(function() {
			var tonggia = $(this).before();
			var gia = tonggia.prev().attr('data-giatien');
			var soluong = $(this).val();
			console.log(gia);
			console.log(tonggia.next().find('#giatong').text(gia*soluong));
			console.log(soluong);
		})
    	
    
    </script>
</body>
</html>