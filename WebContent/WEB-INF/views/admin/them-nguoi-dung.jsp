<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Thêm người dùng</title>
</head>
<body>
	<div class="wrapper">
		<jsp:include page="side-bar.jsp"></jsp:include>

		<div class="main-panel">
			<jsp:include page="header.jsp"></jsp:include>
			<div class="container">
				<h2>Thêm mới người dùng</h2>
				<form:form modelAttribute="nguoidung"
					action="/DA-Website/them-nguoi-dung" method="POST"
					enctype="multipart/form-data">

					<div class="form-group">
						<label>Tên Đăng Nhập</label>
						<form:input path="username" type="text" class="form-control"
							placeholder="Nhập tên đăng nhập" />
						<form:errors path="username" cssClass="errors"></form:errors>
					</div>
					<div class="form-group">
						<label>Mật khẩu</label>
						<form:input path="password" type="password" class="form-control"
							placeholder="Nhập tên mật khẩu" />
						<form:errors path="password" cssClass="errors"></form:errors>
					</div>
					<p>Chức vụ</p>
					<form:select path="chuc_vu.id">
						<!-- <option value="-1">--Chọn--</option> -->
						<c:forEach items="${chucvu}" var="c">
							<option value="${c.id}">${c.ten_chuc_vu}</option>
						</c:forEach>
					</form:select>
					<div class="form-group">
						<label>Họ và tên</label>
						<form:input path="fullname" type="text" class="form-control"
							placeholder="Nhập họ và tên" />
					</div>
					<div class="form-group">
						<label>Email</label>
						<form:input path="email" type="email" class="form-control"
							placeholder="Nhập email" />
					</div>
					<div>
						<p>Hình ảnh</p>
						<form:input path="file" type="file" />
						<form:errors path="hinh_anh" cssClass="errors"></form:errors>
					</div>
					<button type="submit" class="btn btn-success" style="float: right">Thêm
						mới</button>
				</form:form>
			</div>
		</div>
	</div>
</body>
</html>