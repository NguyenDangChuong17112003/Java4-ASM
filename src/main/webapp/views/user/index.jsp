<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hoạt Hình Trung Quốc - Xem Hoạt Hình 3D Hay | HH3D</title>
<%@include file="/common/head.jsp"%>
<style>
.aside h6 {
	background: -webkit-gradient(linear, left top, right top, from(#ff8a00),
		to(#da1b60));
	-webkit-background-clip: text;
	-webkit-text-fill-color: transparent;
}

h5 {
	background: -webkit-gradient(linear, left top, right top, from(#ff8a00),
		to(#da1b60));
	-webkit-background-clip: text;
	-webkit-text-fill-color: transparent;
}

a hr {
	margin-top: 2px !important;
	margin-bottom: 2px !important;
}

body {
	background-color: #222d38 !important;
}

footer {
	margin-top: 20px;
	background-color: #101720;
}

a {
	text-decoration: none;
	color: #ccc;
}

a:hover {
	color: #c8952c;
	text-decoration: none;
}

.card {
	overflow: hidden;
}

a:hover label {
	color: "#c8952c";
}

.card .card-body {
	transition: transform .5s ease;
}

.card .card-body:hover {
	transform: scale(1.5);
	opacity: .5;
}
</style>
</head>

<body ng-app="myApp" ng-controller="myCtrl">
	<%@ include file="/common/header.jsp"%>

	<div class="content">
		<div class="container">
			<div class="row">
				<div class="article col-8"
					style="margin-top: 15px; margin-bottom: 15px;">
					<div class="row slider">
						<div id="carouselExampleIndicators" class="carousel slide"
							data-ride="carousel">
							<ol class="carousel-indicators">
								<li data-target="#carouselExampleIndicators" data-slide-to="0"
									class="active"></li>
								<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
								<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
								<li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
								<li data-target="#carouselExampleIndicators" data-slide-to="4"></li>
								<li data-target="#carouselExampleIndicators" data-slide-to="5"></li>
								<li data-target="#carouselExampleIndicators" data-slide-to="6"></li>
								<li data-target="#carouselExampleIndicators" data-slide-to="7"></li>
							</ol>
							<div class="carousel-inner">
								<div class="carousel-item active">
									<img class="d-block w-100"
										src="https://img.youtube.com/vi/ol2GRZnZKXM/maxresdefault.jpg"
										alt="First slide">
								</div>
								<div class="carousel-item">
									<img class="d-block w-100"
										src="https://img.youtube.com/vi/iBAO2cfZebk/maxresdefault.jpg"
										alt="Second slide">
								</div>
								<div class="carousel-item">
									<img class="d-block w-100"
										src="https://img.youtube.com/vi/i_bsMOp9C84/maxresdefault.jpg"
										alt="Third slide">
								</div>
								<div class="carousel-item">
									<img class="d-block w-100"
										src="https://img.youtube.com/vi/LgQDShV49Eo/maxresdefault.jpg"
										alt="Third slide">
								</div>
								<div class="carousel-item">
									<img class="d-block w-100"
										src="https://img.youtube.com/vi/Yzzsf3hdMHA/maxresdefault.jpg"
										alt="Third slide">
								</div>
								<div class="carousel-item">
									<img class="d-block w-100"
										src="https://img.youtube.com/vi/_miwQbH98ko/maxresdefault.jpg"
										alt="Third slide">
								</div>
								<div class="carousel-item">
									<img class="d-block w-100"
										src="https://img.youtube.com/vi/nqHHAacbUDY/maxresdefault.jpg"
										alt="Third slide">
								</div>
								<div class="carousel-item">
									<img class="d-block w-100"
										src="https://img.youtube.com/vi/IzdMuNI-zRA/maxresdefault.jpg"
										alt="Third slide">
								</div>
							</div>
							<a class="carousel-control-prev"
								href="#carouselExampleIndicators" role="button"
								data-slide="prev"> <span class="carousel-control-prev-icon"
								aria-hidden="true"></span> <span class="sr-only">Previous</span>
							</a> <a class="carousel-control-next"
								href="#carouselExampleIndicators" role="button"
								data-slide="next"> <span class="carousel-control-next-icon"
								aria-hidden="true"></span> <span class="sr-only">Next</span>
							</a>
						</div>
					</div>
					<div class="row content">
						<c:forEach items="${videos}" var="video">
							<div class="col-lg-3 col-sm-6" style="padding: 5px !important;">

								<a href="<c:url value='/video?action=watch&id=${video.href}'/>">
									<div class="card" style="border: 0; position: relative;">
										<div class="card-body"
											style="background: url('<c:url value='${video.poster}'/>') no-repeat; height: 260px; width: 100%; background-size: cover;">
											
											<p>${video.title}</p>
										</div>
									</div>
								</a>
								<div class="d-flex justify-content-between tm-test-gray">
									<span class="text-white">${video.shares} share</span> <span
										class="text-white">${video.views} like</span>
										
								</div>
							</div>

						</c:forEach>
					</div>
					<div class="row">
						<div
							class="col-12 d-flex justify-content-between align-items-center tm-paging-col">
							<c:if test="${currentPage == 1}">
								<a class="btn btn-primary tm-btn-prev mb-2 disabled">Previous</a>
							</c:if>
							<c:if test="${currentPage > 1}">
								<a href="index?page=${currentPage - 1}"
									class="btn btn-primary tm-btn-prev mb-2">Previous</a>
							</c:if>
							<div class="tm-paging d-flex">
								<c:forEach varStatus="i" begin="1" end="${maxPage}">
									<a href="index?page=${i.index}"
										class="btn btn-primary ${currentPage == i.index ? 'active' : ''}">${i.index}</a>
								</c:forEach>
							</div>
							<c:if test="${currentPage == maxPage}">
								<a class="btn btn-primary tm-btn-prev mb-2 disabled">Next</a>
							</c:if>
							<c:if test="${currentPage < maxPage}">
								<a href="index?page=${currentPage + 1}"
									class="btn btn-primary tm-btn-prev mb-2">Next</a>
							</c:if>


						</div>
					</div>
				</div>
				<div class="aside col-4"
					style="margin-top: 15px; background: #0b0f15; background-size: 200% 100%; background-image: linear-gradient(to right, #151d25 0%, #11151500 51%, #060808 50%);">
					<%@ include file="/common/sidebar.jsp" %>

				</div>
			</div>
		</div>
	</div>
	<%@ include file="/common/footer.jsp"%>
</body>
</html>