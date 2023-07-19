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


	<div class="container" style="background-color: #151d25;">
		<div class="row" style="margin-top: 20px">
			<h4 style="margin-left: 40px;">QUÊN MẬT KHẨU</h4>
		</div>
		<hr>
		<b style="color: white">Email</b> <input type="text"
			class="form-control" placeholder="Nhập tên tài khoản của bạn"
			style="background-color: #040607; color: white; border: 0; margin-top: 10px; margin-bottom: 10px;"
			name="email" id="email" required>
		<button class="btn btn-success"
			style="margin-bottom: 15px; margin-top: 15px;" id="sendBtn">Gửi
			đến mail</button>
		<h5 style="color: red" id="message"></h5>
		<div class="row">
			<label for="" style="color: #ccc;">Chưa có tài khoản? <a
				href="register">Đăng ký ngay</a></label>
		</div>
	</div>
	<%@ include file="/common/footer.jsp"%>
	<script>
		$('#sendBtn').click(function() {
			$('#messageReturn').text();
			var email = $('#email').val();
			var formData = {'email': email};
			$.ajax({
				url: 'forgot',
				type: 'POST',
				data: formData
			}).then(function(data) {
				$('#messageReturn').text('Đã gửi mật khẩu mới qua email!');
				setTimeout(function() {
					window.location.href = 'http://localhost:8080/SOF3011_ASM2/index'
				}, 5*1000);
			}).fail(function(error) {
				$('#messageReturn').text('Mail không chính xác, vui lòng nhập lại');
			});
		});
	</script>
</body>
</html>