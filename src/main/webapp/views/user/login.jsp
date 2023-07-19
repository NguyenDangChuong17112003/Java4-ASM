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

	 
        <div class="container" style="background-color:#151d25 ;">
            <div class="row" style="margin-top:20px">
                <h4 style="margin-left: 40px;">ĐĂNG NHẬP TÀI KHOẢN</h4>
            </div>
            <hr>
            <div class="row" style="margin-bottom:20px ;">
                <a href="">
                    <img src="<c:url value='/templates/user/login/google.jpg'/>" alt="">
                </a>
            </div>
            <div class="row" style="margin-bottom:20px ;">
                <a href="">
                    <img src="<c:url value='/templates/user/login/facebook.jpg'/>" alt="">
                </a>
            </div>
            <form action="login" method="post">
                <b style="color: white">Tên tài khoản</b>
                <input type="text" class="form-control" placeholder="Nhập tên tài khoản của bạn"
                    style="background-color:#040607 ; color: white; border: 0;margin-top: 10px; margin-bottom: 10px;" name="username" required>
                <b style="color: white">Mật khẩu</b>
                <input type="s" class="form-control" placeholder="Nhập mật khẩu của bạn"
                    style="background-color:#040607 ; color: white; border: 0;margin-top: 10px; margin-bottom: 10px;" name="password" required>
                <div style="color: white;">
                    <input type="checkbox" value="remeber">Ghi nhớ đăng nhập <br>
                </div>
                <button class="btn btn-success" style="margin-bottom: 15px;margin-top: 15px;">Đăng nhập</button>
            </form>
            <div class="row">
                <label for="" style="color: #ccc;">Chưa có tài khoản? <a href="#!register">Đăng ký ngay</a></label>
            </div>
        </div>
	<%@ include file="/common/footer.jsp"%>
</body>
</html>