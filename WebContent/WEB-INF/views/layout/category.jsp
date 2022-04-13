<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="tag" uri="/WEB-INF/taglibs/customTaglib.tld" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<c:forEach items="${postsById}" var="post">
<title>Tin ${post.the_loai.ten_the_loai}</title>
</c:forEach>

</head>


<body>



	<jsp:include page="header.jsp"></jsp:include>

	<div class="blog-area section-padding-0-80">
		<div class="container">
			<div class="row">
				<div class="col-12 col-lg-8">
					<div class="hero-area">
						<div class="row align-items-center">
							<div class="col-12 col-lg-11">
								<div class="breaking-news-area d-flex align-items-center">
									<div class="news-title">
										<p>Tin trong nước</p>
									</div>
									<div id="breakingNewsTicker" class="ticker">
										<ul>
											<li><a href="#">Đà Nẵng: nhiều người dân nhập viện
													tâm thần vì...trời quá nóng !!</a></li>
											<li><a href="#">Chân dung Minh Văn - hacker Việt đầu
													tiên hack thành công NASA bằng HTML </a></li>
											<li><a href="#">Truy nã Đoàn Việt Cường - thanh niên
													cướp tiệm vàng bằng...súng phun nước</a></li>
										</ul>
									</div>
								</div>
								<div class="breaking-news-area d-flex align-items-center mt-15">
									<div class="news-title title2">
										<p>Tin quốc tế</p>
									</div>
									<div id="internationalTicker" class="ticker">
										<ul>
											<li><a href="#">Tờ báo lá cải: Lionel Messi sẽ
													chuyển sang khác áo ManCity từ hè 2021</a></li>
											<li><a href="#">Số ca nhiễm Covid-19 tiếp tục tăng
													mạnh </a></li>
											<li><a href="#">Phạm Minh Văn - người Việt Nam giàu
													thứ 5 thế giới là ai? </a></li>
											<li><a href="#">Tội phạm truy nã Đoàn Việt Cường bị
													bắt khi đang chơi game ở tiệm Net </a></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
						<!-- Breaking News Widget -->
					</div>
					<div class="row">
						<div class="col-md-12">
							
							<c:forEach items="${postsById}" var="post">
							
							
							<!-- Single Featured Post -->
							<div class="single-blog-post featured-post mb-30">
								<div class="post-thumb">
									<a href="<c:url value='/chitiet/${post.id}'/>">
									<img src="<c:url value="/files/${post.hinh_anh}"/>" alt="" style="width:92%;height:350px;object-fit:cover;">
									</a>
								</div>
								<div class="post-data">
									<a href="" class="post-catagory">${post.the_loai.ten_the_loai}</a> <a href="<c:url value='/chitiet/${post.id}'/>"
										class="post-title">
										<h6 class="pr-4" style="font-size:30px">${post.tieu_de}</h6>
									</a>
										<div class="post-meta">
										<p class="post-author">
											Đăng bởi  <a href="#"> ${post.tac_gia}</a>
										</p>
										<p class="post-excerp pr-4"><a href="#"> ${post.mo_ta}</a></p>
										<!-- Post Like & Post Comment -->
										<div class="d-flex align-items-center">
											<a href="#" class="post-like"> <img
												src="<c:url value = "/resources/layout/img/core-img/view.png"/>" width="17px"
												height="17px"> <span>${post.so_luot_xem}</span></a> <a
												href="#" class="post-comment"><img
												src="<c:url value = "/resources/layout/img/core-img/chat.png"/>" alt=""> <span>10</span></a>
										</div>
									</div>
								</div>
							</div>
							
							</c:forEach>
							
						
					
						<nav aria-label="Page navigation example">
						<ul class="pagination mt-50">
						
						<%
						
						double totalPage =(double) request.getAttribute("totalPage");
						for(int i = 0; i < totalPage; i+=1) { %>
			           		<li class="page-item"><a class="page-link" href="?page=<%=i+1%>"><%=i+1%></a></li>
			        	<%}%>
						</ul>
					</nav>
					
					<br>
					
					</div>
						
					</div>

					


				
			</div>
		<div class="col-12 col-lg-4 pt-3">
					<div class="blog-sidebar-area">
						<!-- Popular News Widget -->
						<div class="popular-news-widget mb-50 pt-4">
							<h3>Bài nhiều lượt xem</h3>
							<hr>
							<c:forEach items="${topview}" var="tt">
								<div class="single-popular-post">
									<a href="#">
										<h6>
											<span>*</span> ${tt.tieu_de}
										</h6>
									</a>
									<p>${tt.ngay_dang}</p>
								</div>
							</c:forEach>





						</div>


						<!-- Latest Posts Widget -->
						<div class="latest-posts-widget mb-50">
							<c:forEach items="${NewsTopRight}" var="tt">
								<!-- Single Featured Post -->
								<div class="single-blog-post small-featured-post d-flex">
									<div class="post-thumb 	">
										<a href="#"><img
											src="<c:url value="/files/${tt.hinh_anh}"/>" alt=""></a>
									</div>
									<div class="post-data">
										<a href="#" class="post-catagory">${tt.the_loai.ten_the_loai}</a>
										<div class="post-meta">
											<a href="#" class="post-title">
												<h6>${tt.tieu_de}</h6>
											</a>
											<p class="post-date">
												<span>7:00 AM</span> | <span>April 14</span>
											</p>
										</div>
									</div>
								</div>
							</c:forEach>
						</div>


						<!-- Newsletter Widget -->
						<div class="newsletter-widget mb-50">
							<h4>Đăng kí nhận tin</h4>
							<p>Để lại email và thông tin liên hệ để nhận cập nhật những
								tin mới nhất từ chúng tôi</p>
							<form action="#" method="post">
								<input type="text" name="text" placeholder="Họ và tên">
								<input type="email" name="email" placeholder="Email">
								<button type="submit" class="btn w-100">Đăng kí</button>
							</form>
						</div>

						<!-- Latest Comments Widget -->
						<div class="latest-comments-widget">
							<h3>Bình luận mới</h3>

							<!-- Single Comments -->
							<div class="single-comments d-flex">
								<div class="comments-thumbnail mr-15">
									<img src="img/bg-img/29.jpg" alt="">
								</div>
								<div class="comments-text">
									<a href="#">Jamie Smith <span>on</span> Facebook is
										offering facial recognition...
									</a>
									<p>06:34 am, April 14, 2018</p>
								</div>
							</div>

							<!-- Single Comments -->
							<div class="single-comments d-flex">
								<div class="comments-thumbnail mr-15">
									<img src="img/bg-img/30.jpg" alt="">
								</div>
								<div class="comments-text">
									<a href="#">Jamie Smith <span>on</span> Facebook is
										offering facial recognition...
									</a>
									<p>06:34 am, April 14, 2018</p>
								</div>
							</div>

							<!-- Single Comments -->
							<div class="single-comments d-flex">
								<div class="comments-thumbnail mr-15">
									<img src="img/bg-img/31.jpg" alt="">
								</div>
								<div class="comments-text">
									<a href="#">Jamie Smith <span>on</span> Facebook is
										offering facial recognition...
									</a>
									<p>06:34 am, April 14, 2018</p>
								</div>
							</div>

							<!-- Single Comments -->
							<div class="single-comments d-flex">
								<div class="comments-thumbnail mr-15">
									<img src="img/bg-img/32.jpg" alt="">
								</div>
								<div class="comments-text">
									<a href="#">Jamie Smith <span>on</span> Facebook is
										offering facial recognition...
									</a>
									<p>06:34 am, April 14, 2018</p>
								</div>
							</div>
						</div>
					</div>
				</div>

		</div>
	</div>
	</div>
	<!-- ##### Blog Area End ##### -->



	<jsp:include page="footer.jsp"></jsp:include>

</body>

</html>