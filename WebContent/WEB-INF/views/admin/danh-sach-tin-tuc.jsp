<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.container{
		width:100% !important;
	}
</style>
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
						<h2>Danh sách tin tức</h2>
						<div class="w-100" style="overflow:hidden">
						<table class="table table-striped">
							<thead>
								<tr>
									<th>ID</th>
									<th>Thể loại</th>
									<th>Tiêu đề</th>
									<th>Ngày đăng</th>
									<th>Mô tả</th>
									<th>Hình ảnh</th>
									<th>Lượt xem</th>
									<th>Hành động</th>
								</tr>
							</thead>

							<tbody>
								<c:forEach items="${listtintuc}" var="listnews">
									<tr>
										<th>${listnews.id}</th>
										<th>${listnews.the_loai.ten_the_loai}</th>
										<th>${listnews.tieu_de}</th>
										<th>${listnews.ngay_dang}</th>
										<th>${listnews.mo_ta}</th>
										<th><img width="100px" height="100px" src='<c:url value="/files/${listnews.hinh_anh }"/>' /></th>
										<%-- <th>${listnews.hinh_anh }</th> --%>
										<th>${listnews.so_luot_xem}</th>
										<th><a href='<c:url value="/xoa-tin-tuc/${listnews.id}"></c:url>'>xóa</a></th>
										<th><a
											href='<c:url value="/sua-tin-tuc/${listnews.id}"/>'>Sửa</a></th>
									</tr>
								</c:forEach>
							</tbody>
							<a href='<c:url value="/them-tin-tuc"/>'>Thêm tin tức</a>
						</table>
						</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>