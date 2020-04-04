<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Quản Lý Yame.me</title>
<link href="${pageContext.request.contextPath}/resources/css/icons/css/all.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/css/sb-admin-2.min.css"
	rel="stylesheet">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
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
							class="nav-link dropdown-toggle" href="#" id="userDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <span
								class="mr-2 d-none d-lg-inline text-gray-600 small">
									Luna</span> <img class="img-profile rounded-circle"
								src="https://source.unsplash.com/QAB-WJcbgJk/60x60">
						</a> <!-- Dropdown - User Information -->
							<div
								class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
								aria-labelledby="userDropdown">
								<a class="dropdown-item" href="/" data-toggle="modal"
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
						<div class="col-lg-10">
							<div class="row">
								<div class="col-lg-4">
									<img
										src="${pageContext.request.contextPath}/resources/images/${sanPham.hinhSanPham}"
										class="card-img-top" alt="San Pham Quan Ao">
								</div>
								<div class="col-lg-8">
									<div class="row">
										<div class="col-lg-7">
											<h6 id="tenSanPham" data-spID="${sanPham.ID}">${sanPham.tenSanPham}</h6>
											<p id="giaTien" data-giaTien="${sanPham.giaTien}">Giá Tiền: ${sanPham.giaTien} VND</p>
										</div>

										<div class="col-lg-5">
											<a href="#" data-toggle="modal" data-target="#chitietsanpham"><i
												class="text-primary mb-2 fas fa-plus-circle"> Thêm Chi Tiết Sản Phẩm</i></a>
											<!-- Modal -->
											<div class="modal fade" id="chitietsanpham" tabindex="-1" role="dialog" aria-labelledby="chitietsanphamForm" aria-hidden="true">
												<div class="modal-dialog" role="document">
													<div class="modal-content">
														<div class="modal-header">
															<h5 class="modal-title" id="chitietsanphamForm">Thêm Chi Tiết Sản Phẩm</h5>
															<button type="button" class="close" data-dismiss="modal"
																aria-label="Close">
																<span aria-hidden="true">&times;</span>
															</button>
														</div>
														<div class="modal-body">
															<h5 class="text-success text-center" id="tenSanPham" data-spID="${sanPham.ID}">${sanPham.tenSanPham}</h5>
														 <div class="form-group">
														    <label>Chọn Màu :</label>
														    <select class="form-control" id="chonmau">
														      <c:forEach items="${mauSanPhams}" var="mauSP">
														      	<option value="${mauSP.ID}">${mauSP.tenMau}</option>
														      </c:forEach>
														    </select>
															</div>
														   <div class="form-group">
															    <label>Chọn Kích Thước :</label>
															    <select class="form-control" id="chonkichthuoc">
															      <c:forEach items="${sizeSanPhams}" var="sizeSP">
															      	<option value="${sizeSP.ID}">${sizeSP.size}</option>
															      </c:forEach>
															    </select>
															  </div>
															  <div class="form-group">
															    <label>Số Lượng : </label>
															    <input type="text" id="chonsoluong" placeholder="Nhập số lượng..." class="form-control">
															  </div>
															   <div class="form-group">
															    <label>Ngày Nhập : </label>
															    <input type="date" id="chonngaynhap" class="form-control">
															  </div>
															</div>
															<div class="modal-footer">
																<button type="button" class="btn btn-secondary"
																	data-dismiss="modal">Đóng</button>
																<button id="themchitietmoi" class="btn btn-primary">Lưu</button>
															</div>
													
													
														
													</div>
												</div>
											</div>
											<a
												href="${pageContext.request.contextPath}/quanlychitiet/themmau"
												data-toggle="modal" data-target="#mau"><i
												class="text-success mb-2 fas fa-plus-circle"> Thêm Màu
													Sản Phẩm</i></a>
											<!-- Thêm Màu Modal -->
											<div class="modal fade" id="mau" tabindex="-1" role="dialog"
												aria-labelledby="mauForm" aria-hidden="true">
												<div class="modal-dialog" role="document">
													<div class="modal-content">
														<div class="modal-header">
															<h5 class="modal-title" id="mauForm">Thêm Màu</h5>
															<button type="button" class="close" data-dismiss="modal"
																aria-label="Close">
																<span aria-hidden="true">&times;</span>
															</button>
														</div>

				
															<div class="modal-body">
																<div class="form-group">
																	<label>Màu :</label> 
																	<input
																		type="text" class="form-control"
																		id="tenMaumoi" name="tenMau"
																		placeholder="Nhập màu ...">
																</div>

															</div>
															<div class="modal-footer">
																<button type="button" class="btn btn-secondary"
																	data-dismiss="modal">Đóng</button>
																<button class="btn btn-primary" id="themmau">Lưu</button>
															</div>
											


													</div>
												</div>
											</div>
											<a
												href="${pageContext.request.contextPath}/quanlychitiet/themsize"
												data-toggle="modal" data-target="#size"><i
												class="text-success fas fa-plus-circle"> Thêm Size Sản
													Phẩm</i></a>
											<!-- Modal -->
											<div class="modal fade" id="size" tabindex="-1" role="dialog"
												aria-labelledby="sizeForm" aria-hidden="true">
												<div class="modal-dialog" role="document">
													<div class="modal-content">
														<div class="modal-header">
															<h5 class="modal-title" id="sizeForm">Thêm Size</h5>
															<button type="button" class="close" data-dismiss="modal"
																aria-label="Close">
																<span aria-hidden="true">&times;</span>
															</button>
														</div>
														
															<div class="modal-body">
																<div class="form-group">
																	<label>Kích thước :</label> <input
																		type="text" class="form-control"
																		id="sizemoi" name="size"
																		placeholder="Nhập kích thước ...">
																</div>

															</div>
															<div class="modal-footer">
																<button type="button" class="btn btn-secondary"
																	data-dismiss="modal">Đóng</button>
																<button id="themsize" class="btn btn-primary">Lưu</button>
															</div>
														
													</div>
												</div>
											</div>
										</div>

									</div>

									<table class="table">
										<thead>
											<tr>
												<td><h6>Màu sản phẩm</h6></td>
												<td><h6>Kích thước</h6></td>
												<td><h6>Số lượng</h6></td>
												<td><h6>Ngày nhập</h6></td>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="chitietsanpham" items="${sanPham.chiTietSanPhams}">
												<tr>
													<td class="mauSanPham"
														data-mauID="${chitietsanpham.mauSanPham.ID}">${chitietsanpham.mauSanPham.tenMau}</td>
													<td class="sizeSanPham"
														data-sizeID="${chitietsanpham.sizeSanPham.ID}">${chitietsanpham.sizeSanPham.size}</td>
													<td class="soLuong"
														data-soLuong="${chitietsanpham.soLuong}">${chitietsanpham.soLuong}</td>
													<td class="ngayNhap"
														data-ngayNhap="${chitietsanpham.ngayNhap}">${chitietsanpham.ngayNhap}</td>
													<td>
														<%-- <a href="${pageContext.request.contextPath}/quanlychitiet/${chitietsanpham.ID}/suachitiet">
															<i class="text- fas fa-pencil-alt">Sửa</i>
														</a>  --%>
														<%-- <a href="${pageContext.request.contextPath}/quanlychitiet/${chitietsanpham.ID}/xoachitiet" id="xoachitietsp">
															<i class="text-danger fas fa-trash-alt">Xóa</i>
														</a> --%>
														<button type="button" class="btn btn-primary" id="xoact" data-id="${chitietsanpham.ID}">Xóa</button>
													</td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
							</div>
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
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/jquery/jquery-3.4.1.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/managers.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/sb-admin-2.min.js"></script>
</body>
</html>