<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>The News Paper - News &amp; Lifestyle Magazine Template</title>

<!-- Favicon -->
<link rel="icon" href="img/core-img/favicon.ico">

<!-- Core Stylesheet -->
<link rel="stylesheet" href='<c:url value="/resources/layout/css/style.css"/>'>

</head>
<body>

	<jsp:include page="header.jsp"></jsp:include>



	    <!-- ##### Contact Form Area Start ##### -->
    <div class="contact-area section-padding-0-80 pt-5">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="contact-title">
                        <h2>Liên hệ</h2>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-12 col-lg-8">
                    <div class="contact-form-area">
                        <form action="#" method="post">
                            <div class="row">
                                <div class="col-12 col-lg-6">
                                    <input type="text" class="form-control" id="name" placeholder="Tên">
                                </div>
                                <div class="col-12 col-lg-6">
                                    <input type="email" class="form-control" id="email" placeholder="Địa chỉ">
                                </div>
                                  <div class="col-12 col-lg-6">
                                    <input type="text" class="form-control" id="name" placeholder="Số điện thoại">
                                </div>
                                
                                <div class="col-12 col-lg-6">
                                    <input type="email" class="form-control" id="email" placeholder="E-mail">
                                </div>
                                <div class="col-12">
                                    <input type="text" class="form-control" id="subject" placeholder="Tiêu đề">
                                </div>
                                <div class="col-12">
                                    <textarea name="message" class="form-control" id="message" cols="30" rows="10"
                                        placeholder="Nội dung"></textarea>
                                </div>
                                <div class="col-12 text-center">
                                    <button class="btn newspaper-btn mt-30 w-100" type="submit">Gửi tin nhắn</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>

                <div class="col-12 col-lg-4">
                    <!-- Single Contact Information -->
                    <div class="single-contact-information mb-30">
                        <h6>Địa chỉ:</h6>
                        <p>65 Chu Mạnh Trinh <br>Cẩm Lệ, TP Đà Nẵng</p>
                    </div>
                    <!-- Single Contact Information -->
                    <div class="single-contact-information mb-30">
                        <h6>Số điện thoại:</h6>
                        <p>+840869133410 (Văn) <br>+84999999999 (Cường Đô La)</p>
                    </div>
                    <!-- Single Contact Information -->
                    <div class="single-contact-information mb-30">
                        <h6>Email:</h6>
                        <p>vansamlinh7@gmail.com</p>
                    </div>
                </div>
            </div>

            <!-- Google Maps -->
            <div class="map-area">
                <iframe
                    src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3834.6182376984025!2d108.211068614858!3d16.033376688903036!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31421992da6069c9%3A0x6717a73ef4575455!2zNjUgQ2h1IE3huqFuaCBUcmluaCwgS2h1w6rDtSBUcnVuZywgQ-G6qW0gTOG7hywgxJDDoCBO4bq1bmcgNTUwMDAw!5e0!3m2!1svi!2s!4v1592925367789!5m2!1svi!2s"
                    width="100%" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false"
                    tabindex="0"></iframe>
            </div>
        </div>

    </div>
    </div>
    <!-- ##### Contact Form Area End ##### -->




	<jsp:include page="footer.jsp"></jsp:include>
	
	
	
	 <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAwuyLRa1uKNtbgx6xAJVmWy-zADgegA2s"></script>
    <script src='<c:url value="js/google-map/map-active.js" />'></script>
	
	
</body>
</html>