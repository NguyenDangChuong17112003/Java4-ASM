<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="row aside-heading">
						<h6 style="margin-left: 40px;">XẾP HẠNG</h6>
					</div>
					<div class="row">
						<c:forEach items="${videos}" var="video">
							<div class="col-12"
								style="border: 1px solid; padding-top: 3px; padding-bottom: 3px;">
								<a href="<c:url value='/video?action=watch&id=${video.href}'/>">
									<div class="row items" style="border: 1 solid #ccc;">
										<img
											src="${video.poster}"
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
</body>
</html>