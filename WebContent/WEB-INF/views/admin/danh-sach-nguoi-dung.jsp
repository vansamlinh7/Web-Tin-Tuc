<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>Danh Sách Người Dùng</title>
</head>
<body>
<jsp:include page="bt-libra.jsp"></jsp:include>
	<div class="wrapper">
		<jsp:include page="side-bar.jsp"></jsp:include>
		<div class="main-panel">
			<jsp:include page="header.jsp"></jsp:include>
			<div class="example">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
						<h2>Danh sách người dùng</h2>
						<table class="table table-striped">
							<tdead>
								<tr>
									<th>Tài khoán</th>
									<th>Chức vụ</th>
									<th>Họ và tên</th>
									<th>Email</th>
									<th>Hình ảnh</th>
									<th>Hành Động</th>
								</tr>
							</tdead>
							<tbody>
								<c:forEach items="${listnguoidung}" var="listuser">
									<tr>
										<td>${listuser.username}</td>
										<td>${listuser.chuc_vu.ten_chuc_vu}</td>
										<td>${listuser.fullname}</td>
										<td>${listuser.email}</td>
										<td><img widtd="50px" height="50px"
											src='<c:url value="/files/${listuser.hinh_anh}"/>' /></td>
										<td><a
											href='<c:url value="/sua-nguoi-dung/${listuser.id}"/>'>Sửa</a></td>
										<td><a
											href='<c:url value="/xoa-nguoi-dung/${listuser.id}"/>'>Xóa</a></td>
									</tr>
								</c:forEach>


							</tbody>
							<a class="btn btn-primary btn-sm" style="margin-bottom:10px" href='<c:url value="/tdem-nguoi-dung"/>'>Thêm người dùng</a>
						</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>