<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet"
	href='<c:url value="/resources/layout/css/stylelogin.css"/>'>
<link rel="stylesheet"
	href='<c:url value="/resources/layout/css/style.css"/>'>
<link rel="icon"
	href='<c:url value="/resources/img/core-img/favicon.ico"/>'>
<%-- <link rel="stylesheet" href='<c:url value="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" />'> --%>
<link rel="stylesheet"
	href='<c:url value="https://use.fontawesome.com/releases/v5.3.1/css/all.css"/>'>
<%-- <link rel="stylesheet" href='<c:url value="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"/>'> --%>
</head>
<body>
	<!-- login form -->
	<div class="card login-form position-fixed">
		<div class="card-header">
			<h3>Đăng nhập</h3>
			<div class="d-flex justify-content-end social_icon">
				<span><i class="fab fa-facebook-square"></i></span> <span><i
					class="fab fa-google-plus-square"></i></span> <span><i
					class="fab fa-twitter-square"></i></span>
			</div>
		</div>
		<div class="card-body">
			<form name='loginForm'
				action="<c:url value='/j_spring_security_check' />" method='POST'>
				<div class="input-group form-group">
					<div class="input-group-prepend">
						<span class="input-group-text"><i class="fas fa-user"></i></span>
					</div>
					<input type="text" name="username" class="form-control"
						placeholder="Tên đăng nhập">

				</div>
				<div class="input-group form-group">
					<div class="input-group-prepend">
						<span class="input-group-text"><i class="fas fa-key"></i></span>
					</div>
					<input type="password" name="password" class="form-control"
						placeholder="Mật khẩu">
				</div>
				<div class="row align-items-center remember">
					<input type="checkbox">Ghi nhớ mật khẩu
				</div>
				<div class="form-group">
					<input type="submit" value="Xác nhận"
						class="btn float-right login_btn">
				</div>
				<input type="hidden" name="${_csrf.parameterName}"
					value="${_csrf.token}" />
			</form>
		</div>
		<div class="card-footer">
			<div class="d-flex justify-content-center links">
				Chưa có tài khoản?<a href="#">Đăng kí</a>
			</div>
			<div class="d-flex justify-content-center">
				<a href="#">Quên mật khẩu?</a>
			</div>
			<div class="d-flex justify-content-end">
				<a href="#" class="close-model btn btn-success">Đóng</a>
			</div>
		</div>
	</div>



	<div class="card sign-up-form position-fixed">
		<div class="card-header">
			<h3>Đăng Ký</h3>
			<div class="d-flex justify-content-end social_icon">
				<span><i class="fab fa-facebook-square"></i></span> <span><i
					class="fab fa-google-plus-square"></i></span> <span><i
					class="fab fa-twitter-square"></i></span>
			</div>
		</div>
		<div class="card-body">
			<form>
				<div class="input-group form-group">
					<div class="input-group-prepend">
						<span class="input-group-text"><i class="fas fa-user"></i></span>
					</div>
					<input type="text" class="form-control" placeholder="Tên đăng nhập">

				</div>
				<div class="input-group form-group">
					<div class="input-group-prepend">
						<span class="input-group-text"><i class="fas fa-key"></i></span>
					</div>
					<input type="password" class="form-control" placeholder="Mật khẩu">
				</div>
				<div class="row align-items-center remember">
					<input type="checkbox">Ghi nhớ mật khẩu
				</div>
				<div class="form-group">
					<input type="submit" value="Xác nhận"
						class="btn float-right login_btn">
				</div>
			</form>
		</div>
		<div class="card-footer">
			<div class="d-flex justify-content-center links">
				Chưa có tài khoản?<a href="#">Đăng kí</a>
			</div>
			<div class="d-flex justify-content-center">
				<a href="#">Quên mật khẩu?</a>
			</div>
			<div class="d-flex justify-content-end">
				<a href="#" class="close-model btn btn-success">Đóng</a>
			</div>
		</div>
	</div>



	<!-- ##### Header Area Start ##### -->
	<header class="header-area">

		<!-- Top Header Area -->
		<div class="top-header-area">
			<div class="container">
				<div class="row">
					<div class="col-12">
						<div
							class="top-header-content d-flex align-items-center justify-content-between">
							<!-- Logo -->
							<div class="logo" style="max-width: 150px">
								<a href="<c:url value ="/"/>"> <img
									src='<c:url value="/resources/layout/img/core-img/logo1.png"/>'
									alt=""></a>
							</div>

							<!-- Login Search Area -->
							<div class="login-search-area d-flex align-items-center">
								<!-- Login -->
								<div class="login d-flex">
								<c:if test="${pageContext.request.userPrincipal.name != null}">
										<div>
											<a href='<c:url value="danh-sach-nguoi-dung"/> '> Quản lí
												tài khoản </a> <a> Xin chào
												${pageContext.request.userPrincipal.name} | </a> <a
												href="javascript:formSubmit()"> Đăng xuất</a>
										</div>
									</c:if>
									<c:if test="${pageContext.request.userPrincipal.name == null}">
										<div class="login d-flex">
											<a href="#" class="login-btn">Đăng nhập</a> <a href="#"
												class="sign-up-btn">Đăng ký</a> <a
												href='<c:url value="lienhe"/> '> Liên hệ</a>
										</div>
									</c:if>

								</div>
								<!-- Search Form -->
								<div class="search-form">
									<form action="#" method="get">
										<input type="text" name="search" class="form-control"
											placeholder="Tìm kiếm">
										<button type="submit">
											<i class="fa fa-search" aria-hidden="true"></i>
										</button>
									</form>
								</div>


							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- Navbar Area -->
		<div class="newspaper-main-menu" id="stickyMenu">
			<div class="classy-nav-container breakpoint-off">
				<div class="container">
					<!-- Menu -->
					<nav class="classy-navbar justify-content-between"
						id="newspaperNav">

						<!-- Logo -->
						<div class="logo">
							<a href="index.html"><img src="img/core-img/logo.png" alt=""></a>
						</div>

						<!-- Navbar Toggler -->
						<div class="classy-navbar-toggler">
							<span class="navbarToggler"><span></span><span></span><span></span></span>
						</div>

						<!-- Menu -->
						<div class="classy-menu">

							<!-- close btn -->
							<div class="classycloseIcon">
								<div class="cross-wrap">
									<span class="top"></span><span class="bottom"></span>
								</div>
							</div>

							<!-- Nav Start -->
							<div class="classynav">
								<ul>
									<c:forEach items="${listtheloai}" var="menu">
										<li><a href="<c:url value = "/category/${menu.ID}"/>">${menu.ten_the_loai}</a></li>
									</c:forEach>
								</ul>
							</div>
							<!-- Nav End -->
						</div>
					</nav>
				</div>
			</div>
		</div>
	</header>
		<!-- Đăng xuất -->
	<c:url value="/j_spring_security_logout" var="logoutUrl" />
	<form action="${logoutUrl}" method="post" id="logoutForm">
		<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />
	</form>
	<script>
		function formSubmit() {
			document.getElementById("logoutForm").submit();
		}
	</script>


	<script
		src='<c:url value="/resources/layout/js/bootstrap/popper.min.js"/>'></script>
	<script src='<c:url value="/resources/layout/js/plugins/plugins.js"/>'></script>
	<script src='<c:url value="/resources/layout/js/active.js"/>'></script>
	<script src='<c:url value="/resources/layout/js/modal-form.js"/>'></script>




</body>
</html>