<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<html>
<body>
	<h1>HTTP Status 403 - Truy cập bị từ chối</h1>

	<c:choose>
		<c:when test="${empty username}">
		  <h2>Bạn không đủ quyền hạn để truy cập trang này!</h2>
		</c:when>
		<c:otherwise>
		  <h2>Username : ${username} <br/>
                    Bạn không đủ quyền hạn để truy cập trang này!</h2>
		</c:otherwise>
	</c:choose>

</body>
</html>