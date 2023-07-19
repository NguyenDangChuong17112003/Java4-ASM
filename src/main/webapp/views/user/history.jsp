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
			<div class="row" style="background-color: #151d25;">
				<div class="article col-8"
					style="margin-top: 15px; margin-bottom: 15px;">
					<h5 style="margin-left: 30px; font-weight: 700;">LỊCH SỬ</h5>
					<div class="row row-cols-lg-4">
						<c:forEach items="${videos}" var="video">
							<div class="col-12"
								style="border: 1px solid; padding-top: 3px; padding-bottom: 3px;">
								<a href="<c:url value='/video?action=watch&id=${video.href}'/>">
									<div class="row items" style="border: 1 solid #ccc;">
										<img
											src="<c:url value='/templates/user/image/item/dan-dao-tong-su-300x450.jpeg'/>"
											alt="" class="col-3">
										<div class="title">
											<label
												style="color: white; font-size: .9rem; width: 250px; text-overflow: ellipsis; overflow: hidden; white-space: nowrap;">${video.title}</label>
											<p style="font-size: .8rem">${video.shares}share</p>
											<p style="font-size: .8rem; color: #c8952c">${video.views}
												lượt xem</p>
										</div>
									</div>
								</a>
							</div>
						</c:forEach>
					</div>

				</div>
				<div class="aside col-4"
					style="margin-top: 15px; background-color: #060808;">
					<div class="row aside-heading">
						<h6 style="margin-left: 40px;">XẾP HẠNG</h6>
					</div>
					<div class="row">
						<div class="col-12" ng-repeat="mv in movies">
							<a href="#!detail/{{mv.id}}">
								<div class="row">
									<img src="./image/item/{{mv.img}}" alt="" class="col-4">
									<div class="title">
										<label style="color: white">{{mv.nameMv}}</label>
										<p>{{mv.transMv}}</p>
									</div>
								</div>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="/common/footer.jsp"%>
</body>
</html>