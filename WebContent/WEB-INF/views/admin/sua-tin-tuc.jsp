<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="bt-libra.jsp"></jsp:include>
	<div class="wrapper">
		<jsp:include page="side-bar.jsp"></jsp:include>

		<div class="main-panel">
			<jsp:include page="header.jsp"></jsp:include>
			<div class="container">
				<h2>Sửa tin tức</h2>
				<form:form modelAttribute="tintuc"
					action="/DA-Website/sua-tin-tuc" method="POST"
					enctype="multipart/form-data">
					
					<p>ID:</p>
					<form:input path="id" readonly="true"/>
					<div class="form-group">
						<label>Tiêu đề</label>
						<form:input path="tieu_de" type="text" class="form-control"/>
					</div>
					<div class="form-group">
						<label>Ngày đăng</label>
						<form:input path="ngay_dang" type="text" class="form-control"/>
					</div>
					<p>Thể Loại</p>
					<form:select path="the_loai.ID">
						<c:forEach items="${listtheloai}" var="tl">
							<option value="${tl.ID}">${tl.ten_the_loai}</option>
						</c:forEach>
					</form:select>
					<div class="form-group">
						<label>Mô tả</label>
						<form:input path="mo_ta" type="text" class="form-control" />
					</div>
					<div class="form-group">
						<label>Nội dung</label>
						<form:textarea id="ckeditor" path="noi_dung" type="text" class="form-control" />
					</div>
					<div class="form-group">
						<label>Tác giả</label>
						<form:input path="tac_gia" type="text" class="form-control" />
					</div>
					<div class="form-group">
						<label>Lượt xem</label>
						<form:input path="so_luot_xem" type="text" class="form-control"  />
					</div>
					<p>Hình ảnh</p>
					<form:input path="file" type="file" />
					  <button type="submit" class="btn btn-success" style="float:right">Cập nhật</button>
					  
				</form:form>
			</div>
		</div>
	</div>
	<script
		src='<c:url value="/resources/layout/js/ckeditor/ckeditor.js"/>'></script>
	<script>
		CKEDITOR.replace('ckeditor');
	</script>
</body>
</html>