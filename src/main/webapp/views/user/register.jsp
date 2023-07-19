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
            <h4 style="margin-left: 40px;">ĐĂNG KÝ TÀI KHOẢN</h4>
        </div>
        <hr>
        <form action="register" method="post">
            <b style="color: white">Tên đăng nhập</b>
            <input type="text" class="form-control" placeholder="Nhập tên tài khoản của bạn"
                style="background-color:#040607 ; color: white; border: 0;margin-top: 10px; margin-bottom: 10px;"name="username">
            <b style="color: white">Mật khẩu</b>
            <input type="password" class="form-control" placeholder="Nhập mật khẩu của bạn"
                style="background-color:#040607 ; color: white; border: 0;margin-top: 10px; margin-bottom: 10px;"name="password">
            <b style="color: white">Xác nhận mật khẩu</b>
            <input type="password" class="form-control" placeholder="Nhập mật khẩu của bạn"
                style="background-color:#040607 ; color: white; border: 0;margin-top: 10px; margin-bottom: 10px;"name="confirm">
            <b style="color: white">Mail</b>
            <input type="text" class="form-control" placeholder="Nhập mail của bạn"
                style="background-color:#040607 ; color: white; border: 0;margin-top: 10px; margin-bottom: 10px;"name="email">
            <div style="color: white;">
                <input type="checkbox" value="remeber">Ghi nhớ đăng nhập <br>
            </div>
            <button class="btn btn-danger" style="margin-bottom: 15px;margin-top: 15px;">Đăng ký</button>
        </form>
        <div class="row" style="">
            <label for="" style="color: #ccc;">Đã có tài khoản? <a href="#!login">Đăng nhập ngay</a></label>
        </div>
	<%@ include file="/common/footer.jsp"%>
</body>
</html>