<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<c:forEach items="${listtintuc}" var="tt">
<div class="blog-area section-padding-0-80">
        <div class="container">
            <div class="row">
                <div class="col-12 col-lg-8">
                    <div class="blog-posts-area">

                        <!-- Single Featured Post -->
                        <div class="single-blog-post featured-post mb-30">
                            <div class="post-thumb">
                                <a href="#"><img style="width: 730px; height: 353px" src='<c:url value="/files/${tt.hinh_anh}"/>' alt=""></a>
                            </div>
                            <div class="post-data">
                                <a href="#" class="post-catagory">${tt.the_loai.ten_the_loai}</a>
                                <a href="#" class="post-title">
                                    <h6>${tt.tieu_de }</h6>
                                </a>
                                <div class="post-meta">
                                    <p class="post-author">Ngày đăng: ${tt.ngay_dang}</p>
                                    <p class="post-excerp">${tt.mo_ta}</p>
                                </div>
                            </div>
                        </div>
                        </div>
                        </div>
                        </div>
                        </div>
                        </div>
	
</c:forEach>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>