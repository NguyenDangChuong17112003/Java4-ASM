<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<footer>
		<div class="container">
			<img src="./image/logos/footer.png" alt=""
				style="margin-bottom: 20px">
			<div class="row">
				<a href="" style="float: left">Copyright ® 2022 HOATHINH3D.COM.</a>
				<a href="" class="ml-auto">Site map</a>
			</div>
		</div>
	</footer>
	
	<script>
		$('#changePassBtn').click(function() {
			$('#messageChangePass').text('');
			var currentPass = $('#currentPass').val();
			var newPass = $('#newPass').val();
			var formData = {
					'currentPass': currentPass,
					'newPass' : newPass
			};
			$.ajax({
				url: 'changePass',
				type: 'POST',
				data: formData
			}).then(function(data) {
				$('#messageChangePass').text('Đổi mật khẩu thành công');
			}).fail(function(error) {
				$('#messageChangePass').text('Mật khẩu không đúng');
			});
		});
	</script>
	<script language="JavaScript" type="text/javascript" src="/js/jquery-1.2.6.min.js"></script>
<script language="JavaScript" type="text/javascript" src="/js/jquery-ui-personalized-1.5.2.packed.js"></script>
<script language="JavaScript" type="text/javascript" src="/js/sprinkle.js"></script>
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
	<script src="<c:url value='/templates/user/js/javascript.js'/>"></script>
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>