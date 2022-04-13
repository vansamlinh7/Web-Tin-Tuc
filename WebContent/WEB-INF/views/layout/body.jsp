<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%-- imports function tags from JSTL, prefix "fn"--%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href='<c:url value="/resources/layout/css/style.css"/>'>
</head>
<body>


	<!-- ##### Featured Post Area Start ##### -->
	<div class="featured-post-area">
		<div class="container">
			<div class="row py-3">
				<div class="col-12 col-md-6 col-lg-8">
					<div class="row">

						<!-- Single Featured Post -->
						<div class="col-12 col-lg-7">
							<c:forEach items="${tintucs}" var="tt">
								<div class="single-blog-post featured-post">
									<div class="post-thumb">
										<a href="<c:url value='/chitiet/${tt.id}'/>"><img
											width="413px" height="208px"
											src='<c:url value="/files/${tt.hinh_anh}"/>' alt=""></a>
									</div>
									<div class="post-data">
										<a href="#" class="post-catagory">Tin nóng</a> <a
											href="<c:url value='/chitiet/${tt.id}'/>" class="post-title">
											<h6>${tt.tieu_de}</h6>
										</a>
										<div class="post-meta">
											<p class="post-author">
												Đăng bởi <a href="#" color="red">${tt.tac_gia }</a>
											</p>
											<div class="post-meta">
												<p class="post-excerp">${tt.mo_ta}</p>
												<!-- Post Like & Post Comment -->
												<div class="d-flex align-items-center">
													<a href="#" class="post-like"> <img
														src="resources/layout/img/core-img/view.png" width="17px"
														height="17px"> <span>${tt.so_luot_xem}</span></a> <a
														href="#" class="post-comment"><img
														src="resources/layout/img/core-img/chat.png" alt="">
														<span>10</span></a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</c:forEach>
						</div>

						<div class="col-12 col-lg-5">
							<c:forEach items="${tintuc}" var="tt">
								<!-- Single Featured Post -->
								<div class="single-blog-post featured-post-2">
									<div class="post-thumb">
										<a href="<c:url value='/chitiet/${tt.id}'/>"> <img
											src="<c:url value="/files/${tt.hinh_anh}"/>" alt=""></a>
									</div>
									<div class="post-data">
										<a href="#" class="post-catagory">Tin nóng</a>
										<div class="post-meta">
											<a href="<c:url value='/chitiet/${tt.id}'/>"
												class="post-title">
												<h6>${tt.tieu_de}</h6>
											</a>
											<!-- Post Like & Post Comment -->
											<div class="d-flex align-items-center">
												<a href="#" class="post-like"> <img
													src="resources/layout/img/core-img/view.png" width="17px"
													height="17px"> <span>${tt.so_luot_xem}</span></a> <a
													href="#" class="post-comment"><img
													src="resources/layout/img/core-img/chat.png" alt="">
													<span>10</span></a>
											</div>
										</div>
									</div>
								</div>
							</c:forEach>
						</div>
					</div>
				</div>

				<div class="col-12 col-md-6 col-lg-4">
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
			</div>
		</div>
	</div>
	<!-- ##### Featured Post Area End ##### -->

	<!-- ##### Popular News Area Start ##### -->
	<div class="popular-news-area section-padding-80-50">
		<div class="container">
			<div class="row">
				<div class="col-12 col-lg-8">
					<div class="section-heading">
						<h6>Tin trong nước</h6>
					</div>

					<div class="row">
						<c:forEach items="${trongnuocindex}" var="tt">
							<!-- Single Post -->
							<div class="col-12 col-md-6">
								<div class="single-blog-post small-featured-post d-flex mb-5">
									<div class="post-thumb 	">
										<a href="<c:url value='/chitiet/${tt.id}'/>"><img
											src="<c:url value="/files/${tt.hinh_anh}"/>" alt=""></a>
									</div>
									<div class="post-data">
										<div class="post-meta">
											<a href="<c:url value='/chitiet/${tt.id}'/>"
												class="post-title">
												<h6>${tt.tieu_de}</h6>
											</a>
											<div class="post-date"
												style="max-height: 53px; overflow: hidden; line-height: 1.8">
												${tt.mo_ta}</div>
										</div>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
				</div>
				<div class="col-12 col-lg-4">
					<div class="section-heading">
						<h6>Chứng khoán</h6>
						<img class="pt-5" src="resources/layout/img/core-img/ck.jpg">
					</div>



				</div>

				<div class="row">
					<div class="col-12 col-lg-8">
						<div class="section-heading">
							<h6>Thế Giới</h6>
						</div>

						<div class="row">
							<c:forEach items="${thegioiindex}" var="tt">
								<!-- Single Post -->
								<div class="col-12 col-md-6">
									<div class="single-blog-post small-featured-post d-flex mb-5">
										<div class="post-thumb 	">
											<a href="<c:url value='/chitiet/${tt.id}'/>"><img
												src="<c:url value="/files/${tt.hinh_anh}"/>" alt=""></a>
										</div>
										<div class="post-data">
											<div class="post-meta">
												<a href="<c:url value='/chitiet/${tt.id}'/>"
													class="post-title">
													<h6>${tt.tieu_de}</h6>
												</a>
												<div class="post-date"
													style="max-height: 53px; overflow: hidden; line-height: 1.8">
													${tt.mo_ta}</div>
											</div>
										</div>
									</div>
								</div>
							</c:forEach>
						</div>
					</div>


					<div class="col-12 col-lg-4">
						<!-- Popular News Widget -->
						<div class="popular-news-widget mb-30">
							<h3>Đọc nhiều nhất</h3>
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
					</div>
				</div>



				<div class="row">
					<div class="col-12 col-lg-8">
						<div class="section-heading">
							<h6>Thể thao</h6>
						</div>

						<div class="row">
							<c:forEach items="${thethaoindex}" var="tt">
								<!-- Single Post -->
								<div class="col-12 col-md-6">
									<div class="single-blog-post small-featured-post d-flex mb-5">
										<div class="post-thumb 	">
											<a href="<c:url value='/chitiet/${tt.id}'/>"><img
												src="<c:url value="/files/${tt.hinh_anh}"/>" alt=""></a>
										</div>
										<div class="post-data">
											<div class="post-meta">
												<a href="<c:url value='/chitiet/${tt.id}'/>"
													class="post-title">
													<h6>${tt.tieu_de}</h6>
												</a>
												<div class="post-date"
													style="max-height: 53px; overflow: hidden; line-height: 1.8">
													${tt.mo_ta}</div>
											</div>
										</div>
									</div>
								</div>
							</c:forEach>
						</div>
					</div>


					<div class="col-12 col-lg-4">
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
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- ##### Popular News Area End ##### -->

	<!-- ##### Video Post Area Start ##### -->
	<div class="video-post-area bg-img bg-overlay"
		style="background-image: url(img/bg-img/bg1.jpg);">
		<div class="container">
			<div class="row justify-content-center">
				<!-- Single Video Post -->
				<div class="col-12 col-sm-6 col-md-4">
					<div class="single-video-post">
						<iframe width="100%" height="300"
							src="https://www.youtube.com/embed/IYX8r0zle50" frameborder="0"
							allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
							allowfullscreen></iframe>

						<!-- Video Button -->
						<div class="videobtn"></div>

					</div>
				</div>

				<!-- Single Video Post -->
				<div class="col-12 col-sm-6 col-md-4">
					<div class="single-video-post">
						<iframe width="100%" height="300"
							src="https://www.youtube.com/embed/AGw0tXg8hoc" frameborder="0"
							allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
							allowfullscreen></iframe>
						<!-- Video Button -->
						<div class="videobtn"></div>
					</div>
				</div>

				<!-- Single Video Post -->
				<div class="col-12 col-sm-6 col-md-4">
					<div class="single-video-post">
						<iframe width="100%" height="300"
							src="https://www.youtube.com/embed/otxzZ2jWGfo" frameborder="0"
							allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
							allowfullscreen></iframe>
						<!-- Video Button -->
						<div class="videobtn"></div>
					</div>
				</div>
			</div>
		</div>
		<!-- ##### Video Post Area End ##### -->

		<!-- ##### Editorial Post Area Start ##### -->
		<div class="editors-pick-post-area section-padding-80-50">
			<div class="container">
				<div class="row">
					<div class="col-12 col-md-5 col-lg-3">
						<div class="section-heading">
							<h6>Số hóa</h6>
						</div>

						<c:forEach items="${sohoaindex}" var="tt">
							<div style="height: 230px ;">
								<div class="post-thumb pb-2">
									<a href="<c:url value='/chitiet/${tt.id}'/>"> <img
										src="<c:url value="/files/${tt.hinh_anh}"/>" alt=""
										style="width: 100%; height: 160px; object-fit: cover;"></a>
								</div>
								<div class="post-data">
									<div class="post-meta">
										<a href="<c:url value='/chitiet/${tt.id}'/>"
											class="post-title">
											<h6>${tt.tieu_de}</h6>
										</a>
									</div>

								</div>
							</div>
							<hr>
						</c:forEach>

					</div>
					<div class="col-12 col-md-5 col-lg-3">
						<div class="section-heading">
							<h6>Giải trí</h6>
						</div>

						<c:forEach items="${giaitriindex}" var="tt">
							<div style="height: 230px">
								<div class="post-thumb pb-2">
									<a href="<c:url value='/chitiet/${tt.id}'/>"> <img
										src="<c:url value="/files/${tt.hinh_anh}"/>" alt=""
										style="width: 100%; height: 160px; object-fit: cover;"></a>
								</div>
								<div class="post-data">
									<div class="post-meta">
										<a href="<c:url value='/chitiet/${tt.id}'/>"
											class="post-title">
											<h6>${tt.tieu_de}</h6>
										</a>
									</div>

								</div>
							</div>
							<hr>
						</c:forEach>

					</div>
					<div class="col-12 col-md-5 col-lg-3">
						<div class="section-heading">
							<h6>Du lịch</h6>
						</div>

						<c:forEach items="${dulichindex}" var="tt">
							<div style="height: 230px">
								<div class="post-thumb pb-2">
									<a href="<c:url value='/chitiet/${tt.id}'/>"> <img
										src="<c:url value="/files/${tt.hinh_anh}"/>" alt=""
										style="width: 100%; height: 160px; object-fit: cover;"></a>
								</div>
								<div class="post-data">
									<div class="post-meta">
										<a href="<c:url value='/chitiet/${tt.id}'/>"
											class="post-title">
											<h6>${tt.tieu_de}</h6>
										</a>
									</div>

								</div>
							</div>
							<hr>
						</c:forEach>

					</div>
					<div class="col-12 col-md-5 col-lg-3">
						<div class="section-heading">
							<h6>Pháp luật</h6>
						</div>

						<c:forEach items="${phapluatindex}" var="tt">
							<div style="height: 230px">
								<div class="post-thumb pb-2">
									<a href="<c:url value='/chitiet/${tt.id}'/>"> <img
										src="<c:url value="/files/${tt.hinh_anh}"/>" alt=""
										style="width: 100%; height: 160px; object-fit: cover;"></a>
								</div>
								<div class="post-data">
									<div class="post-meta">
										<a href="<c:url value='/chitiet/${tt.id}'/>"
											class="post-title">
											<h6>${tt.tieu_de}</h6>
										</a>
									</div>

								</div>
								</div>
								<hr>
						</c:forEach>

					</div>
				</div>
				
				
				<!-- ---------------------------------------------------------------------------------------- -->
				
				
					<div class="row pt-5">
					<div class="col-12 col-md-5 col-lg-3">
						<div class="section-heading">
							<h6>Văn hóa</h6>
						</div>

						<c:forEach items="${vanhoaindex}" var="tt">
							<div style="height: 230px ;">
								<div class="post-thumb pb-2">
									<a href="<c:url value='/chitiet/${tt.id}'/>"> <img
										src="<c:url value="/files/${tt.hinh_anh}"/>" alt=""
										style="width: 100%; height: 160px; object-fit: cover;"></a>
								</div>
								<div class="post-data">
									<div class="post-meta">
										<a href="<c:url value='/chitiet/${tt.id}'/>"
											class="post-title">
											<h6>${tt.tieu_de}</h6>
										</a>
									</div>

								</div>
							</div>
							<hr>
						</c:forEach>

					</div>
					<div class="col-12 col-md-5 col-lg-3">
						<div class="section-heading">
							<h6>Khoa học</h6>
						</div>

						<c:forEach items="${khoahocindex}" var="tt">
							<div style="height: 230px">
								<div class="post-thumb pb-2">
									<a href="<c:url value='/chitiet/${tt.id}'/>"> <img
										src="<c:url value="/files/${tt.hinh_anh}"/>" alt=""
										style="width: 100%; height: 160px; object-fit: cover;"></a>
								</div>
								<div class="post-data">
									<div class="post-meta">
										<a href="<c:url value='/chitiet/${tt.id}'/>"
											class="post-title">
											<h6>${tt.tieu_de}</h6>
										</a>
									</div>

								</div>
							</div>
							<hr>
						</c:forEach>

					</div>
					<div class="col-12 col-md-5 col-lg-3">
						<div class="section-heading">
							<h6>Du lịch</h6>
						</div>

						<c:forEach items="${dulichindex}" var="tt">
							<div style="height: 230px">
								<div class="post-thumb pb-2">
									<a href="<c:url value='/chitiet/${tt.id}'/>"> <img
										src="<c:url value="/files/${tt.hinh_anh}"/>" alt=""
										style="width: 100%; height: 160px; object-fit: cover;"></a>
								</div>
								<div class="post-data">
									<div class="post-meta">
										<a href="<c:url value='/chitiet/${tt.id}'/>"
											class="post-title">
											<h6>${tt.tieu_de}</h6>
										</a>
									</div>

								</div>
							</div>
							<hr>
						</c:forEach>

					</div>
					<div class="col-12 col-md-5 col-lg-3">
						<div class="section-heading">
							<h6>Giáo dục</h6>
						</div>

						<c:forEach items="${sohoaindex}" var="tt">
							<div style="height: 230px">
								<div class="post-thumb pb-2">
									<a href="<c:url value='/chitiet/${tt.id}'/>"> <img
										src="<c:url value="/files/${tt.hinh_anh}"/>" alt=""
										style="width: 100%; height: 160px; object-fit: cover;"></a>
								</div>
								<div class="post-data">
									<div class="post-meta">
										<a href="<c:url value='/chitiet/${tt.id}'/>"
											class="post-title">
											<h6>${tt.tieu_de}</h6>
										</a>
									</div>

								</div>
								</div>
								<hr>
						</c:forEach>

					</div>
				</div>
			</div>
		</div>
</body>
</html>