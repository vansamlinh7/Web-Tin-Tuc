<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dashboard</title>
</head>
<body>
	<div class="sidebar" data-color="purple"
		data-image="assets/img/sidebar-5.jpg">

		<!--

        Tip 1: you can change the color of the sidebar using: data-color="blue | azure | green | orange | red | purple"
        Tip 2: you can also add an image using data-image tag

    -->

		<div class="sidebar-wrapper">
			<div class="logo">
				<a href="/DA-Website/" class="simple-text"> Thời Đại Mới </a>
			</div>

			<ul class="nav">
				<li><a href='<c:url value="thongke"/>' /> <i class="pe-7s-user"></i>
					<p>DoashBoard</p> </a></li>
				<li><a
					href='<c:url value="danh-sach-nguoi-dung"/>' /> <i
					class="pe-7s-graph"></i>
					<p>Danh sách người dùng</p> </a></li>
				<li><a href='<c:url value="danh-sach-tin-tuc"/>' /> <i
					class="pe-7s-user"></i>
					<p>Quản lý bài viết</p> </a></li>


			</ul>
		</div>
	</div>
</body>
</html>