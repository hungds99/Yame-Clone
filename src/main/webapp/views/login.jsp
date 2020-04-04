<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Đăng Nhập Yame</title>
<link href="${pageContext.request.contextPath}/resources/css/style-login.css" rel="stylesheet">
</head>
<body>
	<div class="main">
		<!-- Sign in  Form -->
		<section class="sign-in">
			<div class="container">
				<div class="signin-content">
					<div class="signin-image">
						<figure>
							<img src="${pageContext.request.contextPath}/resources/images/signin-image.jpg" alt="sing up image">
						</figure>
						<a href='#' class="signup-image-link">Create an account</a>
					</div>

					<div class="signin-form">
						<h2 class="form-title">Sign in</h2>
						<h5 id="err" style="color: red;"></h5>
						<form class="register-form" id="login-form">
							<div class="form-group">
								<label for="tenDangNhap"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="tenDangNhap" id="tenDangNhap"
									placeholder="Your Name" />
							</div>
							<div class="form-group">
								<label for="matKhau"><i class="zmdi zmdi-lock"></i></label> <input
									type="password" name="matKhau" id="matKhau"
									placeholder="Password" />
							</div>
						<!-- 	<div class="form-group">
								<input type="checkbox" name="remember-me" id="remember-me"
									class="agree-term" /> <label for="remember-me"
									class="label-agree-term"><span><span></span></span>Remember
									me</label>
							</div> -->
							<div class="form-group form-button">
								<input type="button" name="signin" id="signin"
									class="form-submit" value="Login" />
							</div>
						</form>
						<div class="social-login">
							<span class="social-label">Or login with</span>
							<ul class="socials">
								<li><a href="#"><i
										class="display-flex-center zmdi zmdi-facebook"></i></a></li>
								<li><a href="#"><i
										class="display-flex-center zmdi zmdi-twitter"></i></a></li>
								<li><a href="#"><i
										class="display-flex-center zmdi zmdi-google"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</section>
	</div>
</body>
</html>