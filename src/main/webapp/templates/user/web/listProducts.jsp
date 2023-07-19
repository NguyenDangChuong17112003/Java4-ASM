<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="./assets/angular-1.8.2/angular.js"></script>
<script src="./assets/angular-1.8.2/angular-route.js"></script>
<script src="./assets/angular-1.8.2/angular.min.js"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<style>
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

a:hover label{
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
										src="./image/slider/dau-la-dai-luc-poster.jpg"
										alt="First slide">
								</div>
								<div class="carousel-item">
									<img class="d-block w-100"
										src="./image/slider/dau-pha-thuong-khung-phan-5-gia-nam-hoc-vien-poster.jpg"
										alt="Second slide">
								</div>
								<div class="carousel-item">
									<img class="d-block w-100"
										src="./image/slider/nhat-niem-vinh-hang-phan-2.jpg"
										alt="Third slide">
								</div>
								<div class="carousel-item">
									<img class="d-block w-100" src="./image/slider/poster.jpg"
										alt="Third slide">
								</div>
								<div class="carousel-item">
									<img class="d-block w-100"
										src="./image/slider/than-an-vuong-toa-poster.jpg"
										alt="Third slide">
								</div>
								<div class="carousel-item">
									<img class="d-block w-100"
										src="./image/slider/thon-phe-tinh-khong-2.jpg"
										alt="Third slide">
								</div>
								<div class="carousel-item">
									<img class="d-block w-100"
										src="./image/slider/tinh-than-bien-phan-5-poster.jpeg"
										alt="Third slide">
								</div>
								<div class="carousel-item">
									<img class="d-block w-100"
										src="./image/slider/tru-tien-poster.jpg" alt="Third slide">
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
						<div class="row row-cols-lg-4">
							<div class="col-3 " ng-repeat="mv in movies"
								style="padding: 5px !important;">
								<a href="#!detail/{{mv.id}}">
									<div class="card" style="border: 0; position: relative;">
										<div class="card-body"
											style="background: url(./image/item/{{mv.img}}) no-repeat; height: 260px; width: 100%; background-size: cover;">
											<div class="title-card">
												<p style="position: absolute; bottom: 25%;">{{mv.nameMv}}</p>
												<p>{{mv.transMv}}</p>
											</div>
										</div>
									</div>
								</a>
							</div>
						</div>
					</div>
				</div>
				<div class="aside col-4"
					style="margin-top: 15px; background: #0b0f15; background-size: 200% 100%; background-image: linear-gradient(to right, #151d25 0%, #11151500 51%, #060808 50%);">
					<div class="row aside-heading">
						<h6 style="margin-left: 40px;">XẾP HẠNG</h6>
					</div>
					<div class="row">
						<div class="col-12" ng-repeat="mv in movies"
							style="border: 1px solid; padding-top: 3px; padding-bottom: 3px;">
							<a href="#!detail/{{mv.id}}">
								<div class="row items" style="border: 1 solid #ccc;">
									<img src="./image/item/{{mv.img}}" alt="" class="col-3">
									<div class="title">
										<label style="color: white; font-size: .9rem">{{mv.nameMv}}</label>
										<p style="font-size: .8rem">{{mv.transMv}}</p>
										<p style="font-size: .8rem;color: #c8952c">{{mv.views}} lượt xem</p>
									</div>
								</div>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="./assets/js/javascript.js"></script>
</body>

</html>