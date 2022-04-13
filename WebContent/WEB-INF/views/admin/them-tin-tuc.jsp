<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js"></script>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<style>
input[type="date"] {
	position: relative;
	color: white;
}

input[type="date"]:before {
	position: absolute;
	top: 3px;
	left: 3px;
	content: attr(data-date);
	display: inline-block;
	color: black;
}

input[type="date"]::-webkit-datetime-edit, input::-webkit-inner-spin-button,
	input::-webkit-clear-button {
	display: none;
}

input[type="date"]::-webkit-calendar-picker-indicator {
	position: absolute;
	top: 3px;
	right: 0;
	color: black;
	opacity: 1;
}
</style>
</head>
<body>
	<c:set var="now" value="<%=new java.util.Date()%>" />
	<div class="wrapper">
		<jsp:include page="side-bar.jsp"></jsp:include>

		<div class="main-panel">
			<jsp:include page="header.jsp"></jsp:include>
			<div class="container">
				<h2>Thêm tin tức</h2>
				<form:form modelAttribute="tintuc" action="" method="POST"
					enctype="multipart/form-data">
					<div class="form-group">
						<label>Thể loại</label>
						<form:select path="the_loai.ID">
							<c:forEach items="${listtheloai}" var="tl">
								<option value="${tl.ID}">${tl.ten_the_loai}</option>
							</c:forEach>
						</form:select>
					</div>
					<div class="form-group">
						<label>Tiêu đề</label>
						<form:input path="tieu_de" type="text" class="form-control"
							placeholder="Tiêu đề" />
					</div>
					<div class="form-group">
						<label>Ngày đăng</label>
						<form:input path="ngay_dang" class="form-control" type="date"
							data-date="" data-date-format="YYYY-MM-DD" value="2015-08-09" />
					</div>
					<div class="form-group">
						<label>Mô tả</label>
						<form:input path="mo_ta" type="text" class="form-control"
							placeholder="Mô tả" />
					</div>
					<div class="form-group">
						<label>Nội dung</label>
						<form:textarea id="ckeditor" path="noi_dung" type="text" class="form-control"
							placeholder="Nội dung" />
					</div>
					<div class="form-group">
						<label>Tác giả</label>
						<form:input path="tac_gia" type="text" class="form-control"
							placeholder="Tác giả" />
					</div>
					<div>
						<p>Hình ảnh</p>
						<form:input path="file" type="file" />
					</div>
					<div>
						<p>Lượt xem</p>
						<form:input path="so_luot_xem" type="text" />
					</div>
					<button type="submit" class="btn btn-success" style="float: right">Thêm
						mới</button>
				</form:form>
			</div>
		</div>
	</div>
	<script>
		$("input[type='date']").on(
				"change",
				function() {
					this.setAttribute("data-date", moment(this.value,
							"YYYY-MM-DD").format(
							this.getAttribute("data-date-format")))
				}).trigger("change")
	</script>
	<script
		src='<c:url value="/resources/layout/js/ckeditor/ckeditor.js"/>'></script>
	<script>
		CKEDITOR.replace('ckeditor');
	</script>
</body>
</html>