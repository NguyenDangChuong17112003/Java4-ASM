<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${video.title}</title>
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

<body>
	<%@ include file="/common/header.jsp"%>

	<div class="container">
		<div class="row">
			<iframe width="100%" height="500"
				src="https://www.youtube.com/embed/${video.href}"
				title="YouTube video player" frameborder="0"
				allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
				allowfullscreen></iframe>
		</div>
		<h5 style="margin-bottom: 15px; margin-top: 15px; color: #ccc">${video.title}</h5>
		<c:if test="${not empty sessionScope.currentUser}">
			<div class="row">
				<div class="col-1">
					<button class="btn btn-primary" id="LikeOrUnlikeBtn"
						><i
						class="bi bi-hand-thumbs-up"></i> <c:choose>
							<c:when test="${flagLikeBtn == true}">Unlike</c:when>
							<c:otherwise>Like</c:otherwise>
						</c:choose> </button>
				</div>
				<div class="col-1">
					<a class="btn btn-primary"><i class="bi bi-hand-thumbs-down"></i>Chia
						sẻ</a>
				</div>
			</div>
		</c:if>
		<div class="row" style="margin-top: 5px !important;">
			<div class="col-3">
				<label for="" style="color: #ccc; font-weight: 600;">TÌM TẬP
					NHANH</label> <input type="text" class="form-control"
					style="background-color: rgb(23, 36, 46); color: white; border: 1px solid #273e52">
			</div>
		</div>
		<div class="row"
			style="background-color: #151d25; padding-top: 8px !important; padding-bottom: 8px; margin-top: 10px !important;">
			<button class="btn chap">1</button>
		</div>
		<div class="row"
			style="background-color: #22466b; padding-top: 8px !important; padding-bottom: 8px; margin-top: 10px !important;">
			<b style="color: #ccc; padding-left: 10px;">Phim Chiếu 1 Tập Vào
				Trưa Thứ 7</b>
		</div>
		<div class="row"
			style="background-color: #151d25; padding-top: 8px !important; padding-bottom: 8px;">
			<div class="row"></div>
		</div>
		<input type="hidden" id="videoIdHdn" value="${video.href}">
	</div>

	<%@ include file="/common/footer.jsp"%>
	<script>
		$('#LikeOrUnlikeBtn').click(function() {
			var videoId = $('#videoIdHdn').val();
			$.ajax({
				url: 'video?action=like&id='+ videoId
			}).then(function(data) {
				var text = $('#LikeOrUnlikeBtn').text();
				if(text.indexOf('Like') != 1){
					$('#LikeOrUnlikeBtn').text('Unlike');
				}else{
					$('#LikeOrUnlikeBtn').text('Like');
				}
			}).fail(function(error) {
				alert('Fail!')
			});
		});
	</script>
</body>
</html>