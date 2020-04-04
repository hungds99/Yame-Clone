<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Quản Lý Yame.me</title>
<link
	href="${pageContext.request.contextPath}/resources/css/icons/css/all.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/css/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/css/sb-admin-2.min.css"
	rel="stylesheet">
	
	<style type="text/css">
	body {
		color: black;
	}


</style>
</head>
<body id="page-top" class="sidebar-toggled">

	<!-- Page Wrapper -->
	<div id="wrapper">

		<!-- Sidebar -->
		<ul
			class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion toggled"
			id="accordionSidebar">

			<a
				class="sidebar-brand d-flex align-items-center justify-content-center"
				href="${pageContext.request.contextPath}/quanly">
				<div class="sidebar-brand-icon rotate-n-15">
					<i class="fas fa-laugh-wink"></i>
				</div>
				<div class="sidebar-brand-text mx-3">
					SB Admin <sup>2</sup>
				</div>
			</a>

			<hr class="sidebar-divider my-0">

			<li class="nav-item active"><a class="nav-link"
				href="index.html"> <i class="fas fa-fw fa-tachometer-alt"></i> <span>Quản Lý Sản Phẩm</span></a></li>

			<hr class="sidebar-divider">
			<li class="nav-item active"><a class="nav-link"
				href="danhsachdongho.html"> <i
					class="fas fa-fw fa-tachometer-alt"></i> <span>Quản Lý Danh Mục</span></a></li>
			
			<hr class="sidebar-divider">
			<li class="nav-item active"><a class="nav-link"
				href="chitietdongho.html"> <i
					class="fas fa-fw fa-tachometer-alt"></i> <span>Quản Lý Mẫu & Size</span></a></li>

			<div class="text-center d-none d-md-inline">
				<button class="rounded-circle border-0" id="sidebarToggle"></button>
			</div>

		</ul>
		<!-- End of Sidebar -->

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">

			<!-- Main Content -->
			<div id="content">

				<!-- Topbar -->
				<nav
					class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

					<!-- Sidebar Toggle (Topbar) -->
					<button id="sidebarToggleTop"
						class="btn btn-link d-md-none rounded-circle mr-3">
						<i class="fa fa-bars"></i>
					</button>

					<!-- Topbar Navbar -->
					<ul class="navbar-nav ml-auto">

						<!-- <div class="topbar-divider d-none d-sm-block"></div> -->

						<!-- Nav Item - User Information -->
						<li class="nav-item dropdown no-arrow"><a
							class="nav-link dropdown-toggle" href="${pageContext.request.contextPath}/" id="userDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <span
								class="mr-2 d-none d-lg-inline text-gray-600">Back Home</span> 
								<!-- <img class="img-profile rounded-circle"
								src="https://source.unsplash.com/QAB-WJcbgJk/60x60"> -->
								<i class="fas fa-home fa-lg"></i>
						</a> <!-- Dropdown - User Information -->
							<div
								class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
								aria-labelledby="userDropdown">
								<a class="dropdown-item" href="#" data-toggle="modal"
									data-target="#logoutModal"> <i
									class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
									Logout
								</a>
							</div></li>

					</ul>

				</nav>
				<!-- End of Topbar -->

				<!-- Begin Page Content -->
				<div class="container-fluid">

					<!-- Content Row -->
					<div class="row">
						<div class="col-lg-4">
							<h4>Danh Sách Sản Phẩm</h4>
							<form
								action="${pageContext.request.contextPath}/quanly"
								method="Post" enctype="multipart/form-data">
								<div class="form-group">
									<label for="tensanpham">Tên Sản Phẩm : </label> <input
										type="text" name="tensanpham" class="form-control"
										id="tensanpham" placeholder="Nhập tên sản phẩm..">
								</div>
								<div class="form-group">
									<label for="giatien">Giá Tiền : </label> <input type="text"
										name="giatien" class="form-control" id="giatien"
										placeholder="Nhập giá tiền..">
								</div>
								<div class="form-group" id="andanhmuc">
									<label for="danhmucsanpham">Danh Mục Sản Phẩm : </label> <select
										class="form-control" name="danhmucsanpham" id="danhmucsanpham">
										<c:forEach items="${danhMucSanPhams}" var="dmsp">
											<option value="${dmsp.ID}">${dmsp.tenDanhMuc}</option>
										</c:forEach>
									</select>
								</div>
								<div class="form-group">
									<label for="mota">Mô Tả : </label>
									<textarea class="form-control" name="mota" id="mota" rows="3"
										placeholder="Nhập mô tả.."></textarea>
								</div>
								<div class="form-group" id="anhinhanh">
									<label for="hinhsanpham">Hình Sản Phẩm : </label> <input
										type="file" name="file" class="form-control-file"
										id="hinhsanpham">
								</div>
								<div class="form-group">
									<button class="btn btn-primary" type="submit"
										id="themmoisanpham">Thêm Sản Phẩm</button>
									<div class="btn btn-primary" id="capnhatsanpham">Cập Nhật
										Sản Phẩm</div>
								</div>
							</form>
						</div>
						<div class="col-lg-8">
							<!-- Search form -->
							<form class="form-inline md-form form-sm mb-4" method="get" action="${pageContext.request.contextPath}/quanly/timkiem">
							  <input class="form-control form-control-sm mr-3 w-75" name="term" type="text" placeholder="Search"
							    aria-label="Search">
							  <i class="fas fa-search" aria-hidden="true"></i>
							</form>
							<table class="table table-hover text-center">
								<thead>
									<tr>
										<th scope="col">#</th>
										<th scope="col">Tên Sản Phẩm</th>
										<th scope="col">Giá Tiền</th>
										<th scope="col" colspan="3">Thao Tác</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="sanPham" items="${sanPhams}"
										varStatus="loopCounter">
										<tr>
											<th scope="row">${loopCounter.count}</th>
											<td>${sanPham.tenSanPham}</td>
											<td>${sanPham.giaTien}</td>
											<td><a href="${pageContext.request.contextPath}/quanly/xoasanpham/${sanPham.ID}"><button
														class="btn btn-danger btn-sm">Xóa</button></a></td>
											<td>
												<button id="btn-sua" class="btn btn-secondary btn-sm"
													data-id="${sanPham.ID}">Sửa</button>
											</td>
											<td><a class="btn btn-info btn-sm"
												href="${pageContext.request.contextPath}/quanlychitiet/${sanPham.ID}">Chi Tiết Sản Phẩm</a></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>

				</div>
				<!-- /.container-fluid -->

			</div>
			<!-- End of Main Content -->

			<!-- Footer -->
			<footer class="sticky-footer bg-white">
				<div class="container my-auto">
					<div class="copyright text-center my-auto">
						<span>Copyright &copy; Your Website 2019</span>
					</div>
				</div>
			</footer>
			<!-- End of Footer -->

		</div>
		<!-- End of Content Wrapper -->

	</div>
	<!-- End of Page Wrapper -->

	<!-- Scroll to Top Button-->
	<a class="scroll-to-top rounded" href="#page-top"> <i
		class="fas fa-angle-up"></i>
	</a>

	<!-- Logout Modal-->
	<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
					<button class="close" type="button" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">Select "Logout" below if you are ready
					to end your current session.</div>
				<div class="modal-footer">
					<button class="btn btn-secondary" type="button"
						data-dismiss="modal">Cancel</button>
					<a class="btn btn-primary" href="login.html">Logout</a>
				</div>
			</div>
		</div>
	</div>

	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/jquery/jquery-3.4.1.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/admins.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/sb-admin-2.min.js"></script>
</body>
</html>