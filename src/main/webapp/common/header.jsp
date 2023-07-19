<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="taglib.jsp"%>
<header style="background-color: #1b2d3c; padding: 8px 0 8px 0;">
	<div class="container">
		<div class="row">
			<div class="col-3">
				<a href='<c:url value='/index'/>'> <img
					src="https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/1c3633f2-dc35-496c-8bc9-90bda8542d76/df42c9j-fcd3686a-32ee-4f71-b3f0-90b6c710e1a5.png/v1/fill/w_1192,h_670/i_made_a_doraemon_logo_remake_by_neptunenickani47_df42c9j-pre.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MTA4MCIsInBhdGgiOiJcL2ZcLzFjMzYzM2YyLWRjMzUtNDk2Yy04YmM5LTkwYmRhODU0MmQ3NlwvZGY0MmM5ai1mY2QzNjg2YS0zMmVlLTRmNzEtYjNmMC05MGI2YzcxMGUxYTUucG5nIiwid2lkdGgiOiI8PTE5MjAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.uBJoZRLnm-hGECWIMAciZFVyRfJ89drQ2C4wIJeqsHc" alt=""
					width="200px" height="100px">
				</a>
			</div>
			<div class="col-4">
				<div class="input-group mb-3" style="margin-top: 15px;">
					<div class="input-group-prepend">
						<span class="input-group-text"
							style="border-radius: 50px 0px 0px 50px; background-color: rgb(23, 36, 46); color: white; border: 1px solid #273e52">
							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
								fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
                                    <path
									d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z" />
                                </svg>
						</span>
					</div>

					<input type="text" class="form-control" placeholder="Username"
						aria-label="Username" aria-describedby="basic-addon1"
						style="border-radius: 0px 50px 50px 0px; background-color: rgb(23, 36, 46); color: white; border: 1px solid #273e52">
				</div>
			</div>
			<div class="col-5" style="margin-top: 15px;">
				<div class="row">
					<c:choose>
						<c:when test="${not empty sessionScope.currentUser}">
							<a href="favorites" class="btn"
								style="background-color: #12171b; color: white; font-size: .7rem; font-weight: 650; border: 1px solid #ccc;"><i
								class="bi bi-arrow-clockwise"
								style="font-size: 1.2rem; font-weight: 650"></i>
								<hr style="color: #ccc; background-color: #ccc"> Yêu thích</a>
							<a href="history" class="btn"
								style="background-color: #12171b; color: white; font-size: .7rem; font-weight: 650; border: 1px solid #ccc;"><i
								class="bi bi-bookmarks"
								style="font-size: 1.2rem; font-weight: 650"></i>
								<hr style="color: #ccc; background-color: #ccc">Lịch sử</a>
										<%-- <c:if test="${sessionScope.currentUser.getIsAdmin}">
								<a href="history" class="btn"
								style="background-color: #12171b; color: white; font-size: .7rem; font-weight: 650; border: 1px solid #ccc;"><i
								class="bi bi-bookmarks"
								style="font-size: 1.2rem; font-weight: 650"></i>
								<hr style="color: #ccc; background-color: #ccc">Quản lý</a>
							</c:if> --%>
							<a href="logout" class="btn"
								style="background-color: #12171b; color: white; font-size: .7rem; font-weight: 650; border: 1px solid #ccc;"><i
								class="bi bi-box-arrow-left"
								style="font-size: 1.2rem; font-weight: 650"></i>
								<hr style="color: #ccc; background-color: #ccc">Đăng xuất</a>
						</c:when>
						<c:otherwise>
							<a href="login" class="btn"
								style="background-color: #12171b; color: white; font-size: .7rem; font-weight: 650; border: 1px solid #ccc;"><i
								class="bi bi-arrow-clockwise"
								style="font-size: 1.2rem; font-weight: 650"></i>
								<hr style="color: #ccc; background-color: #ccc"> Đăng nhâp</a>
							<a href="register" class="btn"
								style="background-color: #12171b; color: white; font-size: .7rem; font-weight: 650; border: 1px solid #ccc;"><i
								class="bi bi-bookmarks"
								style="font-size: 1.2rem; font-weight: 650"></i>
								<hr style="color: #ccc; background-color: #ccc">Đăng ký</a>

							<a href="forgot" class="btn"
								style="background-color: #12171b; color: white; font-size: .7rem; font-weight: 650; border: 1px solid #ccc;"><i
								class="bi bi-box-arrow-left"
								style="font-size: 1.2rem; font-weight: 650"></i>
								<hr style="color: #ccc; background-color: #ccc">Quên mật
								khẩu</a>
						</c:otherwise>
					</c:choose>
				</div>
			</div>
		</div>
	</div>

</header>
<nav class="navbar navbar-expand-lg bg-dark"
	style="background: #12171b !important;">
	<div class="container">
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarNav" aria-controls="navbarNav"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNav">
			<ul class="navbar-nav">
				<li class="nav-item active"><a class="nav-link" href="#"
					data-toggle="modal" data-target="#changePassModal"
					style="color: #cccccc" data-toggle="modal"
					data-target="#changePassModal">Welcome,
						${sessionScope.currentUser.username} <span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item dropdown show"><a
					class="nav-link  dropdown-toggle" href="#" role="button"
					id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false" href="#" style="color: #cccccc"> Thể loại
				</a>
					<div class="dropdown-menu" aria-labelledby="dropdownMenuLink"
						style="background-color: #1f3d58;">
						<a class="dropdown-item" href="#" style="color: #ccc;">Huyền
							Huyễn</a> <a class="dropdown-item" href="#" style="color: #ccc;">Xuyên
							Không</a> <a class="dropdown-item" href="#" style="color: #ccc;">Trùng
							Sinh</a> <a class="dropdown-item" href="#" style="color: #ccc;">Tiên
							Hiệp</a> <a class="dropdown-item" href="#" style="color: #ccc;">Cổ
							Trang</a> <a class="dropdown-item" href="#" style="color: #ccc;">Hài
							Hước</a>

					</div></li>
				<li class="nav-item"><a class="nav-link" href="#"
					style="color: #cccccc">Phim lẻ</a></li>
				<li class="nav-item"><a class="nav-link" href="#"
					style="color: #cccccc"><i class="bi bi-repeat-1"
						style="padding-right: 5px"></i> Phim đang chiếu</a></li>
				<li class="nav-item"><a class="nav-link" href="#"
					style="color: #cccccc"><i class="bi bi-calendar2-x"
						style="padding-right: 5px"></i> Lịch chiếu</a></li>
				<li class="nav-item"><a class="nav-link" href="#"
					style="color: #cccccc"><i class="bi bi-check-circle"
						style="padding-right: 5px"></i> Phim hoàn thành</a></li>
				<li class="nav-item"><a class="nav-link" href="#"
					style="color: #cccccc"><i class="bi bi-clock"
						style="padding-right: 5px"></i> Phim sắp chiếu</a></li>

			</ul>
		</div>
	</div>
</nav>
<div class="modal fade" id="changePassModal" tabindex="-1" role="dialog"
	aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLongTitle">ĐỔI MẬT KHẨU</h5>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<input type="password" class="form-control"
					placeholder="Nhập mật khẩu của bạn"
					style="background-color: #040607; color: white; border: 0; margin-top: 10px; margin-bottom: 10px;"
					name="currentPass" id="currentPass"> <b
					style="color: white">Xác nhận mật khẩu</b> <input type="password"
					class="form-control" placeholder="Nhập mật khẩu của bạn"
					style="background-color: #040607; color: white; border: 0; margin-top: 10px; margin-bottom: 10px;"
					name="newPass" id="newPass">
				<h5 style="color: red" id="messageChangePass"></h5>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
				<button type="button" class="btn btn-primary" id="changePassBtn">Đổi</button>
			</div>

		</div>
	</div>
</div>
