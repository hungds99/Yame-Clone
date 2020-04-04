<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Yame.vn Lựa chọn là của bạn</title>
<link href="resources/css/icons/css/all.min.css" rel="stylesheet">
<link href="resources/css/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
<link href="resources/css/styles.css" rel="stylesheet">
</head>
<body>
	<!-- Navigation -->
	<nav class="sticky-top">
		<div class="container">
			<div class="navigation">
				<div class="logo">
					<h5 class="text-danger">Yame</h5>
				</div>
				<div class="menu-bar">
					<ul>
						<li><a href="${pageContext.request.contextPath}">Trang
								Chủ</a></li>
						<li><a href="#">Sản Phẩm</a></li>
						<li><a href="#">Phân Phối</a></li>
						<li><a href="#">Thông Tin</a></li>
						<li><a href="#">Liên Hệ</a></li>
					</ul>
				</div>
				<div class="menu-action">
					<div class="cart">
						<a href="${pageContext.request.contextPath}/giohang/"> <i
							class="fas fa-cart-plus mr-3"> | ${soluongsanpham}</i>
						</a>
					</div>
					<div class="log">
						<a href="${pageContext.request.contextPath}/quanly"> <i
							class="fas fa-sign-in-alt"></i> Quản Lý
						</a>
						<!-- <a href="register.html">
                            <i class="fas fa-sign-out-alt ml-1"></i> Đăng Ký
                        </a> -->
					</div>
				</div>
			</div>
		</div>
	</nav>
	<!-- End Navigation -->

	<!-- Banner -->
	<div class="banner">
		<div class="container">
			<div class="row">
				<div class="category col-lg-3">
					<ul>
						<li class="title">Danh Mục Sản Phẩm</li>
						<c:forEach var="danhMucSanPham" items="${danhMucSanPhams}">
							<li><a
								href="${pageContext.request.contextPath}/danhmucsanpham/${danhMucSanPham.ID}">+
									${danhMucSanPham.tenDanhMuc}</a></li>
						</c:forEach>
					</ul>
				</div>
				<div class="col-lg-9">
					<!-- <img src="resources/images/banner1.jpg" alt="Banner Yame"> -->
					<div id="carouselExampleCaptions" class="carousel slide"
						data-ride="carousel" data-interval="2000">
						<ol class="carousel-indicators">
							<li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
							<li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
							<li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
						</ol>
						<div class="carousel-inner">
							<div class="carousel-item active">
								<img src="resources/images/banner1.jpg" class="d-block w-100">
							</div>
							<div class="carousel-item">
								<img src="resources/images/banner2.jpg" class="d-block w-100">
							</div>
							<div class="carousel-item">
								<img src="resources/images/banner3.jpg" class="d-block w-100">
							</div>
						</div>
						<a class="carousel-control-prev" href="#carouselExampleCaptions"
							role="button" data-slide="prev"> <span
							class="carousel-control-prev-icon" aria-hidden="true"></span> <span
							class="sr-only">Previous</span>
						</a> <a class="carousel-control-next" href="#carouselExampleCaptions"
							role="button" data-slide="next"> <span
							class="carousel-control-next-icon" aria-hidden="true"></span> <span
							class="sr-only">Next</span>
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Products -->
	<div class="products">
		<div class="container">
			<h6 id="pointer">Sản Phẩm Mới Cập Nhật</h6>
			<div class="row">
				<!-- new 1 -->
				<c:forEach var="nsp" items="${sanPhamsnew}">
					<div class="col-lg-3 text-center" data-aos="fade-right">
						<div class="card hvr-bob" style="width: 18rem;">
							<img
								src="${pageContext.request.contextPath}/resources/images/${nsp.hinhSanPham}"
								class="card-img-top" alt="...">
							<div class="card-body">
								<h6 class="card-title">${nsp.tenSanPham}</h6>
								<p class="card-text">$ ${nsp.giaTien} VND</p>
								<a href="${pageContext.request.contextPath}/sanpham/${nsp.ID}"
									class="btn btn-sm btn-primary">Xem Chi Tiết</a>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>

	<!-- Products -->
	<div class="products">
		<div class="container">
			<h6 id="pointer">Sản Phẩm Nổi Bật</h6>
			<div class="row">
				<!-- new 1 -->
				<c:forEach var="sanPham" items="${sanPhams}">
					<div class="col-lg-3 text-center" data-aos="zoom-in">
						<div class="card mb-2 hvr-bob" style="width: 18rem;">
							<img src="resources/images/${sanPham.hinhSanPham}"
								class="card-img-top" alt="...">
							<div class="card-body">
								<h6 class="card-title">${sanPham.tenSanPham}</h6>
								<p class="card-text">$ ${sanPham.giaTien} VND</p>
								<a href="sanpham/${sanPham.ID}" class="btn btn-primary btn-sm">Xem
									Chi Tiết</a>
							</div>
						</div>
					</div>
				</c:forEach>

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
						<li><img src="https://svgshare.com/i/5fq.svg" width="32"
							style="width: 32px;"></li>
						<li><img src="https://svgshare.com/i/5eA.svg" width="32"
							style="width: 32px;"></li>
						<li><img src="https://svgshare.com/i/5f_.svg" width="32"
							style="width: 32px;"></li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<!-- END OF FOOTER -->
	</footer>


	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>
	<script type="text/javascript"
		src="resources/js/jquery/jquery-3.4.1.slim.min.js"></script>
	<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
	<script>
		AOS.init();
	</script>
</body>
</html>