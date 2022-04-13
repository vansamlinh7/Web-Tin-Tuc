<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Chi tiết</title>

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
					<div class="blog-posts-area">

						<!-- Single Featured Post -->
						<div class="single-blog-post featured-post single-post">
							<div class="post-thumb"></div>
							<div class="post-data">
								<a href="#" class="post-catagory">${tintucchitiet.the_loai.ten_the_loai}</a>
								<a href="#" class="post-title">
									<h6>${tintucchitiet.tieu_de }</h6>
								</a>
								<div class="post-meta">
									<p class="post-author">
										Đăng bởi <a href="#">${tintucchitiet.tac_gia }</a>
									</p>
									<p>${tintucchitiet.mo_ta }</p>
									<p>${tintucchitiet.noi_dung }</p>

									<div
										class="newspaper-post-like d-flex align-items-center justify-content-between">
										<!-- Tags -->
										<div class="newspaper-tags d-flex">
											<span>Tags:</span>
											<ul class="d-flex">
												<%-- <li><a href="#">${tintucchitiet.tag}</a></li> --%>
											</ul>
										</div>
										<div class="d-flex align-items-center post-like--comments">
											<a href="#" class="post-like"> <img
												src="<c:url value = "/resources/layout/img/core-img/view.png"/>" width="17px"
												height="17px"> <span>${tintucchitiet.so_luot_xem}</span></a> <a
												href="#" class="post-comment"><img
												src="<c:url value = "/resources/layout/img/core-img/chat.png"/>" alt=""> <span>10</span></a>
										</div>
									</div>
								</div>
							</div>
						</div>


<div
						class="pager d-flex align-items-center justify-content-between">
						<div class="prev">
							<a href="#" class="active"><i class="fa fa-angle-left"></i>
								Bài trước</a>
						</div>
						<div class="next">
							<a href="#">Bài kế <i class="fa fa-angle-right"></i></a>
						</div>
					</div>

					<div class="section-heading">
						<h6>Bình luận</h6>
					</div>

					<!-- Comment Area Start -->
					<div class="comment_area clearfix">
						<h5 class="title">3 Comments</h5>

						<ol>
							<!-- Single Comment Area -->
							<li class="single_comment_area">
								<!-- Comment Content -->
								<div class="comment-content d-flex">
									<!-- Comment Author -->
									<div class="comment-author">
										<img src="img/bg-img/30.jpg" alt="author">
									</div>
									<!-- Comment Meta -->
									<div class="comment-meta">
										<a href="#" class="post-author">Christian Williams</a> <a
											href="#" class="post-date">April 15, 2018</a>
										<p>Donec turpis erat, scelerisque id euismod sit amet,
											fermentum vel dolor. Nulla facilisi. Sed pellen tesque lectus
											et accu msan aliquam. Fusce lobortis cursus quam, id mattis
											sapien.</p>
									</div>
								</div>
								<ol class="children">
									<li class="single_comment_area">
										<!-- Comment Content -->
										<div class="comment-content d-flex">
											<!-- Comment Author -->
											<div class="comment-author">
												<img src="img/bg-img/31.jpg" alt="author">
											</div>
											<!-- Comment Meta -->
											<div class="comment-meta">
												<a href="#" class="post-author">Sandy Doe</a> <a href="#"
													class="post-date">April 15, 2018</a>
												<p>Donec turpis erat, scelerisque id euismod sit amet,
													fermentum vel dolor. Nulla facilisi. Sed pellen tesque
													lectus et accu msan aliquam. Fusce lobortis cursus quam, id
													mattis sapien.</p>
											</div>
										</div>
									</li>
								</ol>
							</li>

							<!-- Single Comment Area -->
							<li class="single_comment_area">
								<!-- Comment Content -->
								<div class="comment-content d-flex">
									<!-- Comment Author -->
									<div class="comment-author">
										<img src="img/bg-img/32.jpg" alt="author">
									</div>
									<!-- Comment Meta -->
									<div class="comment-meta">
										<a href="#" class="post-author">Christian Williams</a> <a
											href="#" class="post-date">April 15, 2018</a>
										<p>Donec turpis erat, scelerisque id euismod sit amet,
											fermentum vel dolor. Nulla facilisi. Sed pellen tesque lectus
											et accu msan aliquam. Fusce lobortis cursus quam, id mattis
											sapien.</p>
									</div>
								</div>
							</li>
						</ol>
					</div>

					<div class="post-a-comment-area section-padding-80-0">
						<h4>Để lại bình luận</h4>

						<!-- Reply Form -->
						<div class="contact-form-area">
							<form action="#" method="post">
								<div class="row">
									<div class="col-12 col-lg-6">
										<input type="text" class="form-control" id="name"
											placeholder="Tên*">
									</div>
									<div class="col-12 col-lg-6">
										<input type="email" class="form-control" id="email"
											placeholder="Email*">
									</div>
									<div class="col-12">
										<input type="text" class="form-control" id="subject"
											placeholder="Tiêu đề">
									</div>
									<div class="col-12">
										<textarea name="message" class="form-control" id="message"
											cols="30" rows="10" placeholder="Nội dung"></textarea>
									</div>
									<div class="col-12 text-center">
										<button class="btn newspaper-btn mt-30 w-100" type="submit">Gửi bình luận</button>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
					</div>
					
					
									<div class="col-12 col-lg-4 pt-3">
					<div class="blog-sidebar-area">

						<!-- Latest Posts Widget -->
						<div class="latest-posts-widget mb-50">
							<c:forEach items="${NewsTopRight}" var="tt">
								<!-- Single Featured Post -->
								<div class="single-blog-post small-featured-post d-flex">
									<div class="post-thumb 	">
										<a href="<c:url value='/chitiet/${tt.id}'/>"><img
											src="<c:url value="/files/${tt.hinh_anh}"/>" alt=""></a>
									</div>
									<div class="post-data">
										<a href="#" class="post-catagory">${tt.the_loai.ten_the_loai}</a>
										<div class="post-meta">
											<a href="<c:url value='/chitiet/${tt.id}'/>" class="post-title">
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

						<!-- Popular News Widget -->
						<div class="popular-news-widget mb-50 pt-4">
							<h3>Bài nhiều lượt xem</h3>
							<hr>
							<c:forEach items="${topview}" var="tt">
								<div class="single-popular-post">
									<a href="<c:url value='/chitiet/${tt.id}'/>">
										<h6>
											<span>*</span> ${tt.tieu_de}
										</h6>
									</a>
									<p>${tt.ngay_dang}</p>
								</div>
							</c:forEach>





						</div>

						<!-- Newsletter Widget -->
						<div class="newsletter-widget">
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
							<h3>Latest Comments</h3>

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
	</div>
	<!-- ##### Blog Area End ##### -->



	<jsp:include page="footer.jsp"></jsp:include>

</body>

</html>